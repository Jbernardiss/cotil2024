<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Produtos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Cadastro de Produtos</h1>
    <form method="post" class="formCadastro" enctype="multipart/form-data">
        Nome:
        <input type="text" name="nome" id="nome"> <br><br>

        Valor:
        <input type="text" name="valor" id="valor"><br><br>

        Fornecedor:
        <select name="fornecedor">
            <option value="Brastemp">Brastemp</option>
            <option value="Papelaria Brasil">Papelaria Brasil</option>
            <option value="MetalAços">MetalAços</option>
            <option value="Plasticos LTDA">Plasticos LTDA</option>
        </select><br><br>

        Foto: <br>
        <input type="image" src="" alt="asdfas">

        <input type="submit" value="Enviar">
    </form>

    <button onclick="window.open('index.php', '_top');">Home</button>
</body>
</html>

<?php
if($_SERVER["REQUEST_METHOD"] === "POST"){
    try{
        $nome = $_POST["nome"];
        $valor = $_POST["valor"];
        $fornecedor = $_POST["fornecedor"];
        $uploaddir = 'upload/fotos';

        $foto = $FILES["foto"];
        $nomeFoto = $foto["name"];
        $tipoFoto = $foto["type"];
        $tamanhoFoto = $foto["size"];

        $info = new SplFileInfo($nomeFoto);
        $extensaoArq = $info->getExtension();
        $novoNomeFoto = $nome."_".$fornecedor.".".$extensaoArq;
        if((trim($nome) == "") || (trim($valor) == "")){
            echo("<h2 class='aviso'>Favor, preencha todos os campos!<h2>");
        } else if(($nomeFoto != "") && (!preg_match('/^image\/(jpeg|png|gif)$/', $tipoFoto))) {
            echo "<span id='error'>Imagem inválida!</span>";
        } else if(($nomeFoto != "") && ($tamanhoFoto > TAMANHO_MAXIMO)) {
            echo "<span id='error'>A imagem deve possuir no máximo 2MB!</span>"; 
        } else { 
            include("conexaoBanco.php");
            define("TAMANHO_MAXIMO", (2 * 1024 * 1024));

            $query = "select * from produto where nome = :nome";

            $stmt = $pdo->prepare($query);
                $stmt->bindParam(':nome', $nome);
                $stmt->execute();

                $rows = $stmt->rowCount();

                if ($rows <= 0) {
                    if(($nomeFoto != "") && move_uploaded_file($_FILES['foto']['tmp_name'], $uploaddir . $novoNomeFoto)){
                        $uploadFile = $uploaddir . $novoNomeFoto;
                    }else{
                        $uploadFile = null;
                        echo("Sem upload de foto");
                    }
                    $stmt = $pdo->prepare("insert into produto (nome, valor, fornecedor, arquivoFoto) values(:nome, :valor, :fornecedor, :foto)");
                    $stmt->bindParam(':nome', $nome);
                    $stmt->bindParam(':valor', $valor);
                    $stmt->bindParam(':fornecedor', $fornecedor);
                    $stmt->bindParam(":foto", $uploadFile);
                    $stmt->execute();

                    echo "<h2 class='sucesso'>Produto Cadastrado!</h2>";
                } else {
                    echo "<h2 class='aviso'>O produto já existe!</h2>";
                }
        }
    }catch(PDOException $e){
        echo 'Error: ' . $e->getMessage();
    }
    $pdo = null;
}

?>