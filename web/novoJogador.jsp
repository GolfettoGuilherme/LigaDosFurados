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
        <title>Cadastro Jogador</title>
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
                                        <form role="form" method="POST" action="JogadorServlet">
                                            <input type="hidden" name="acao" value="cadastra"/>
                                            Nome:
                                            <input type="text" class="form-control col-md-4" name="txtNomeJogador"/>
                                            <br>
                                            Login:
                                            <input type="text" class="form-control col-md-4" name="txtLoginJogador"/>
                                            <br>
                                            Senha:
                                            <input class="form-control col-md-4" type="password" name="txtSenhaJogador"/>
                                            <br>
                                            Time:
                                            <br />
                                            <select class="form-control col-md-4" name="timeJogadorId">
                                                <c:forEach items="${listaTimes}" var="time">
                                                    <option value="${time.id}">${time.nome}</option>
                                                </c:forEach>
                                            </select>
                                            <br>
                                            <input class="btn btn-success" type="submit" value="Enviar" style="margin-top: 20px;"/>
                                        </form>
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
