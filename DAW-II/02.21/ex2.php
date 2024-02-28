<!DOCTYPE                                                                                                                                                                                                                                                                                                                                                                                          html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .ap {
            color: white;
            background-color: green;
        }

        .dp {
            color: black;
            background-color: yellow;
        }

        .rep {
            color: white;
            background-color: red;
        }
    </style>
</head>
<body>
    
</body>

<?php
    $n1 = 8.0;
    $n2 = 5.0;
    $media = ($n1 + $n2)/2;

    echo "<span class='grade'>Nota 1: " . $n1 . "</span>";
    echo "<br>";
    echo "<span class='grade'>Nota 2: " . $n2 . "</span>";
    echo "<br>";
    echo "<span class='grade'>Nota 1: " . $n1 . "</span>";
    echo "<br><br>";

    if($media >= 6.0) {
        echo "<span class='ap'>Aprovado!</span>";
    } else if( ($media > 3.0) && ($media < 6.0) ) {
        echo "<span class='dp'>Dependencia!</span>";
    } else {
        echo "<span class='rep'>Reprovado!</span>";
    }
?>
</html>