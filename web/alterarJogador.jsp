<%@page import="BLL.TimeBLL"%>
<%@page import="DTO.TimeDTO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração do Jogador: ${jogador.nome}</title>
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
                                        <h2>Novo Jogador</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <form role="form" method="POST" action="JogadorServlet" class="form-horizontal form-label-left">
                                            <input type="hidden" name="acao" value="altera"/>
                                            <input type="hidden" name="idJogador" value="${jogador.id}"/>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12"> Nome:</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" class="form-control col-md-4"  name="txtNomeJogador" value="${jogador.nome}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12"> Saldo de Gols:</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="number" class="form-control col-md-4"  name="txtSaldoGolsJogados" value="${jogador.saldoGols}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12"> Login:</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" class="form-control col-md-4"  name="txtLoginJogador" value="${jogador.nome}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12"> Senha:</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="password" class="form-control col-md-4"  name="txtSenhaJogador" value="${jogador.nome}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12"> Time:</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select name="timeJogadorId" class="form-control col-md-4" >
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
                                                </div>
                                            </div>
                                            <div clas="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <input type="submit" class="btn btn-success" value="Alterar"/>
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
    </body>
</html>
