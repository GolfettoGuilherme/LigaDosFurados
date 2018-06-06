<head lang="en">
    <title>Liga dos  Furados</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="header.jsp"%>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/waypoints.css" rel="stylesheet"/>
    <script src="js/jquery.waypoints.min.js" type="text/javascript"></script>
    <script src="js/waypoints.js" type="text/javascript"></script>
</head>
<body class="login">
    <section class="intro">
        <div class="inner">
            <div class="content">
                <section class="os-animation" data-os-animation="bounceInUp" data-os-animation-delay=".1s">
                    <form role="form" method="POST" action="Login">
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <h1>Login</h1>
                                <input type="text" name="usuario" class="form-control" placeholder="Usuário" value="admin"/>
                                <br>
                                <input type="password" name="senha" class="form-control" placeholder="Senha" value="admin"/>
                                <br>
                                <input type="hidden" value="Juiz" name="tipoJogador"/>
                                <br>
                                <input type="submit" value="logar" class="btn btn-primary"/>
                            </div>
                            <div class="col-md-4"></div>
                        </div>

                    </form>
                </section>
            </div>
        </div>
    </section>
</body>

