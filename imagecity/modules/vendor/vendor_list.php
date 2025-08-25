<?php include("../../classes/class_db.php"); ?>


<form class="form-horizontal" action="<?php $_SERVER['SELF_PHP']?>" method="post" name="form1" id="form1">
  Select Vendor:
    <input name="find" class="form-control" type="text" id="find">
    <input type="submit" name="submit2" id="submit2" value="Submit">
    <input name="action_" type="hidden" id="action_" value="find">
  </form>
<?php

//Get list and ID for vendor recordds//

$list_ =new dbs();
$list_->db_connect();

$sql = "SELECT * FROM vendor_info
WHERE
vendor_nam like '%$_POST[find]%'
";
if($result = $list_->mysqli->query($sql)){
    if($result->num_rows > 0){
        //echo '<table class="table table-bordered">';
        echo '<table class="table table-hover">';
            echo "<tr>";
                echo "<th>Vendor ID</th>";
                echo "<th>Action</th>";
                echo "<th>Vendor Name</th>";
                echo "<th>CTC</th>";
                echo "<th>email</th>";
            echo "</tr>";
            
        while($row = $result->fetch_array()){
           		echo "<tr>";
           		echo "<td><a href=?ven=".$row['vendor_id'].">".$row["vendor_id"]."</a></td>";
           		echo "<td><select>
							 	<option>Edit</option>
							 	<option>Delete</option>
							 </select></td>";
                echo "<td>" . $row["vendor_nam"] . "</td>";
                echo "<td>" . $row["ctc"] . "</td>";
                echo "<td>" . $row["email"] . "</td>";
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
?>

<h1>New Formulated Bill Product Data</h1>

<?php 
$bill_ =new dbs();
$bill_->db_connect();

$sql = "SELECT * FROM bill_product";
if($result = $bill_->mysqli->query($sql)){
if($result->num_rows > 0){
echo '<table class="table table-hover"><tr>';
echo "<th>Bill No</th>";
echo "<th>Purcahse Ord</th>";
echo "<th>Bill No</th>";
echo "<th>Product_ID</th>";
echo "<th>Qty</th>";
echo "<th>Rate</th>";
echo "<th>Memo</th>";
echo "</tr>";
while($row = $result->fetch_array()){

echo "<tr>";
echo "<td>" . $row["bill_line_no"] . "</td>";
echo "<td>" . $row["po_no"] . "</td>";
echo "<td>" . $row["bill_no"] . "</td>";
echo "<td>" . $row["product_id"] . "</td>";
echo "<td>" . $row["qty"] . "</td>";
echo "<td>" . $row["rate"] . "</td>";
echo "<td>" . $row["purchase_description"] . "</td>";
echo "</tr>"; } echo "</table>"; $result->free();
}else{echo "No records matching your query were found.";}} else{echo "ERROR: Could not able to execute $sql. " . $mysqli->error;}
// Close connection
$bill_->mysqli->close();?>







