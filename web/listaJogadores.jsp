<%@page import="DTO.JogadorDTO"%>
<%@page import="BLL.TimeBLL"%>
<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% TimeBLL bll = new TimeBLL(); %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organiza Jogadores</title>
    </head>
    <body>
        <h1>Bem Vindo Juiz: ${usuario.getNome()}!</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Times</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <h2>Jogadores Cadastrados</h2>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Saldo de Gols</th>
                    <th>Login</th>
                    <th>Time</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaJogadores}" var="jogador">
                    <tr>
                        <td>${jogador.id}</td>
                        <td>${jogador.nome}</td>
                        <td>${jogador.saldoGols}</td>
                        <td>${jogador.login}</td>
                        <td><% out.print(bll.buscaTimePorId(((JogadorDTO) pageContext.getAttribute("jogador")).getIdTime()).getNome());%></td>
                        <td><a href='JogadorServlet?acao=alteracao&idJogador=${jogador.id}'>alterar</a></td>
                        <td><a href='JogadorServlet?acao=remocao&idJogador=${jogador.id}'>remover</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href='JogadorServlet?acao=cadastro'>Novo Jogador</a>
    </body>
</html>
