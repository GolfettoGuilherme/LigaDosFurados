<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Partida</title>
    </head>
    <body class="nav-md footer_fixed">
        <div class="container body">
            <div class="main_container">
                <%@include file="menuJuiz.jsp"%>
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Liga dos Furados</h3>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h3>Nova Partida</h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <form role="form" action="PartidaServlet" method="POST"  class="form-horizontal form-label-left">
                                            <input type="hidden" name="acao" value="cadastra"/>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Time da casa</label>
                                                <select class="form-control col-md-3" name="idTimeCasa" style="width: 30%">
                                                    <option value="Escolhaotime">Escolha o time</option>
                                                    <c:forEach items="${listaTimes}" var="time">
                                                        <option value="${time.id}">${time.nome}</option>
                                                    </c:forEach>
                                                </select>
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">Gols</label>
                                                <input class="form-control" style='margin-left: 58.3%;width: 10%' type="number" name="txtSaldoGolsTimeCasa"/>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Time Adversário</label>
                                                <select class="form-control col-md-3" name="idTimeAdversario"  style="width: 30%">
                                                    <option value="Escolhaotime">Escolha o time</option>
                                                    <c:forEach items="${listaTimes}" var="time">
                                                        <option value="${time.id}">${time.nome}</option>
                                                    </c:forEach>
                                                </select>
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">Gols</label>
                                                <input class="form-control" style='margin-left: 58.3%;width: 10%' type="number" name="txtSaldoGolsTimeAdversario"/>
                                            </div>

                                            <div clas="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <input type="submit" class="btn btn-success" value="Enviar"/>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="rodape.jsp"%>
</body>
</html>
