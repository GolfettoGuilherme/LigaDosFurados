
    <head lang="en">
        <title>Liga dos  Furados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="header.jsp"%>
    </head>
    <body class="login"> 
        <div>
            
            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <form role="form" method="POST" action="Login">
                            <h1>Login</h1>
                            <input type="text" name="usuario"  placeholder="Usuário"/>
                            <br>
                            <input type="password" name="senha"  placeholder="Senha"/>
                            <br>
                            <select name="tipoJogador">
                                <option value="Juiz">Juiz</option>
                                <option value="Jogador">Jogador</option>
                            </select>
                            <input type="submit" value="logar"/>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>

