<?php
//this file is for all database relates stuff 
//like running a query inside the database etx
class Signup extends Dbh{
    protected function setUser($uid, $email, $pwd){
    
        $stmt= $this->connection()->prepare('INSERT INTO  users (user_uid, user_email, user_pwd) VALUES (?, ?, ?);');

        $hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);

        if(!$stmt->execute(array($uid, $email, $hashedPwd))){
            $stmt= null;
            header("location:../index.php?error=stmtfailed");
            exit();
        
        }
        $stmt= null;
    }

 
protected function checkUser($uid, $email){
$stmt= $this->connection()->prepare('SELECT user_uid FROM users WHERE user_uid = ? OR user_email = ?;');
#we put in the uid and the email as an array because we have more than one piece of data
if(!$stmt->execute(array($uid, $email))){
    #deleting the statement entirely if it fails to execute
    $stmt= null;
    #creating a header function that is going to senf the user back to the frontindex page with an error message 
    header("location:../index.php");
    exit();

}

  $resultcheck;
if( $stmt->rowcount() > 0){
    $resultcheck = false;
}else{

    $resultcheck = true;
}
 return $resultcheck;
}









}