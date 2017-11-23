create database if not exists lista4;
use lista4;

create table dados_multimidia (
código integer primary key,
nome varchar(30),
tipo varchar (20),
dados longblob
);

show variables like 'secure_file_priv';

INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('1', 'avioesdoforro','jpg', load_file("C:\wamp64\tmp\avioes432.jpg"));
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('2', 'xandeavioes','jpg', load_file("C:\wamp64\tmp\avioes112.jpg"));
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('3', 'zédosteclados','jpg', load_file("C:\wamp64\tmp\zedowload2.jpg"));	
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('4', 'washington','jpg', load_file("C:\wamp64\tmp\whaxstinz12.jpg"));

select dados INTO outfile "C:\\wamp64\\tmp\\avioes332.jpg" FROM dados_multimidia WHERE código = 1;