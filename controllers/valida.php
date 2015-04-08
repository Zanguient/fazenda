<?php
require_once("seguranca.php");

  include("../lib/template/raintpl/rain.tpl.class.php");
  raintpl::$tpl_dir   = "../Views/";  
  raintpl::$cache_dir = "../Views/tmp/";  // cache directory


if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
  $usuario = (isset($_POST['edUser'])) ? $_POST['edUser'] : '';
  $senha = (isset($_POST['edPassWord'])) ? $_POST['edPassWord'] : '';

  if (validaUsuario($usuario, $senha) == true) 
  {
    // O usuário e a senha digitados foram validados, liberar acesso
    //header("Location: ../views/projeto.php");
      
    //$tpl = new raintpl();
    //$tpl->draw("projeto.php");
      
    $t = new Tpl;
    $t->assign('title','Hello!');
    $t->draw('test');      
      
      
  } 
  else 
  {
    // O usuário e/ou a senha são inválidos, Não permitir acesso
    AcessoInvalido();
  }
    
}