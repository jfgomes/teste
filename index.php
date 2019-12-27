
<?php
$servername = "165.22.115.109";
$username = "test";
$password = "";
try{
$conn = new mysqli($servername, $username, $password, null, 2306);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
}catch(\Exception $e){
var_dump($e->getMessage());
}
?>

