<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastra</title>
</head>
<body>
    <a href="index.php">home</a>
    <hr>
    <h2>Cadastra Aluno</h2>
    <form method="POST">
        RA: <br>
        <input type="text" name="ra" size="10"> <br><br>

        Nome: <br>
        <input type="text" name="nome" size="10"> <br><br>

        Curso: <br>
        <select name="curso">
            <option value="ccd">Edificações</option>
            <option value="enf">Enfermagem</option>
            <option value="pd">Desenvolvimento de Sistemas</option>
            <option value="geo">Agrimensura</option>
            <option value="med">Mecânica</option>
            <option value="qpd">Qualidade</option>
        </select>
        <br> <br>

        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>

<?php
    if($_SERVER["REQUEST_METHOD"] == 'POST'){
        try{
            $ra = $_POST['ra'];
            $nome = $_POST['nome'];
            $curso = $_POST['curso'];

            if((trim($ra) == "") || (trim($nome) == "")){
                echo "<span id='warning'> RA e nome são obrigatórios!</span>";
            }else{
                include "conexaoBD.php";

                $stmt = $pdo->prepare("SELECT * FROM alunos WHERE ra = :ra");
                $stmt->bindParam(":ra", $ra);
                $stmt->execute();

                if($stmt->rowCount() <= 0){
                    $stmt = $pdo->prepare("INSERT INTO alunos(ra, nome, curso) VALUES (:ra, :nome, :curso)");
                    $stmt->bindParam(":ra", $ra);
                    $stmt->bindParam(":nome", $nome);
                    $stmt->bindParam(":curso", $curso);
                    $stmt->execute();

                    echo "<span id='sucess'>Aluno Cadastrado!</span>'";
                }else{
                    echo "<span id='error'>RA já existente!</span>'";
                }   
            }
        }catch(PDOException $e){
            echo "Erro: " . $e->getMessage();
        }
    }
?>