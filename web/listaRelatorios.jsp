<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="bll" class="BLL.TimeBLL"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp"%>
        <title>Relatórios</title>
        <style>
            
.sumiu{
    display: none;
}

#tabela-times_wrapper .dt-button {
    width: 100%;
    height: 73px;
    background-color: transparent;
    border: none;
}

#tabela-times_wrapper .dt-buttons:nth-child(1) {
    z-index: 10000;
    left: 50.7%;
    width: 49%;
    position: relative;
    bottom: 201px;
    color: transparent;
    background-color: transparent;
}

#DataTables_Table_0_wrapper .dt-button {
    width: 100%;
    height: 73px;
    background-color: transparent;
    border: none;
}

#DataTables_Table_0_wrapper .dt-buttons {
    z-index: 10000;
    width: 49%;
    position: relative;
    bottom: 118px;
    color: transparent;
    background-color: transparent;
}
        </style>
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
                                        <h2>Relatórios</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <div class="">
                                            <div class="row tile_count">
                                                <div class="animated flipInY col-md-6">
                                                    <div class="tile-stats"  style="background-color: #dd4b39 !important; color: white; padding: 25px !important;">
                                                        <div class="icon"><i class="fa fa-group" style="color:white"></i></div>
                                                        <h3 style="color:white;font-weight: bold;">Relatórios dos Jogadores</h3>
                                                    </div>
                                                </div>
                                                <div class="animated flipInY col-md-6 ">
                                                    <div class="tile-stats" style="background-color: #00c0ef !important; color: white; padding: 25px !important;">
                                                        <div class="icon"><i class="fa fa-group" style="color:white"></i></div>
                                                        <h3 style="color:white;font-weight: bold;">Relatórios dos Times</h3>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <table class="table tabela-jogadores sumiu" style="width:95%;">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">Nome</th>
                                                <th scope="col">Saldo de Gols</th>
                                                <th scope="col">Login</th>
                                                <th scope="col">Time</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listaJogadores}" var="jogador">
                                                <tr>
                                                    <td>${jogador.nome}</td>
                                                    <td>${jogador.saldoGols}</td>
                                                    <td>${jogador.login}</td>
                                                    <td> <c:out value="${bll.buscaTimePorId(jogador.idTime).nome}" />
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <table class="table sumiu table-hover" id="tabela-times">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">Nome do Time</th>
                                                <th scope="col">Saldo de gols</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listaTimes}" var="time">
                                                <tr>
                                                    <td>${time.nome}</td>
                                                    <td>${time.saldoGols}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                                    
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('.tabela-jogadores').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        {
                            extend: 'pdfHtml5',
                            download: 'open'
                        }
                    ]
                });
                $("#tabela-times").DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        {
                            extend: 'pdfHtml5',
                            download: 'open'
                        }
                    ]
                });

                $(".dataTables_info").hide();
                $(".dataTables_paginate").hide();
                $(".dataTables_filter").hide();
            });
        </script>
        <%@include file="rodape.jsp"%>
    </body>
</html>