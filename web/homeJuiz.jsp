<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bem Vindo ${usuario.nome}!</h1>
        <ul>
            <li style=" display: inline;"><a href="">Cadastrar Time</a> |</li>
            <li style=" display: inline;"><a href="">Cadastrar Jogador</a> |</li>
            <li style=" display: inline;"><a href="">Registrar Partidas</a> </li>
        </ul>

        <a href="index.html">Sair</a>
    </body>
</html>
