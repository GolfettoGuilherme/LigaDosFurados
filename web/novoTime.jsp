<%@page import="DTO.JuizDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Time</title>
        <%@include file="header.jsp" %>
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
                                        <h2>Novo Time</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <form role="form" method="POST" action="TimeServlet">
                                            <input type="hidden" name="acao" value="cadastra"/>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style=" text-align:  right;">Nome do Time:<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name" name="txtNomeTime" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
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
        <%@include file="rodape.jsp"%>
    </body>
</html>
