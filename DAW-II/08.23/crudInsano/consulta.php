<?php
    if($_SERVER["REQUEST_METHOD"] === 'POST') {
        include("conexaoBD.php");

        if(isset($_POST["ra"]) && ($_POST["ra"] != "")) {

            $ra = $_POST["ra"];

            $stmt = $pdo->prepare("select * from alunos where ra= :ra");
            $stmt -> bindParam(':ra', $ra);
        } else {
            $stmt = $pdo -> prepare("select * from alunos order by curso, nome");
        }

        try {
            $stmt -> execute();

            echo "<table border='1px' cellspacing='0'>";
            echo"<tr>";
            echo"<th>RA</th>";
            echo"<th>NOME</th>";
            echo"<th>Curso</th>";
            echo"<th colspan=2></th>";
            echo"</tr>";

        } 
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD - Controle de Alunos</title>
</head>
<body>
    <a href="index.html">Home</a>

    <hr>

    <h2>Consulta de Alunos</h2>

    <form method="post">
        RA:<br>
        <input type="text" size="10" name="ra">
        <input type="submit" value="Consultar">
    </form>
</body>
</html>