<?php
 
 try{
   $db = 'mysql:host=143.106.241.3;dbname=cl202156;charset=utf8'; 
   $user = 'cl202156'; 
   $password = 'MarcosJR_1307'; 
   $pdo = new PDO($db, $user, $password); 
   $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
 } 
 catch(PDOException $e){
   $output = "Impossível conectar banco de dados: ' . $e . '<br>'";
   echo $output;
 }
