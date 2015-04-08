<?php
require_once("seguranca.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
  $usuario = (isset($_POST['edUser'])) ? $_POST['edUser'] : '';
  $senha = (isset($_POST['edPassWord'])) ? $_POST['edPassWord'] : '';

  if (validaUsuario($usuario, $senha) == true) 
  {
    // O usuário e a senha digitados foram validados, manda pra página interna
    header("Location: ../views/projeto.php");
  } 
  else 
  {
    // O usuário e/ou a senha são inválidos, manda de volta pro form de login
    // Para alterar o endereço da página de login, verifique o arquivo seguranca.php
    expulsaVisitante();
  }
    
}