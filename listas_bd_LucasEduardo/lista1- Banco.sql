create database Banco;
use banco;


create table banco (            
codigo int not null,             
nome varchar(45),
primary key (codigo)				
)default charset=utf8;



create table agencia (
numero_agencia int not null,
endereco varchar(50), 
primary key(numero_agencia)
)default charset=utf8; 


alter table agencia add column cod_banco int;    
alter table agencia
add foreign key (cod_banco)
references banco(codigo);


create table cliente (
cpf varchar(18) not null, 
nome varchar(44), 
sexo enum('f', 'm'),
endereco varchar(50),
primary key (cpf)
)default charset=utf8;


create table conta (
Numero_conta float not null,
saldo double(10,2),
tipo_conta int,
primary key(numero_conta)
)default charset=utf8;


alter table conta add column num_agencia varchar(10);
alter table conta
add foreign key (num_agencia)
references agencia(numero_agencia);



create table historico (
data_inicio date
)default charset=utf8;

alter table historico add column cpf varchar(20);
alter table historico
add foreign key (cpf)
references cliente(cliente_cpf);


alter table historico add column num_conta float;
alter table historico
add foreign key (num_conta)
references conta(numero_conta);



create table telefone_cliente(
telefone_cli char(14) not null
)default charset=utf8; 

alter table telefone_cliente add column cpf_cli varchar(20);
alter table telefone_cliente
add foreign key(cpf_cli)
references cliente(cliente_cpf);


insert into banco
(codigo,nome)
values
('1','Banco do Brasil'),  
('4','CEF'); 


insert into agencia
(numero_agencia, endereco, cod_banco) 
values
('0562','Rua Joaquim Teixeira Alves, 1555', '4'),
('3153','Av Marcelino Pires, 1960','1');  


insert into cliente 
(cpf, nome, sexo, endereco)
values
('111.222.333-44','Jennifer B Souza','F','Rua Cuibá, 1050'),
('666.777.888-99','Caetano K Lima','M','Rua Ivinhema, 879'), 
('555.444.777-33','Silvia Macedo','F','Rua Estados Unidos, 735');


insert into conta
(numero_conta, saldo, tipo_conta, num_agencia)
values
('86340.2','763.05','2','3153'),   
('23584.7','3879.12','1','0562');


insert into historico
(cpf, num_conta, data_inicio)
values
('111.222.333-44','23584.7','1997-12-17'),    
('666.777.888-99','23584.7','1997-12-17-'),
('555.444.777-33','86340.2','2010-11-29');    


insert into telefone_cliente
(telefone_cli, cpf_cli)
values
('(67) 3422-7788','111.222.333-44'),
('(67) 3423-9900','666.777.888-99'), 
('(67) 8121-8833','666.777.888-99');





