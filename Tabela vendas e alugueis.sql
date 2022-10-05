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

drop table vendedores;

-- create table
create table vendedores (
	id int primary key auto_increment,
    nome varchar(200)
);

drop table vendas;

create table vendas (
  id int(11) not null auto_increment,
  nome varchar(200) NOT NULL,
  vendedor_id int(11),
  primary key (id),
  foreign key (vendedor_id) references vendedores(id)
);

-- insert vendedores
insert into vendedores (nome) values ('André');
insert into vendedores (nome) values ('Pedro');
insert into vendedores (nome) values ('João');

-- insert vendas
insert into vendas (nome, vendedor_id) values ('Venda 1', 1);
insert into vendas (nome, vendedor_id) values ('Venda 2', 1);
insert into vendas (nome, vendedor_id) values ('Venda 3', 1);
insert into vendas (nome, vendedor_id) values ('Venda 4', 2);
insert into vendas (nome, vendedor_id) values ('Venda 5', 2);
insert into vendas (nome, vendedor_id) values ('Venda 6', 3);

-- desejo ordenar os vendedores começando pelo com o maior número de vendas
select vendedores.nome, count(vendas.id) as QuantidadeDeVendas from vendas 
inner join vendedores on vendas.vendedor_id = vendedores.id
group by vendedores.nome
order by count(vendas.id) desc;
   



