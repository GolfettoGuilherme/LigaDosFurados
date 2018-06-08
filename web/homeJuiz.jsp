<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp"%>
        <title>Home do Juiz</title>
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
                        <div class="">
                            <div class="row tile_count">
                                <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="tile-stats" style="background-color: #00c0ef !important; color: white;">
                                      <div class="icon"><i class="fa fa-group" style="color:white"></i></div>
                                      <div class="count"><c:out value = "${totalTimes}"/></div>
                                      <h3 style="color:white;font-weight: bold;">Times</h3>
                                      <p>Times prontos pro FIGHT</p>
                                    </div>
                                </div>
                                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="tile-stats"  style="background-color: #dd4b39 !important; color: white;">
                                      <div class="icon"><i class="fa fa-group" style="color:white"></i></div>
                                      <div class="count">${totalJogadores}</div>
                                      <h3 style="color:white;font-weight: bold;">Jogadores</h3>
                                      <p>Jogadores arrumando o meião</p>
                                    </div>
                                </div>
                                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="tile-stats" style="background-color: #f39c12 !important; color: white;">
                                      <div class="icon"><i class="fa fa-soccer-ball-o" style="color:white"></i></div>
                                      <div class="count">${totalPartidas}</div>
                                      <h3 style="color:white;font-weight: bold;"> Partidas</h3>
                                      <p>Cheias de bolas murchas</p>
                                    </div>
                                </div>
                                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="tile-stats" style="background-color: #00a65a !important; color: white;">
                                      <div class="icon"><i class="fa fa-soccer-ball-o" style="color:white"></i></div>
                                      <div class="count">${totalGols} </div>
                                      <h3 style="color:white;font-weight: bold;">Gols</h3>
                                      <p>(poderiam ser mais né ?)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Noticias</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <div class="dashboard-widget-content">
                                            <ul class="list-unstyled timeline widget" style="padding-bottom: 0px;">
                                                <li style="background: white">
                                                    <div class="block">
                                                        <div class="block_content">
                                                            <h4>Aguirre insiste que primeira derrota do São Paulo é "normal"</h4>
                                                            <div class="byline">
                                                                <span>12 Horas atrás</span> Redação Liga dos Furados
                                                            </div>
                                                            <p class="excerpt">Técnico também destaca gol impedido do Palmeiras na derrota tricolor</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li style="background: white">
                                                    <div class="block">
                                                        <div class="block_content">
                                                            <h4>Torcedor rival causa confusão com jogadores do São Paulo na saída</h4>
                                                            <div class="byline">
                                                                <span>13 Horas atrás</span> Redação Liga dos Furados
                                                            </div>
                                                            <p class="excerpt">Petros e Jean são hostilizados; agressor é retirado por seguranças alviverdes</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li style="background: white">
                                                    <div class="block">
                                                        <div class="block_content">
                                                            <h4>São Paulo perde Nenê e Bruno Alves para jogo contra Internacional; Hudson é dúvida</h4>
                                                            <div class="byline">
                                                                <span>14 Horas atrás</span> Redação Liga dos Furados
                                                            </div>
                                                            <p class="excerpt">Meia e zagueiro estão suspensos para jogo de terça-feira, e volante sente a coxa direita</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li style="background: white">
                                                    <div class="block">
                                                        <div class="block_content">
                                                            <h4>É campeão! São Paulo goleia e conquista Copa do Brasil Sub-20</h4>
                                                            <div class="byline">
                                                                <span>15 Horas atrás</span> Redação Liga dos Furados
                                                            </div>
                                                            <p class="excerpt">Tricolor faz 4 a 0 no Corinthians no Morumbi</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Tabela da Liga</h2>
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
                                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="${time.saldoGols}" aria-valuemin="0" aria-valuemax="100" style="width: ${time.saldoGols}%;">
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
