create table Cliente(
	idCliente int identity (1,1),
	nome varchar (120) not null,
	cpf char (11) not null unique,
	celular varchar (20) not null,
	email varchar (200) not null,
	logradouro varchar (200) not null,
	numerologradouro varchar (5) not null,
	cep char (8),
	cidade varchar (30) not null,
	estado varchar (30) not null,
	genero varchar (20) not null,
	datanasc datetime not null,
	renda numeric (10,2) not null,
	loginCliente char (11) not null unique,
	senha char (6) not null

	constraint pk_Cliente primary key (idCliente)
);

create table Conta(
	idconta int identity (1,1),
	idcliente int not null,
	saldo numeric (10,2) not null,
	limite numeric (10,2) not null,
	tipoconta varchar(30) not null,
	statusconta varchar(20) not  null,
	aberturaconta datetime not null,
	encerramentoconta datetime,

	constraint pk_Conta primary key (idconta),
	constraint	ck_status_conta check (statusconta in ('Ativa','Inativa','Em Análise','Bloqueada')),
	constraint fk_cliente_conta foreign key (idcliente) references Cliente (idcliente)
);

 alter table conta
 alter column aberturaconta datetime not null;

create table tipoOperacao(
	idtipoOperacao int identity (1,1),
	nomeOperacao varchar(30) not null,

	constraint pk_idtipoOperacao primary key (idtipoOperacao)
);

create table transacao(
	idtransicao int identity (1,1),
	idtipoOperacao int not null,
	idContaOrigem int not null,
	valor numeric (10,2) not null,
	datahora datetime not null,
	idContaDestino int not null,

	constraint pk_idtransicao primary key (idtransicao),
	constraint fk_conta_Origem_transacao foreign key (idcontaOrigem) references conta(idconta),
	constraint fk_conta_Destino_transacao foreign key (idcontaDestino) references conta(idconta),
	constraint fk_id_tipo_operacao_transacao foreign key (idtipoOperacao) references tipoOperacao(idtipoOperacao)

);

create table Agendamento (
	idAgendamento int identity (1,1),
	idtipoOperacao int not null,
	idcontaorigem int not null,
	valor numeric (10,2) not null,
	datahora datetime not null,
	idcontadestino int not null,
	statusAgendamento varchar (35),
	
	constraint pk_idAgendamento primary key (idAgendamento),
	constraint fk_agendamento_tipoOperacao foreign key (idtipoOperacao) references tipoOperacao (idtipoOperacao),
	constraint fk_agendamento_contaorigem foreign key (idcontaorigem) references conta (idconta),
	constraint fk_agendamento_contadestino foreign key (idcontadestino) references conta (idconta),
	constraint ck_statusAgendamento check (statusAgendamento in ('Agendado', 'Realizado', 'Cancelado - Sem fundos', 'Cancelado pelo cliente'))

);

create table carequinha

