<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Exclusão de produtos</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <button onclick="window.open('index.php', '_top');">Home</button>
<h2>Exclusão de Produtos</h2>

<?php

include("conexaoBanco.php");

if (!isset($_POST["idproduto"])) {
    echo "Selecione o produto a ser excluído!";
} else {
    $id = $_POST["idproduto"];

    try {
        $stmt = $pdo->prepare('delete from produto where idproduto = :id');
        $stmt->bindParam(':id', $id);
        $stmt->execute();

        echo "Produto de id $id excluído com sucesso!";

    } catch (PDOException $e) {
        echo 'Error: ' . $e->getMessage();
    }

    $pdo = null;
}

?>
</body>
</html>