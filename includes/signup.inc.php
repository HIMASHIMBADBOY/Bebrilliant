<?php

if (isset($_POST['submit']))
{
//grabbing the data
$uid = $_POST['uid'];
$email = $_POST['email']; 
$pwd = $_POST['pwd'] ;
$rpwd = $_POST['rpwd'] ;
 
//instantiate signupcontr class
require '../classes/dbh.classes.php';
require '../classes/signup.classes.php';
require '../classes/signup-contr.classes.php';

$signup = new SignupContr($uid, $email, $pwd, $rpwd);

//error handling 
$signup->signupUser();

//sending back the user to the index page
header("location:../index.php?error=none");

}