/*1.Inserir de forma implícita 8 correntistas

Dados conforme abaixo, demais dados, livre.
      nome:Donald, cidade:Santos, estado:SP
      nome:Margarida, cidade:São Vicente, estado:SP
      nome:Patinhas, cidade:Santos, estado:SP
      nome:Huguinho, cidade:Cubatão, estado:SP
      nome:Luizinho, cidade:Praia Grande, estado:SP
      nome:Zezinho, cidade:São João del Rei, estado:MG
      nome:Mickey, cidade:Rio de Janeiro, estado:RJ
      nome:Minie, cidade:São Paulo, estado:SP */

insert into cliente
values  ('Donald', '62337852008', '13983457823', 'donald@gmail.com', 'Rua Donaldo', '39', null, 'Santos', 'São Paulo', 'Masculino', '06/12/2001', '2300', '62337852008', '490576'),
		('Margarida', '62337852096', '13983344523', 'Margarida@yahoo.com', 'Rua Miragem', '55', null, 'São Vicente', 'São Paulo', 'Feminino', '23/10/1998', '1900', '62337852096', '054945'),
		('Patinhas', '01679487256', '13997411724', 'Patinhasmoney@dinheiro.com', 'Avenida ricon', '99', null, 'Santos', 'São Paulo', 'Masculino', '10/03/1967', '1000000', '01679487256', '123456'),
		('Huguinho', '30485027852', '13997548719', 'Huguin10@hotmail.com', 'Rua jornalista donato', '222', null, 'Cubatão', 'São Paulo', 'Masculino', '10/03/1987', '14500', '30485027852', '345789'),
		('Luizinho', '51536426156', '13977456781', 'Luizinhogod@hotmail.com', 'Rua dimalta', '10', null, 'Praia Grande', 'São Paulo', 'Masculino', '20/04/1990', '9000.80', '51536426156', '999999'),
		('Zezinho', '60432861572', '32991674961', 'Zezindomato@negocios.com', 'Rua sem asfalto', '69', null, 'São João del Rei', 'Minas Gerais', 'Masculino', '05/09/1994', '20000', '60432861572', '123456'),
		('Mickey', '58247187256', '213456712312', 'MickeyDisney@apresenta.com', 'praça mauri dodoi', '123', null, 'Rio de Janeiro', 'Rio de Janeiro', 'Masculino', '09/09/1928', '50000', '58247187256', '555555'),
		('Minie', '27136351790', '1134587623', 'MinieLindinha@pomposa.com', 'avenida dios senic', '2020', null, 'São Paulo', 'São Paulo', 'Feminino', '19/06/1957', '50000', '27136351790', '121212');


/*2. Inserir de forma explícita uma conta para cada correntista
Dados conforme abaixo, demais dados livres. Atenção para colocar
datas de aberturas anteriores a data de hoje.

      nome:Donald, statusConta:ativa,saldo:1000.00
      nome:Margarida, statusConta:bloqueada,saldo:450.50
      nome:Patinhas, statusConta:ativa,saldo:650000.50
      nome:Huguinho, statusConta:ativa,saldo:500.00
      nome:Luizinho, statusConta:ativa,saldo:3500.00
      nome:Zezinho, statusConta:bloqueada,saldo:700.25
      nome:Mickey, statusConta:ativa,saldo:9500.25
      nome:Minie, statusConta:ativa,saldo:12500.50 */

insert into conta (idcliente, saldo, limite, tipoconta, statusconta, aberturaconta)
values  (6, '1000', '805', 'Corrente', 'Ativa', '12/12/2022'),
		(7, '450.50','665', 'Corrente', 'Bloqueada', '24/10/2012'),
		(8, '650000.50', '350000', 'Corrente Black', 'Ativa', '20/03/1995'),
		(9, '500', '5075', 'Corrente', 'Ativa', '04/07/2018'),
		(10, '3500', '3150.28', 'Corrente', 'Ativa', '06/12/2017'),
		(11, '700.25', '7000', 'Corrente', 'Bloqueada', '04/05/2018'),
		(12, '9500.25', '17.500', 'Corrente', 'Ativa', '19/07/2010'),
		(13, '12500.50', '17.500', 'Corrente', 'Ativa', '05/12/1996');


/*3.Inserir mais duas contas ao Patinhas
Dados conforme abaixo, demais dados livres. Atenção para colocar
datas de aberturas anteriores a data de hoje.

      nome:Patinhas, statusConta:ativa,saldo:1000000.50
      nome:Patinhas, statusConta:ativa,saldo:250000.00*/

insert into conta
values  (8, '1000000.50','35000','Corrente Black', 'Ativa', '05/03/2014', null),
		(8, '250000', '35000', 'Poupança', 'Ativa', '06/03/2014', null);		


/*4.Inserir os Tipos de Operacao
      DEBITO
      SAQUE
      TRANSFERÊNCIA*/

insert into tipoOperacao
values  ('DEBITO'),
		('SAQUE'),
		('TRANSFERÊNCIA');

