<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario"); %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="todocss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home do Juiz</title>
    </head>
    <body>
         <div class="menu">
            <div>
                <h1 style='    font-size: 32px;'>${usuario.getNome()}</h1>
                <ul>
                    <li><a href="TimeServlet?acao=lista">Organiza Times</a></li>
                    <li><a href="JogadorServlet?acao=lista">Organiza Jogador</a></li>
                    <li><a href="PartidaServlet?acao=lista">Organiza Partidas</a></li>
                </ul>

                <a href="index.html">Sair</a>
            </div>
         </div>
    </body>
</html>
