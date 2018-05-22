<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="todocss.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Partida</title>
    </head>
    <body style="background-color:#8080801c;">
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
                    padding-bottom: 1px;"> 
                    <h2 style="margin-top:0 !important;
                                font-family: sans-serif;padding-top: 14px;">Registrar Partida</h2>
            </div>
            <div style="box-shadow: 0px 10px 54px 0px rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 80%;
                margin-left: 19%;
                border-radius: 5px;
                height: 87vh;
                padding-top: 3%;
                padding-left: 30px;
                background-color: white;">
                <form role="form" action="PartidaServlet" method="POST">
                    <div class='row' style='font-family:sans-serif;'>
                        <div class="col-md-6" style='text-align: right;'>  
                            <input type="hidden" name="acao" value="cadastra"/>
                            Time da casa<br />
                            <select class="custom-select col-md-5" name="idTimeCasa">
                                <option value="Escolhaotime">Escolha o time</option>
                                <c:forEach items="${listaTimes}" var="time">
                                    <option value="${time.id}">${time.nome}</option>
                                </c:forEach>
                            </select><br />
                            <input class="form-control col-md-5"style='margin-left: 58.3%;' type="number" name="txtSaldoGolsTimeCasa"/>
                        </div>
                        <div class="co-md-6">
                            Time Adversário<br />
                            <select class="custom-select col-md-12" name="idTimeAdversario">
                                <option value="Escolhaotime">Escolha o time</option>
                                <c:forEach items="${listaTimes}" var="time">
                                    <option value="${time.id}">${time.nome}</option>
                                </c:forEach>
                            </select><br />
                            <input class="form-control" type="number" name="txtSaldoGolsTimeAdversario"/>
                            <br>
                        </div>
                    </div>
                    <div class='row'>
                        <input type="submit" class='btn btn-success button' value="Enviar" style="margin-left: 46%;" />
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
