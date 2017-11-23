create database if not exists pratica06;
use pratica06;

CREATE TABLE IF NOT EXISTS exemplo1(
C1 integer not null,
C2 integer,
C3 integer,
C4 integer
);

select * from exemplo1;

# tempo para execução foi de  0.040 sec 
select * from exemplo1 where c3 = 4801 and c2 = 4899 and c4= 4750;

#codigo para criar indeces 
create index idx_c2 on exemplo1(c2);

create index idx_c3 on exemplo1(c3);

create index idx_c4 on exemplo1(c4);

analyze table exemplo1;

# tempo de execução foi 0.000sec
select * from exemplo1 where c3 = 4801 and c2 = 4899 and c4= 4750;

# tempo de execução foi 0.005 sec.
SELECT * FROM exemplo1 WHERE c1 = 5020;

# tempo de execução foi 0.005 sec.
SELECT * FROM exemplo1 WHERE c2 = 5020;

