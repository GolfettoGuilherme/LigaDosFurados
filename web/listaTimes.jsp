<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organiza Times</title>
    </head>
    <body>
        <h1>Bem Vindo Juiz: ${usuario.getNome()}!</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Times</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <h2>Times Cadastrados</h2>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>SaldoGols</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaTimes}" var="time">
                    <tr>
                        <td>${time.id}</td>
                        <td>${time.nome}</td>
                        <td>${time.saldoGols}</td>
                        <td><a href='TimeServlet?acao=alteracao&idTime=${time.id}'>alterar</a></td>
                        <td><a href='TimeServlet?acao=remocao&idTime=${time.id}'>remover</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href='TimeServlet?acao=cadastro'>Novo Time</a>
    </body>
</html>
