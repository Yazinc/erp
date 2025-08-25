 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 


<?php
class dbs {
	public $mysqli = "";
	function db_connect(){
	$this->mysqli = new mysqli("localhost", "root", "mysql", "imagecity");
	if($this->mysqli === false){
	die("ERROR: Could not connect. " . $mysqli->connect_error);
	}
	//echo "Connect Successfully. Host info: " . $mysqli->host_info;
	}}

?>


 

