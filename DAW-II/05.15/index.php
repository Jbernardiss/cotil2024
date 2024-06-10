<?php 
    $user = "Jbernardis";
    $pass = md5("12345678");

    if($_SERVER["REQUEST_METHOD"] === "POST") {
        
        $formUser = trim($_POST["user"]);
        $formPassword = trim($_POST["password"]);

        if($formUser === "" || $formPassword === "") {
            echo "Os dois campos precisam estar preenchidos!";
        } else if(strlen($formUser) < 5) {
            echo "O username precisa ter 5 caracteres ou mais";
        } else if(strlen($formPassword) < 8) {
            echo "A senha precisa ter 8 caracteres ou mais";
        } else if($formUser === $user && md5($formPassword) === $pass) {
            setcookie("user", $formUser, time() + (86400 * 7));

            header("Location: umapagina.php");

        } else {
            echo '<b class="fail">Senha Incorreta</b><br>';
        }
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mamão e Mel</title>
</head>
<body>
    <form method="post">
        <label for="user">Username</label>
        <input type="text" id="user" name="user">

        <br><br>

        <label for="password">Password</label>
        <input type="password" id="password" name="password">

        <br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>