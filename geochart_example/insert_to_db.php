<?php


	$username_db = "root";
	$password_db = "";
	$database = "geochart_db";

	$con = mysql_connect('localhost', $username_db, $password_db);

	if(!$con){
		die('Could not connect to database');
	}
	mysql_select_db($database,$con);

	$id="";
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$phone=$_POST['phone'];
	$mobile=$_POST['mobile'];
	$email=$_POST['email'];
	$web=$_POST['web'];
	$city=$_POST['city'];
	mysql_query("INSERT INTO users(fname,lname,phone,mobile,email,web,city) VALUES('$fname','$lname','$phone','$mobile','$email','$web','$city')") or die (mysql_error());
	mysql_query("UPDATE cities SET num_of_users=num_of_users+1 WHERE name = '$city'");
	
	
	header('Location: index.php');

?>
