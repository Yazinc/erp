<?php
if ($_POST['action_']== "find"){
$list_ =new dbs();
$list_->db_connect();
$sql = "SELECT * FROM vendor_info
WHERE
vendor_nam like '%$_POST[find]%'
";
if($result = $list_->mysqli->query($sql)){
    if($result->num_rows > 0){
        echo '<table class="table table-hover">';
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

  <form action="<?php $_SERVER['SELF_PHP']?>" method="post" name="form1" id="form1">
  Select Vendor:
    <input name="find" class="form-control" type="text" id="find">
    <input type="submit" name="submit2" id="submit2" value="Submit">
    <input name="action_" type="hidden" id="action_" value="find">
  </form>