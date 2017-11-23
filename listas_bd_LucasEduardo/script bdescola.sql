
create view estudantes_portugues as select e.nome,e.matricula
from estudante e
where cod_turma = 2;

select * from estudantes_portugues;

