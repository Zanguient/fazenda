<?php
$_SG['abreSessao'] = true;         // Inicia a sessão com um session_start()?
$_SG['caseSensitive'] = false;     // Usar case-sensitive
$_SG['validaSempre'] = true;       // Ao mudar os dados do usuário no banco de dado o mesmo contiue logado.

//$_SG['servidor'] = 'localHost';      // Servidor MySQL
//$_SG['usuario'] = 'meuUsuario';      // Usuário MySQL
//$_SG['senha'] = 'minhaSenha';        // Senha MySQL
//$_SG['banco'] = 'MeuBancoDados';     // Banco de dados MySQL


$_SG['paginaLogin'] = '../index.html';              // Página de login
$_SG['paginaInvalida'] = '../Views/pagina404.php';  // Página de Erro

$Debug = "...";


// Verifica se precisa iniciar a sessão
if ($_SG['abreSessao'] == true)
  session_start();


/**
* Função que valida um usuário e senha
*
* @param string $usuario - O usuário a ser validado
* @param string $senha - A senha a ser validada
*
* @return bool - Se o usuário foi validado ou não (true/false)
*/
function validaUsuario($usuario, $senha) 
{
  global $_SG;

  $cS = ($_SG['caseSensitive']) ? 'BINARY' : '';

  // Usa a função addslashes para escapar as aspas
  $nusuario = addslashes($usuario);
  $nsenha = addslashes($senha);

  //$GLOBALS['Debug']  = "Usuario: ".$usuario;

    
  $con = new PDO("mysql:host=".$_SG['servidor'].";dbname=".$_SG['banco'], $_SG['usuario'], $_SG['senha'] );         
  $rs = $con->prepare("SELECT UsuarioId, Login FROM usuario WHERE ".$cS." Login = ? AND senha = ? LIMIT 1");
  $rs->bindParam(1, $nusuario);
  $rs->bindParam(2, $nsenha);    
  if($rs->execute())
  {
    if($rs->rowCount() > 0)
    {
        while($row = $rs->fetch(PDO::FETCH_OBJ))
        {
            // Dados do usuário
            $_SESSION['usuarioID'] = $row->UsuarioId; 
            $_SESSION['usuarioNome'] = $row->Login; 

            // Verifica a opção se sempre validar o login
            if ($_SG['validaSempre'] == true) 
            {
              // Definimos dois valores na sessão com os dados do login
              $_SESSION['usuarioLogin'] = $usuario;
              $_SESSION['usuarioSenha'] = $senha;
            }

            return true;
        }
    }       
    else
    {
        return false;
    }
  }
}

/**
* Função que protege uma página
*/
function protegePagina() 
{
  global $_SG;

  if (!isset($_SESSION['usuarioID']) OR !isset($_SESSION['usuarioNome'])) 
  {
    // Não há usuário logado, manda pra página home
    AcessoInvalido();
  } 
  else if (!isset($_SESSION['usuarioID']) OR !isset($_SESSION['usuarioNome'])) 
  {
    // Há usuário logado, verifica se precisa validar o login novamente
    if ($_SG['validaSempre'] == true) 
    {
      // Verifica se os dados salvos na sessão batem com os dados do banco de dados
      if (!validaUsuario($_SESSION['usuarioLogin'], $_SESSION['usuarioSenha'])) 
      {
        // Os dados não batem, manda pra tela de login
        AcessoInvalido();
      }
    }
  }
}


/**
* Função para expulsar um visitante
*/
function AcessoInvalido() 
{
  global $_SG;

  // Remove as variáveis da sessão (caso elas existam)
  unset($_SESSION['usuarioID'], $_SESSION['usuarioNome'], $_SESSION['usuarioLogin'], $_SESSION['usuarioSenha']);

  // Manda pra tela de home
  header("Location: ".$_SG['paginaInvalida']);
}