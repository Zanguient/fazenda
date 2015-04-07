<?php
require_once("seguranca.php");


if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
  $usuario = (isset($_POST['usuario'])) ? $_POST['usuario'] : '';
  $senha = (isset($_POST['senha'])) ? $_POST['senha'] : '';


  if (validaUsuario($usuario, $senha) == true) 
  {
    // O usuário e a senha digitados foram validados, manda pra página interna
    header("Location: index.php");
  } 
  else 
  {
    // O usuário e/ou a senha são inválidos, manda de volta pro form de login
    // Para alterar o endereço da página de login, verifique o arquivo seguranca.php
    expulsaVisitante();
  }
}