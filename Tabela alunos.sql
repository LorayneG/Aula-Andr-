create database bd3;

use bd3;

create table alunos (
    id int(11) primary key auto_increment,
    nome varchar(255) not null,
    nascimento date 
    );

drop database bd3;

create database bd3;

use bd3;

create table alunos (
    id int(11) primary key auto_increment,
    nome varchar(255) not null,
    idade varchar(99) not null,
    nascimento date default null
    );
    
    
-- insert
insert into alunos (nome, idade, nascimento) values ('léo', '11', '2011-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', '10', '2010-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', '14', '2008-05-12');
insert into alunos (nome, idade, nascimento) values ('nando', null, null);
insert into alunos (nome, idade, nascimento) values ('gui', '15', '2007-07-5');


-- média aritmética do conjunto de valores
select avg(idade)
from alunos;


--
select min(idade)
from alunos;


-- selecionar todos os registros
select * from alunos;

-- somente nome 
select nome, nascimento from alunos;

-- com filtro
select nascimento from alunos
where nome = 'fred'; 

-- com filtro
select nascimento from alunos
where nome = 'nando'
AND
nascimento is not null;

-- filtrar os resultados que tenha o campo nascimento nulo
select * from alunos
where nascimento is null;

-- selecione a lista de todos os nomes sem repeticao
select distinct nome, nascimento
from alunos; 

-- lista de presenca - ordenada em ordem alfabetica
select * from alunos
order by nome asc;

select * from alunos
order by nascimento desc;

-- listar somente dois alunos
select * from alunos
limit 2;

-- selecionar dois alunos para receber uma bolsa
select * from alunos
order by nascimento is not null
limit 2; 




