<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta de produtos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form method="post">
        Informe o nome do produto:
        <input type="text" name="nome" id="nome"><br>
        <input type="submit" value="Consultar">
        
    </form>
    <button onclick="window.open('index.php', '_top');">Home</button>
</body>
</html>

<?php
    include("conexaoBanco.php");
    if($_SERVER["REQUEST_METHOD"] === "POST"){
        if((isset($_POST["nome"]) && ($_POST["nome"] != ""))){
            $nome = $_POST["nome"];
            $stmt = $pdo->prepare("select * from produto where nome = :nome");
            $stmt->bindParam(':nome', $nome);
        }else{
            $stmt = $pdo->prepare("select * from produto");
        }

        try{
            $stmt->execute();

            echo("<form method='post'>");
            echo "<table border='1px' cellspacing='0'>";
             echo "<tr>";
             echo("<th></th>");
             echo "<th>ID</th>";
             echo "<th>Nome</th>";
             echo "<th>Valor</th>";
             echo "<th>Fornecedor</th>";
             echo "</tr>";

             while ($row = $stmt->fetch()) {
                 echo "<tr>";
                 echo "<td><input type='radio' name='idproduto' 
                 value='" . $row['idproduto'] . "'></td>";
                 echo "<td>" . $row['idproduto'] . "</td>";
                 echo "<td>" . $row['nome'] . "</td>";
                 echo "<td>" . $row['valor'] . "</td>";
                 echo "<td>" . $row['fornecedor'] . "</td>";
                 echo "</tr>";
             }

             echo "</table><br>
                       
             <button type='submit' formaction='excluir.php'>Excluir Produto</button>
             </form>";

             

        }catch(PDOException $ex){
            echo("Erro: " . $ex->getMessage);
        }
    }
?>