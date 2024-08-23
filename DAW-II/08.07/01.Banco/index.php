
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form  method="post">
        <input type="text" name="user" id="user" placeholder="Usuario"> <br>

        <input type="text" name="password" id="password" placeholder="Senha"> <br>

        <input type="submit" value="Entrar"> <br>

        <hr>
    </form>
</body>
</html>

<?php
    if($_SERVER["REQUEST_METHOD"]  === "POST") {

        $user = $_POST["user"];        
        $password = $_POST["password"];

        if((trim($user) != "") && (trim($password) != "")){
            try{
                include("conexaoDB.php");

                $stmt = $pdo->prepare("select * from usuario where login = :user and password = :password");
                $stmt->bindParam(":user", $user);
                $stmt->bindParam(":password", $password);

                $stmt->execute();
                $rows = $stmt->rowCount();

                if($rows > 0){

                    session_start();
                    $_SESSION["logado"] = true;

                    $dadosUsuarios = $stmt->fetch();
                    $tipo = $dadosUsuarios["tipo"];

                    if($tipo == "PROFESSOR") {
                        header("location: professor.php");
                    } else if($tipo == "ALUNO") {
                        header("location: aluno.php");
                    } else if($tipo == "DIRETOR") {
                        header("location: diretor.php");
                    }
                    
                }else{
                    echo("Usuário não encontrado");
                }

                $pdo = null;
            }catch(PDOException $ex){
                echo("Erro: " . $ex);
            }
        }else{
            echo("Insira user e senha");
        }

    }
?>