<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controle de Alunos</title>
    <style>
        body{
            height: 100vh;
            width: 100vw;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        div{
            height: 300px;
            width: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        form{
            width: 200px;
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div>
        <h2>Controle de Alunos</h2>
        <form action="">
            <input type="button" value="Cadastrar" onclick="window.open('cadastra.php', '_top');">
            <input type="button" value="Consultar" onclick="window.open('consulta.php', '_top');">
        </form>
    </div>
</body>
</html>