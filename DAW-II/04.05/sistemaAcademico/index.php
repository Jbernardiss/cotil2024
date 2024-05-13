<?php   
    if($_SERVER["REQUEST_METHOD"] === 'GET') {

        $pagina = "";
    } else if ($_SERVER["REQUEST_METHOD"] === 'POST') {

        $pagina = "";

        $login = $_POST["login"];
        $senha = $_POST["pass"];

        if ( (trim($login) != "") && (trim($senha) != "") ) {

            if ( ($login == "professor") && ($senha == "1234") ) {
                session_start();
                $_SESSION["login"] = $login;
                header('Location: professor.php');

            } else if ( ($login == "aluno") && ($senha == "5678") ) {
                session_start();
                $_SESSION["login"] = $login;
                header('Location: aluno.php');

            } else {
                //header('Location: erro.html');
                $msg = "Login e/ou senha inválido(s)!";
                header('Location: erro.php?msg='.$msg);
            }
            
        } else {
            echo "Informe seu login e sua senha";
        }
    }



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1 align='center'>Sistema Acadêmico</h1>

    <hr>

    <form method="post">
        <label for="login">Login: </label> <br>
        <input type="text" name="login" id="login" required>
        <br><br>
        <label for="pass">Senha: </label> <br>
        <input type="text" name="pass" id="pass" required>
        <input type="submit" value="Ok">
    </form>

    <hr>

</body>
</html>