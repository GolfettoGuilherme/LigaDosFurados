<%@page import="DTO.TimeDTO"%>
<%@page import="DTO.PartidaDTO"%>
<%@page import="DTO.JuizDTO"%>
<%@page import="BLL.TimeBLL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% TimeBLL bll = new TimeBLL(); %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="todocss.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Partidas</title>
    </head>
    <body>
        <div class="menu" style="float: left;">
            <div>
                <h1>${usuario.getNome()}</h1>
                <ul>
                    <li><a href="TimeServlet?acao=lista">Organiza Times</a></li>
                    <li><a href="JogadorServlet?acao=lista">Organiza Jogador</a></li>
                    <li><a href="PartidaServlet?acao=lista">Organiza Partidas</a></li>
                </ul>

                <a href="index.html">Sair</a>
            </div>
        </div>
        <div>
            <div class="title" style="
                box-shadow: 0px 5px 22px -9px;
                margin-bottom: 2%;
                padding-left: 21%;
                padding-bottom: 1px;
                background-color:white;"> 
                <h2 style="margin-top:0 !important;
                            font-family: sans-serif;padding-top: 14px;">Partidas da Rodada</h2>
            </div>
            <div class="tabela" style="
                box-shadow: 0px 10px 54px 0px rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 80%;
                margin-left: 19%;
                border-radius: 5px;
                height: 87vh;
                padding-top: 3%;
                padding-left: 30px;
                background-color: white;"
            >
                <a class="btn btn-primary" style='margin-bottom:20px;' href='PartidaServlet?acao=cadastro'>Nova Partida</a>
                <table class="table " style="width:95%;">
                    <thead class="thead-dark">
                        <tr>
                            <th>Time da Casa</th>
                            <th>Gols</th>
                            <th>Gols</th>
                            <th>Time Adversário</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listaPartidas}" var="partida">
                            <% TimeDTO timeCasa = ((PartidaDTO) pageContext.getAttribute("partida")).getTimeCasa();%>
                            <% TimeDTO timeAdversario = ((PartidaDTO) pageContext.getAttribute("partida")).getTimeAdversario();%>
                            <tr>
                                <td><% out.print(timeCasa.getNome());%></td>
                                <td>${partida.golsCasa}</td>
                                <td>${partida.goldAdversario}</td>
                                <td><% out.print(timeAdversario.getNome());%></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
