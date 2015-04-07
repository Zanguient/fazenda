--Tabela para armazenar os usuários
CREATE TABLE usuario (
  UsuarioId int(11) NOT NULL AUTO_INCREMENT,
  Login varchar(30) NOT NULL,
  Senha varchar(80) NOT NULL,
  Nome varchar(80) NOT NULL,
  EMail varchar(80) DEFAULT NULL,
  TipoAcesso smallint DEFAULT 2,  
  Ativo varchar(1) DEFAULT 'S',  
  PRIMARY KEY (UsuarioId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `grupo` (
  `GrupoId` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`GrupoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `produtor` (
  `ProdutorId` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  PRIMARY KEY (`ProdutorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `consultor` (
  `ConsultorId` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  PRIMARY KEY (`ConsultorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `elemento` (
  `ElementoId` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`ElementoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `fazenda` (
  `FazendaId` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  PRIMARY KEY (`FazendaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `projeto` (
  `ProjetoId` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(50) NOT NULL,
  `FazendaId` smallint(6) DEFAULT NULL,
  `ProdutorId` smallint(6) DEFAULT NULL,
  `GrupoId` smallint(6) DEFAULT NULL,
  `ConsultorId` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ProjetoId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `recomendacao` (
  `RecomendacaoId` int(11) NOT NULL AUTO_INCREMENT,
  `ProjetoId` int(11) NOT NULL,
  `ElementoId` int(11) NOT NULL,
  `CaminhoImagemPNG` varchar(80) DEFAULT NULL,
  `CaminhoImagemKMZ` varchar(80) DEFAULT NULL,
  `GoogleLatitude` decimal(10,6) DEFAULT '0.000000',
  `GoogleLongitude` decimal(10,6) DEFAULT '0.000000',
  PRIMARY KEY (`RecomendacaoId`),
  KEY `IdProjeto_FK` (`ProjetoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



