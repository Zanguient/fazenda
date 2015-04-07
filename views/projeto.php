<?php
include("seguranca.php"); // Inclui o arquivo com o sistema de segurança

protegePagina(); // Chama a função que protege a página


echo "<h1> Parabéns, " . $_SESSION['usuarioNome']." </h1>";
<h1>Login efetuado com sucesso!! </h1>