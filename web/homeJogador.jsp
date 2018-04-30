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
            <li style=" display: inline;"><a href="">Ver Partidas</a> |</li>
            <li style=" display: inline;"><a href="">Ver Escalação Time</a> |</li>
            <li style=" display: inline;"><a href="">Ver Saldo de  Gols</a> </li>
        </ul>

        <a href="index.html">Sair</a>
    </body>
</html>
