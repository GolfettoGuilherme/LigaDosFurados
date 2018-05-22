<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="todocss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Time</title>
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
            <div>
                <div class="title" style="
                    box-shadow: 0px 5px 22px -9px;
                    margin-bottom: 2%;
                    padding-left: 21%;
                    padding-bottom: 1px;"> 
                    <h2 style="margin-top:0 !important;
                                font-family: sans-serif;padding-top: 14px;">Novo Time</h2>
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
                   <form  style="    padding-left: 34%;
                    padding-top: 13%;" role="form" method="POST" action="TimeServlet">
                    <input type="hidden" name="acao" value="cadastra"/>
                    Nome:
                    <input type="text" name="txtNomeTime" class="form-control col-md-3" />
                    <br>
                    <input type="submit" class="btn btn-success" value="Enviar"/>
                </form>
                </div>
            </div>
        </div>
    </body>
</html>
