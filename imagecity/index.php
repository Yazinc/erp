<?php
echo "Welcome to my ERP ";

?>

<h1>experiments, sending all data to a veriable </h1>

<?php

function tab(){
$cars = array("Volvo", "BMW", "Toyota");
$arrlength = count($cars);

$data = "";
for($x = 0; $x < $arrlength; $x++) {
     $data .= $cars[$x]."<br>";
    //$data .=$data.$br;  
    
}
return $data;

}

echo tab();

?> 