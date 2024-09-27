<?php
include ("conexaoBD.php");

if(!isset($_GET["raAluno"])){
    echo("Selecione o aluno a ser excluído!");
}else{
    $ra = $_GET["raAluno"];

    try{
        $stmt = $pdo->prepare("DELETE FROM alunos WHERE ra = :ra");
        $stmt->bindParam(":ra", $ra);
        $stmt->execute();

        echo($stmt->rowCount() . " aluno de RA $ra removido!");
    }catch(PDOException $ex){
        echo("Error " . $ex->getMessage());
    }

    $pdo = null;
}
?>