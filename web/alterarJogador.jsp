<%@page import="BLL.TimeBLL"%>
<%@page import="DTO.TimeDTO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração do Jogador: ${jogador.nome}</title>
    </head>
    <body>
        <h1>Bem vindo Juiz: ${usuario.getNome()}</h1>
        <h1>Alteração do Jogador: ${jogador.nome}</h1>
        <ul>
            <li style=" display: inline;"><a href="TimeServlet?acao=lista">Organiza Time</a> |</li>
            <li style=" display: inline;"><a href="JogadorServlet?acao=lista">Organiza Jogador</a> |</li>
            <li style=" display: inline;"><a href="PartidaServlet?acao=lista">Organiza Partidas</a> </li>
        </ul>
        <form role="form" method="POST" action="JogadorServlet">
            <input type="hidden" name="acao" value="altera"/>
            <input type="hidden" name="idJogador" value="${jogador.id}"/>
            Nome:
            <input type="text" name="txtNomeJogador" value="${jogador.nome}"/>
            <br>
            Saldo de Gols:
            <input type="number" name="txtSaldoGolsJogados" value="${jogador.saldoGols}"/>
            <br>
            Login:
            <input type="text" name="txtLoginJogador" value="${jogador.nome}"/>
            <br>
            Senha:
            <input type="password" name="txtSenhaJogador" value="${jogador.nome}"/>
            <br>
            Time:
            <select name="timeJogadorId">
                <c:forEach items="${listaTimes}" var="time">
                    <c:choose>
                        <c:when test="${item.id == jogador.idTime}">
                            <option value="${time.id}" selected>${time.nome}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${time.id}">${time.nome}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>
            <br>
            <input type="submit" value="Atualizar"/>
        </form>
    </body>
</html>
