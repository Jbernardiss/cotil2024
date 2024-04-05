<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Aluno</title>
</head>
<body>

    <?php
        if (!isset($_SESSION["login"])) {

          $msg = 'Para acessar essa página você deve efetuar o <a href="index.php">Login.</a>';
          header('Location: erro.php?msg='.$msg);  

        } else {
        	include("contentAluno.html");
        }
    ?>

</body>
</html>