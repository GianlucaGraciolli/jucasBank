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

/*5.Agendar uma transferência da conta do Patinhas que possui saldo de 250000.00 para a conta de 650000.50. Agendar para 25DEZ23, valor 100000.00 */




		
		
		