select * from tipoOperacao
select * from Cliente

/*5.Agendar uma transferência da conta do Patinhas que possui saldo de 250000.00 para a conta de 650000.50. Agendar para 25DEZ23, valor 100000.00 */

insert into Agendamento
values (3,17,'100000','25/12/2023',10,'Agendado')

select * from Agendamento

/*6.Atualizar todo o endereço da Minie (logradouro, numero e complemento), mas mantendo a cidade.*/

update cliente
	set logradouro = 'Rua dos anjos',
		numerologradouro = '57'
	where idcliente = 13

/*7.Atualizar o celular do Mickey*/

update cliente
	set celular = '21997411748'
	where idCliente = 12

/*8.Inserir 2 saques conforme dados abaixo:
      Conta do Mickey, valor: 100.00
      Conta do Huguinho, valor: 250.00*/

select * from tipoOperacao
select * from Conta
select * from cliente

insert into transacao
values  (2,14,'100','19/04/2023',14),
		(2,11,'250','18/04/23',11)

/*9.Inserir 2 depósitos conforme dados abaixo:
      Conta da Minie, valor: 1100.00
      Conta do Donald, valor: 450.00*/

insert into transacao
values  (1,15,'1100','13/04/2023',15),
		(1,8,'450','15/04/2023',8)

select * from transacao

/*10.Inserir 2 transferências conforme dados abaixo:
      Conta da Zezinho para conta da Minie, valor: 350.50
      Conta do Donald para conta da Huguinho, valor: 50.00*/

insert into transacao
values  (3,13,'350','11/03/2023',15),
		(3,8,'50','10/03/2023',11)

/*11.Buscar nome, contato, cidade e estado de todos os correntistas com contas bloqueadas, em ordem alfabética.*/

select nome, celular, cidade, estado from cliente
where idcliente = 11 or idcliente = 7
order by nome asc

/*12.Buscar quantos correntistas o banco possui por cidade.*/

select cidade, count(nome) as 'Quantidade de Correntistas' from cliente
group by cidade

/*13.Buscar todas as movimentações que ocorreram em determinado mês/ano. O mês e o ano ficam a seu critério*/

select * from transacao
where datahora > '01/04/2023' and datahora <'30/04/2023'

/*14.Buscar o nome do correntista e a data de criação da conta, exibindo os correntistas mais antigos primeiro. Se você não possui este atributo (dataCriacaoConta), adicione-o.*/

select Cliente.nome as 'nomeCliente', Conta.aberturaconta from Cliente
inner join Conta
on Cliente.idCliente = Conta.idcliente
order by aberturaconta asc

/*15.Buscar todos os correntistas que possuem "z" no nome.*/

select * from Cliente where nome like '%Z%'

/*16.Buscar o total de contas ativas e bloqueadas no JucasBank.*/

select statusconta, count(statusconta) as 'Quantidade de contas' from Conta
group by statusconta

/*17.Buscar o total de contas ativas e bloqueadas no JucasBank, considerando apenas as contas que possuem mais de R$ 5.000,00*/

select statusconta, count(statusconta) as 'Quantidade de contas' from Conta
where saldo > 5000.00
group by statusconta

/*18.Buscar todas as cidades onde o JucasBank possui correntista, sem que as cidades se repitam, e em ordem alfabética.*/

select cidade, count(cidade) as 'Qtd de Clientes' from Cliente 
group by cidade
order by cidade asc

/*19.Buscar a média de valores em contas de correntistas do estado de são paulo apenas.*/
select avg(conta.saldo) as 'Média de Saldo de Contas', Cliente.estado from Cliente
inner join Conta
on cliente.idCliente = conta.idcliente
where Cliente.estado = 'São Paulo'
group by Cliente.estado

select * from conta
select * from Cliente

/*20.Buscar o maior valor existente em conta no JucasBank.*/

select max (saldo) 'Conta com mais dinheiro em saldo' from Conta

/*21.Buscar o id da conta e o saldo da conta de todas as contas ativas e que possuam menos de R$1.000,00 mostrando as de menor valor primeiro.*/

select idconta, saldo from Conta
where statusconta = 'ativa' and saldo < 1000.00
order by saldo asc

/*22.Buscar todos os tipos de operações possíveis em ordem alfabética.*/

select nomeOperacao from tipoOperacao
order by nomeOperacao asc

/*23.Buscar todas as contas e respectivos saldos do JucasBank, do maior saldo para o menor.*/

select idconta, saldo from conta
order by saldo desc

/*24.Buscar a soma de valores que existem em todas as contas que estão no estado de SP.*/

select sum(conta.saldo) as 'Média de Saldo de Contas', Cliente.estado from Cliente
inner join Conta
on cliente.idCliente = conta.idcliente
where Cliente.estado = 'São Paulo'
group by Cliente.estado

/*25.Buscar todos os depósitos que ocorreram na conta do Donald.*/

select valor, datahora from transacao
where idtipoOperacao = 1 and idContaDestino = 8

	





	





		
		
		