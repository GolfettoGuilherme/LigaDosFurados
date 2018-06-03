<%@page import="DTO.JogadorDTO"%>
<%@page import="BLL.TimeBLL"%>
<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% TimeBLL bll = new TimeBLL();%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organiza Jogadores</title>
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
                                        <h2>Jogadores Cadastrados</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <a href='JogadorServlet?acao=cadastro' class="btn btn-primary">Novo Jogador</a>
                                        <br><br>
                                        <table class="table tabela-jogadores" style="width:95%;">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th scope="col">Nome</th>
                                                    <th scope="col">Saldo de Gols</th>
                                                    <th scope="col">Login</th>
                                                    <th scope="col">Time</th>
                                                    <th scope="col" colspan="2" style="text-align: center">Ações</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listaJogadores}" var="jogador">
                                                    <tr>
                                                        <td>${jogador.nome}</td>
                                                        <td>${jogador.saldoGols}</td>
                                                        <td>${jogador.login}</td>
                                                        <td><% out.print(bll.buscaTimePorId(((JogadorDTO) pageContext.getAttribute("jogador")).getIdTime()).getNome());%></td>
                                                        <td><a href='JogadorServlet?acao=alteracao&idJogador=${jogador.id}'><i class="fas fa-pencil-alt"></i> Atualizar</a></td>
                                                        <td><a href='JogadorServlet?acao=remocao&idJogador=${jogador.id}'><i class="far fa-trash-alt"></i> Deletar</a></td>
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
                    $('#tabela-jogadores').DataTable();
                });
            </script>
        </div>
        <%@include file="rodape.jsp"%>
    </body>
</html>
