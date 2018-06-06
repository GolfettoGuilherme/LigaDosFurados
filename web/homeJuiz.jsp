<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="todocss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp"%>
        <title>Home do Juiz</title>
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
                        <div class="x_panel">
                            <div class="row tile_count">
                                <div class="col-md-3 col-sm-4 col-xs-6 tile_stats_count">
                                    <span class="count_top"><i class="fa fa-group"></i> Times Cadastrados</span>
                                    <div class="count red"><c:out value = "${totalTimes}"/></div>
                                    <span class="count_bottom">Times prontos pro FIGHT</span>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Jogadores Cadastrados</span>
                                    <div class="count blue">${totalJogadores}</div>
                                    <span class="count_bottom">Jogadores arrumando o meião</span>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 tile_stats_count">
                                    <span class="count_top"><i class="fa fa-futbol-o"></i> Partidas Realizados</span>
                                    <div class="count ">${totalPartidas}</div>
                                    <span class="count_bottom">Cheias de bolas murchas</span>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 tile_stats_count">
                                    <span class="count_top"><i class="fa fa-futbol-o"></i> Gols Feitos</span>
                                    <div class="count green">${totalGols} </div>
                                    <span class="count_bottom">(poderiam ser mais né ?)</span>
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
