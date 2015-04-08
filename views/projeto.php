<?php
require_once("../controllers/seguranca.php");
protegePagina(); // Chama a função que protege a página


echo "<h1> Parabéns, " . $_SESSION['usuarioNome']." </h1>";
echo "<h1>Login efetuado com sucesso!! </h1>";