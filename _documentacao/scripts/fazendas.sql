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




select * from consultor
insert into consultor (Nome) values ('Joldemar Moreira');
insert into consultor (Nome) values ('Mario Gomes da Silva');
insert into consultor (Nome) values ('Ivo Dante de Oliveira');


SELECT * FROM GRUPO
insert into grupo (Descricao) values ('Mario Guilherme Ferreira');
insert into grupo (Descricao) values ('Brasil-Agricola');


SELECT * FROM USUARIO
insert into usuario (Login, Senha, Nome, EMail, TipoAcesso, Ativo ) values ('Joldemar','123','Joldemar.Moreira','joldemar@faz.com.br', 1, 'S');
insert into usuario (Login, Senha, Nome, EMail, TipoAcesso, Ativo ) values ('Joaquim','321','Joaquim.Silva','joaquim@faz.com.br', 2, 'S');
insert into usuario (Login, Senha, Nome, EMail, TipoAcesso, Ativo ) values ('Felipe','231','Felipe.Ramos','felipe@faz.com.br', 2, 'S');



SELECT * FROM FAZENDA
insert into fazenda (Nome) values ('Dona Maria');
insert into fazenda (Nome) values ('Boa Esperança');
insert into fazenda (Nome) values ('Rio Negro');


SELECT * FROM ELEMENTO
insert into ELEMENTO (Descricao) values ('Adubação Pré-Plantio CFR');
insert into ELEMENTO (Descricao) values ('Calagem');
insert into ELEMENTO (Descricao) values ('Cálcio (CA) 00-20');
insert into ELEMENTO (Descricao) values ('Enxofre');


SELECT * FROM PRODUTOR
insert into PRODUTOR (Nome) values ('Mário Gomes da Silva');
insert into PRODUTOR (Nome) values ('Flávio Pereira Vargas');
insert into PRODUTOR (Nome) values ('Viviane Costa');



SELECT * FROM PROJETO
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2012/2013-1 - Correção de Solo', 1, 1, 1, 1);
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2013/2014-1 - Correção de Solo', 1, 1, 1, 1);
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2014/2015-1 - Correção de Solo', 1, 1, 1, 1);
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2012/2013-1 - Fertilidade', 1, 1, 1, 1);
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2013/2014-1 - Fertilidade', 1, 1, 1, 1);
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2014/2015-1 - Nematoide', 1, 1, 1, 1);
insert into PROJETO (Descricao, FazendaId, ProdutorId, GrupoId, ConsultorId ) values ('ABCDE-2013/2012-1 - Nematoide', 1, 1, 1, 1);
