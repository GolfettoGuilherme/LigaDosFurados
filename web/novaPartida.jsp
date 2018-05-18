<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Partida</title>
    </head>
    <body>
        <h1>Bem Vindo Juiz: ${usuario.getNome()}!</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Times</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <h2>Registrar Partida</h2>
        <form role="form" action="PartidaServlet" method="POST">
            <input type="hidden" name="acao" value="cadastra"/>
            Time da casa:
            <select name="idTimeCasa">
                <c:forEach items="${listaTimes}" var="time">
                    <option value="${time.id}">${time.nome}</option>
                </c:forEach>
            </select>
            <input type="number" name="txtSaldoGolsTimeCasa"/>
            <br>
            Time Adversário
            <select name="idTimeAdversario">
                <c:forEach items="${listaTimes}" var="time">
                    <option value="${time.id}">${time.nome}</option>
                </c:forEach>
            </select>
            <input type="number" name="txtSaldoGolsTimeAdversario"/>
            <br>
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
