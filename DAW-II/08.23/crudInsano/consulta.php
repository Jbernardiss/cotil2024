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
            echo("<form method='post'>");
            echo "<table border='1px' cellspacing='0'>";
            echo"<tr>";
            echo("<th><th>");
            echo"<th>RA</th>";
            echo"<th>NOME</th>";
            echo"<th>Curso</th>";
            echo"<th colspan=2></th>";
            echo"</tr>";
            
            $stmt->execute();

            while($row = $stmt->fetch()){
                echo("<tr>");
                echo("<td><input type='radio' name='raAluno'>" . $row["ra"] . "</td>");
                echo("<td>" . $row["nome"] . "</td>");
                echo("<td>" . $row["curso"] . "</td>");

                echo("</tr>");
            }

            echo("</table><br>
            
                <button> type='submit' formaction='remove.php'>Remover</button>
                <button> type='submit' formaction='edicao.php'>Editar Aluno</button>
            ");
        } catch(PDOException $ex){
            echo("Erroe " . $ex->getMessage());
        }

        $pdo = null;
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