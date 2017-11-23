#VIEW

create view estudantes_portugues as select e.nome,e.matricula,c.cod_disc
from estudante e inner join cursa c
on e.matricula = c.matricula_est
where cod_disc = 2;

select * from estudantes_portugues;

#CRIAÇAO DA TABELA LOG

create table log_funcionario (
cpf_func varchar(15),
comando varchar(15),
usuario varchar(20),
data_hora timestamp);

#TRIGGER 1

DELIMITER $$
USE `escola`$$
CREATE DEFINER = CURRENT_USER TRIGGER `escola`.`log_funcionario_INSERT` BEFORE INSERT ON funcionario FOR EACH ROW
BEGIN
INSERT INTO log_funcionario
SET comando = 'INSERT',
cpf_func = NEW.cpf,
usuario = CURRENT_USER,
data_hora= CURRENT_TIMESTAMP;
END$$
DELIMITER ;

INSERT INTO funcionario (`cpf`, `cargo`, `nome`, `endereco`, `telefone`, `data_nasc`, `data_admin`, `salario`) 
VALUES 
('11155544', 'Secretaria', 'Carla Andrade', 'Aguas Claras ', '55559999', '1970-06-07', '2017-12-12', '4000');

select * from log_funcionario;

#TRIGGER 2

DELIMITER $$
USE `escola`$$
CREATE DEFINER = CURRENT_USER TRIGGER `escola`.`tg_funcionario_UPDATE` AFTER UPDATE ON funcionario FOR EACH ROW
BEGIN
INSERT INTO log_funcionario
SET comando = 'UPDATE',
cpf_func = OLD.cpf,
usuario = CURRENT_USER,
data_hora= CURRENT_TIMESTAMP;
END$$
DELIMITER ;

UPDATE FUNCIONARIO
SET nome = 'Pedro'
WHERE cpf = '2224447771';

SELECT * FROM LOG_FUNCIONARIO;