<%@page import="DTO.TimeDTO"%>
<%@page import="DTO.PartidaDTO"%>
<%@page import="DTO.JuizDTO"%>
<%@page import="BLL.TimeBLL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% TimeBLL bll = new TimeBLL();%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Partidas</title>
    </head>
    <body class="nav-md">
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
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Jogos Encerados</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <a class="btn btn-primary" style='margin-bottom:20px;' href='PartidaServlet?acao=cadastro'>Nova Partida</a>
                                        <div class="dashboard-widget-content">
                                            <ul class="list-unstyled timeline widget" style="padding-bottom: 0px;">
                                                <c:forEach items="${listaPartidas}" var="partida">
                                                    <% TimeDTO timeCasa = ((PartidaDTO) pageContext.getAttribute("partida")).getTimeCasa();%>
                                                    <% TimeDTO timeAdversario = ((PartidaDTO) pageContext.getAttribute("partida")).getTimeAdversario();%>
                                                    <article class="media event">
                                                        <a class="pull-left date">
                                                            <p class="month">Partida</p>
                                                            <p class="day">${partida.id}</p>
                                                        </a>
                                                        <div class="media-body">
                                                            <p><% out.print(timeCasa.getNome());%> <b>${partida.golsCasa}</b> X <b>${partida.goldAdversario}</b> <% out.print(timeAdversario.getNome());%></p>
                                                            <p>Jogo encerrado.</p>
                                                        </div>
                                                    </article>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Tabela</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <h4>Melhores Times (em saldo de gols)</h4>
                                        <c:forEach items="${listaTimesOrdenada}" var="time">
                                            <div class="widget_summary">
                                                <div class="w_left w_25">
                                                    <span>${time.nome}</span>
                                                </div>
                                                <div class="w_center w_55">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="${time.saldoGols}" aria-valuemin="0" aria-valuemax="30" style="width: ${time.saldoGols}%;">
                                                            <span class="sr-only">${time.saldoGols}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="w_right w_20">
                                                    <span>${time.saldoGols}</span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </c:forEach>
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
