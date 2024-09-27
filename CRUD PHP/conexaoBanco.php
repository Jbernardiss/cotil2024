<?php
$servername = "143.106.241.3";
$username = "cl202201";
$password = "cl*01122006";
try {
  $pdo = new PDO("mysql:host=143.106.241.3;dbname=cl202201", $username, $password);
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  /*
    Por algum motido o PDO só funciona no windows. Pro Linux teria que ser o myscli.
  */
  //echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>