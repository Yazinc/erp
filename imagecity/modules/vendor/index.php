<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<h1>Add New Vendors</h1>

<?php include("../../classes/class_db.php"); ?>

<div class="form-group"></div>
<?php		

/*
echo $_POST['vendor_name'];
echo $_POST['email'];
if ($_SERVER["REQUEST_METHOD"] == "POST"){
echo "<b>Vendor is Entered</b>";
*/




//Deletting Started//
$del_ = new dbs();
if ($_GET['vendor_id']!= NULL) {
		$del_->db_connect();
		//catch the record id to delete/update
		$delete_= $_GET['vendor_id'];
		$sql = "DELETE FROM vendor_info WHERE vendor_id = '$delete_'";
		if($del_->mysqli->query($sql) === true){
		echo "Records were deleted successfully.</br>";
		} else{
		echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
}
// Close connection delete action completed
		$del_->mysqli->close();	
}

?>
<div class="row">
<?php
//Get list and ID for vendor recordds//
	if ($_POST['action_']== "find"){
$list_ =new dbs();
$list_->db_connect();
$sql = "SELECT * FROM vendor_info
WHERE
vendor_nam like '%$_POST[find]%'
";
if($result = $list_->mysqli->query($sql)){
    if($result->num_rows > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>Vendor ID</th>";
                echo "<th>Vendor Name</th>";
                echo "<th>CTC</th>";
                echo "<th>email</th>";
            echo "</tr>";
        while($row = $result->fetch_array()){
            echo "<tr>";
                echo "<td>" . $row['vendor_id'] . "</td>";
                echo "<td>" . $row['vendor_nam'] . "</td>";
                echo "<td>" . $row['ctc'] . "</td>";
                echo "<td>" . $row['email'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
}


// Close connection
$list_->mysqli->close();
}
?>


  
</div>
</div>







</body>
</html>