<?php 
  include("/lib/template/raintpl/rain.tpl.class.php");
  raintpl::$tpl_dir   = "../Views/";  
  raintpl::$cache_dir = "../Views/tmp/";  // cache directory
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistema Fazendas</title>

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body>
    <header data-spy="scroll" data-target="#menu-navegacao" data-offset="30">
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-navegacao">
                        <span class="sr-only">Navegação</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <div>
                        <div>
                            <img src="imgs/LogoFazendaMini.jpg" />
                        </div>
                        <div>
                            <a class="logo-title" href="#home">Fazendas</a>
                        </div>
                    </div>
                </div>

                <div class="collapse navbar-collapse" id="menu-navegacao">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="" href="#home">Home</a>
                        </li>
                        <li><a class="" href="#login">Log In</a>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>
    </header>


    <section>
        <div class="container col-xs-12">
            <div class="col-xs-6 alinharDireita">
                <div class="logoLeft">
                    <img src="imgs/LogoFazenda.jpg">
                    <p>Controle de Fazendas</p>
                </div>
            </div>
            <div class="col-xs-6 alinhaEsquerda">
                <form class="form-signin" method="post" action="./controllers/valida.php">
                    <h2>Login</h2>
                    <label for="edUser">Usuário</label>
                    <input type="text" id="edUser" name="edUser" class="form-control input-lg" placeholder="usuário" maxlength="30" required />
                    <label for="edPassWord">Senha</label>
                    <input type="password" id="inputPass" name="edPassWord" class="form-control input-lg" placeholder="senha" maxlength="20" required />
                    <button class="btn btn-large btn-primary" type="submit">Entrar</button>
                </form>
            </div>
        </div>
    </section>


    <footer class="footer">
        <div class="container">
            <p class="text-muted">Sistema de controle de fazendas</p>
        </div>
    </footer>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>