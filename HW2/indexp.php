<?php
$link = mysqli_connect("localhost", "root", "", "myDB");
if($link === false){
die("ERROR: Could not connect. " . mysqli_connect_error());
}

function EncryptPassword($passwd) {
    return password_hash($passwd, PASSWORD_DEFAULT);
}


function DecryptPassword($passwd, $username, $link){
    $pass = $link->query("SELECT `password` FROM `users` WHERE user_name = '$username'") -> fetch_object() ->passwd;
    
    if(password_verify($passwd, $pass)){
        echo $password;
        return true;
    }
    return false;
}

//check if user_name allredy exists
$usn_ = $_POST['usn'];
$noUser = "SELECT `password` FROM `users` WHERE user_name = '$usn_'";
$result = mysqli_query($link,$noUser);
$numRows = mysqli_num_rows($result);
if($numRows > 0){
    echo "user is allredy exists";
}
else{
    if(isset($_POST['submit'])){
        $f_name = $_POST['fsName'];
        $l_name = $_POST['lsName'];
        $dob_ = $_POST['dob'];
        $np_ = $_POST['np'];
        $usn_ = $_POST['usn'];
        $passwd = EncryptPassword($_POST['psw']);
        $sql = "INSERT INTO users (first_name, last_name, date_of_birth, number_phone, user_name, password) VALUES ('$f_name', '$l_name', '$dob_', '$np_', '$usn_', '$passwd')";
        }
        if(mysqli_query($link, $sql)){
        // echo "Records inserted successfully.";
        include 'index.html';
        } else {
        echo "ERROR: Could not execute $sql. " . mysqli_error($link);
        }
        // Close connection
        mysqli_close($link);
}

?>
