<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Altera Time</title>
    </head>
    <body>
        <h1>Bem Vindo Juiz: ${usuario.getNome()}!</h1>
        <h1>Alteração do time ${time.nome}</h1>
        <form role="form" method="POST" action="TimeServlet">
            <input type='hidden' name="acao" value="altera"/>
            <input type="hidden" name="idTime" value="${time.id}"/>
            Nome:
            <input type="text" name="txtNomeTime" value='${time.nome}'/>
            <br>
            Saldo Gols:
            <input type="number" name="txtSaldoGolsTime" value="${time.saldoGols}"/>
            <br>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
