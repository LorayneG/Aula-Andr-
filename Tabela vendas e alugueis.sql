create database bd4;

use bd4;

create table vendas (
  id int(11) not null auto_increment,
  nome varchar(200) not null,
  cidade varchar(200) not null,
  primary key (id)
); 


create table alugueis (
  id int(11) not null auto_increment,
  nome varchar(200) not null,
  cidade varchar(200) not null,
  primary key (id)
);

-- insert vendas
insert into vendas (nome, cidade) values ('venda 1', 'Rio de Janeiro');
insert into vendas (nome, cidade) values ('venda 2', 'São Paulo');
insert into vendas (nome, cidade) values ('venda 3', 'Rio de Janeiro');

-- insert alugueis
insert into alugueis (nome, cidade) values ('aluguel 1', 'São Paulo');
insert into alugueis (nome, cidade) values ('aluguel 2', 'Belo Horizonte');
insert into alugueis (nome, cidade) values ('aluguel 3', 'Rio de Janeiro');

-- UNION vem com valores não duplicados (tipo distinct)
select cidade from vendas
union
select cidade from alugueis;

-- UNION com  where, etc.
select cidade from vendas
where id >= 2
union
select cidade from alugueis
where id >= 2
order by cidade asc;



