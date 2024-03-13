<?php
    $n1 = $_POST["nota1"];
    $n2 = $_POST["nota2"];

    if((trim($n1) != "" && trim($n2) != "")) {
        $media = ($n1 + $n2) / 2;
        echo "Média = " . $media;


    } else {
        echo "Informe as duas notas!";
    }
?>