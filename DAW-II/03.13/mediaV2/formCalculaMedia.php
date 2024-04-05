<?php
    if($_SERVER["REQUEST_METHOD"] === 'GET') {
        $situacao = ""; 
        $media = "";
      
    } else if($_SERVER["REQUEST_METHOD"] === 'POST') {

        $n1 = $_POST["nota1"];
        $n2 = $_POST["nota2"];

        if((trim($n1) != "" && trim($n2) != "")) {

            $media = ($n1 + $n2) / 2;

            if($media >= 6.0) {
                $situacao = "<span class='ap'>I SERVE THE SOVIET UNION!</span>";
            } else if(($media > 3.0) && ($media < 6.0)) {
                $situacao = "<span class='dp'>I SERVE THE SOVIET UNION!</span>";
            } else {
                $situacao = "<span class='rep'>I SERVE THE SOVIET UNION!</span>";
            }
        } else {
            echo "Informe as duas notas!";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        body {
            background-color: red;
            color: yellow;
        }

        .ap {
            background-color: green;
        }
        .dp {
            background-color: yellow;
            color: red;
        }
    </style>
</head>
<body>
    <h1>Cadastro de Alunos</h1>

    <form method="post">
        <!-- <input type="hidden" name="op" id="op" value="save"> -->

        Nota 1: <br>
        <input type="text" name="nota1" id="n1" required>

        <br><br>

        Nota 2: <br>
        <input type="text" name="nota2" id="n2" required>

        <br><br>

        <input type="submit" value="Cadastrar">
    </form>

    <hr>
    Média: <?= $media; ?>
    <br><br>
    <?= $situacao; ?>
</body>
</html>