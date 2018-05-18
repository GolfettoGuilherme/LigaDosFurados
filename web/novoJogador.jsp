<%@page import="BLL.TimeBLL"%>
<%@page import="DTO.TimeDTO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<% List<TimeDTO> listaTimes = new TimeBLL().buscaTimes(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Jogador</title>
    </head>
    <body>
        <h1>Bem vindo Juiz: ${usuario.getNome()}</h1>
        <h1>Novo Jogador</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Time</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <form role="form" method="POST" action="JogadorServlet">
            <input type="hidden" name="acao" value="cadastra"/>
            Nome:
            <input type="text" name="txtNomeJogador"/>
            <br>
            Login:
            <input type="text" name="txtLoginJogador"/>
            <br>
            Senha:
            <input type="password" name="txtSenhaJogador"/>
            <br>
            <select name="timeJogadorId">
                <c:forEach items="${listaTimes}" var="time">
                    <option value="${time.id}">${time.nome}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
