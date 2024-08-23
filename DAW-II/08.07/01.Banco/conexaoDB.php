<?php

try{
    $db = "mysql:host=143.106.241.3;dbname=cl202232;charset=utf8";
    $user= "cl202232";
    $password = "Th30n3Wh0Kn0ck$";

    $pdo = new PDO($db, $user, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $ex){
    $output = "Impossível conectar ao bando de dados. Erro: " . $ex . "<br>";
    echo($output);
}

?>