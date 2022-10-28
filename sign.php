<?php
include_once 'dbConnection.php';
ob_start();
$name = $_POST['name'];
$name = ucwords(strtolower($name));
// $gender = $_POST['gender'];
$email = $_POST['email'];
// $college = $_POST['college'];
$mobile_number = $_POST['mobile_number'];
$password = $_POST['password'];
$name = stripslashes($name);
$name = addslashes($name);
$name = ucwords(strtolower($name));
// $gender = stripslashes($gender);
// $gender = addslashes($gender);
$email = stripslashes($email);
$email = addslashes($email);
// $college = stripslashes($college);
// $college = addslashes($college);
$mobile_number = stripslashes($mobile_number);
$mobile_number = addslashes($mobile_number);

$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);

// Now we check if the data was submitted, isset() function will check if the data exists.
if (!isset($_POST['name'], $_POST['password'], $_POST['email'])) {
    // Could not get the data that should have been sent.
    exit('Please complete the registration form!');
}
// Make sure the submitted registration values are not empty.
if (empty($_POST['name']) || empty($_POST['password']) || empty($_POST['email'])) {
    // One or more values are empty.
    exit('Please complete the registration form');
}


//Email validation
if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    exit('Email is not valid!');
}

//Invalid character for username validation
// if (preg_match('/^[a-zA-Z0-9]+$/', $_POST['name']) == 0) {
//     exit('Username is not valid!');
// }

if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 8) {
	exit('Password must be between 8 and 20 characters long!');
}

// We need to check if the account with that username exists.
if ($stmt = $con->prepare('SELECT name, password , mobile_number FROM users WHERE email = ?')) {
    // Bind parameters (s = string, i = int, b = blob, etc), hash the password using the PHP password_hash function.
    $stmt->bind_param('s', $_POST['name']);
    $stmt->execute();
    $stmt->store_result();
    // Store the result so we can check if the account exists in the database.
    if ($stmt->num_rows > 0) {
        // Username already exists
        echo 'Username exists, please choose another!';
    } else {
        // Insert new account
        $q3 = mysqli_query($con, "INSERT INTO users VALUES ('$name' ,'$email' , '$mobile_number' , '$password')");
        if ($q3) {
            session_start();
            $_SESSION["email"] = $email;
            $_SESSION["name"] = $name;
            $_SESSION["mobile_number"] = $mobile_number;

            header("location:success.html?q=1");
        } else {
            header("location:index.php?q7=Email Already Registered!!!");
        }
        ob_end_flush();
    }
    $stmt->close();
} else {
    // Something is wrong with the sql statement, check to make sure accounts table exists with all 3 fields.
    echo 'Could not prepare statement!';
}
$con->close();
