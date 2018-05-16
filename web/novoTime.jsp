<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Time</title>
    </head>
    <body>
        <h1>Bem Vindo Juiz: ${usuario.getNome()}!</h1>
        <h1>Novo Time</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Time</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <form  role="form" method="POST" action="TimeServlet">
            <input type="hidden" name="acao" value="cadastra"/>
            Nome:
            <input type="text" name="txtNomeTime"/>
            <br>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
