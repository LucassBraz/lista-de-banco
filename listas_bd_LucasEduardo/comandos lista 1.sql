
                           


alter table cliente add email varchar(30) after endereco;

select * from cliente;




select numero_agencia, endereco, cod_banco from agencia
where cod_banco='1'
order by numero_agencia;



select c.numero_conta, c.num_agencia, cl.nome
from conta as c inner join cliente as cl
on (c.num_agencia)
order by cl.nome;




select * from cliente 
where sexo= 'm'
order by nome;





select ag.numero_agencia, ag.endereco, b.codigo, b.nome 
from agencia as ag inner join banco as b
on (ag.cod_banco = b.codigo)
where numero_agencia ='0562';


select * from agencia;



delete from conta
where numero_conta = '86340.2';

select * from agencia;


 

update agencia set numero_agencia = 6342 where cod_banco = 4;


 

update cliente set email= 'caetanolima@gmail.com' where cpf = '666.777.888-99';

select * from agencia;




select numero_conta,saldo, floor(saldo * 10/100 + 3879) as 'Valor total com aumento de 10%' from conta
where tipo_conta = '1';



               
               
               
               
               
               
