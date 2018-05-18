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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Partidas</title>
    </head>
    <body>
        <h1>Bem Vindo Juiz: ${usuario.getNome()}!</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Times</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <h2>Partidas da rodada</h2>
        <table>
            <thead>
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
        <a href='PartidaServlet?acao=cadastro'>Nova Partida</a>
    </body>
</html>
