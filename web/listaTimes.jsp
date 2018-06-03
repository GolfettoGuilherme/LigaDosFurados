<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <title>Organiza Times</title>
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
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Times Cadastrados</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <a href='TimeServlet?acao=cadastro' class="btn btn-primary">Novo Time</a>
                                        <br><br>
                                        <table class="table table-hover" id="tabela-times">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th scope="col">Nome do Time</th>
                                                    <th scope="col">Saldo de gols</th>
                                                    <th scope="col" colspan="2" style="text-align: center">Ações</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listaTimes}" var="time">
                                                    <tr>
                                                        <td>${time.nome}</td>
                                                        <td>${time.saldoGols}</td>
                                                        <td><a href='TimeServlet?acao=alteracao&idTime=${time.id}'><i class="fas fa-pencil-alt"></i> Atualizar</a></td>
                                                        <td><a href='TimeServlet?acao=remocao&idTime=${time.id}'><i class="far fa-trash-alt"></i> Deletar</a></td>
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
                $(document).ready(function() {
                    $('#tabela-times').DataTable();
                });
            </script>
        </div>
        <%@include file="rodape.jsp"%>
    </body>
</html>
