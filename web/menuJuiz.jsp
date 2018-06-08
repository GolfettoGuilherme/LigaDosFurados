<%@page import="DTO.JuizDTO"%>
<% JuizDTO usuario = (JuizDTO) session.getAttribute("usuario");%>
<div class="col-md-3 left_col menu_fixed">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title">
                <i class="fa fa-soccer-ball-o"></i> <span>Liga dos Furados</span>
            </a>
        </div>
        <div class="clearfix"></div>
        <div class="profile clearfix">
            <p class="site_title">${usuario.nome} </p>
            <div class="clearfix"></div>
        </div>
        <br />
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>GERENCIAR LIGA</h3>
                <ul class="nav side-menu">
                    <li><a href="Login"><i class="fa fa-futbol-o"></i>Home</a></li>
                    <li><a href="TimeServlet?acao=lista"><i class="fa fa-futbol-o"></i>Organiza Times</a></li>
                    <li><a href="JogadorServlet?acao=lista"><i class="fa fa-futbol-o"></i>Organiza Jogador</a></li>
                    <li><a href="PartidaServlet?acao=lista"><i class="fa fa-futbol-o"></i>Organiza Partidas</a></li>
                    <li><a href="RelatorioServlet"><i class="fa fa-futbol-o"></i>Relatórios</a></li>
                    <li><a href="index.html"><i class="fa fa-power-off"></i> SAIR </a>

                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
