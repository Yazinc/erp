<?php  include("../../classes/class_db.php"); ?>
<html>
  <head>
    <meta content="text/html; charset=windows-1252" http-equiv="content-type">
  </head>
  <body>
    <div class="container-fluid">
      <form class="form-horizontal" action="<?php echo $_SERVER['PHP_SELF'];?>"

        method="post" id="add_new_vendor" title="Add New Vendor">
        <p> <label for="Vendor Name">Vendor Name:</label> <input name="vendor_name"

            class="form-control" id="vendor_name" type="text"> </p>
        <p> <label for="emailAddress">Email Address:</label> <input name="email"

            class="form-control" id="emailAddress" type="text"> <input name="vendor_check"

            id="vendor_check" value="1" type="hidden"> </p>
        <p> <label for="active">Select:</label>
          <select name="active" size="1" id="active" title="Vendor Active ">
            <option value="1">Yes</option>
            <option value="0">No</option>
          </select>
        </p>
        <p> <input name="Submit" class="btn btn-default" id="submit" value="Submit"

type="submit">
      
    </p>
  </form>
  </div>
  
<?php 
	
	$add_= new dbs();
	$add_->db_connect();
	
	$sql = 
	"INSERT INTO vendor_info 
	(vendor_nam, ctc, email,account_type_id, active) 
	VALUES 
	('$_POST[vendor_name]', '$_POST[email]', 'peterparker@mail.com',1,1)";
		
	echo "<b>.$sql.</b>";

if($add_->mysqli->query($sql) === true){
		echo "Good Job. Records inserted successfully.";
		} else{
		echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
		
}
// Close connection
		
		$add_->mysqli->close();
		
?>
