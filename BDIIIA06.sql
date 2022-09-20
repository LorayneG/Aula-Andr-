-- BDIIIA06

-- INNER JOIN

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

create table categorias (
	id int(11) primary key auto_increment,
    nome varchar(200) not null
);

create table produtos (
  id int(11) primary key auto_increment,
  nome varchar(200) not null,
  valor float,
  categoria_id int(11),
	foreign key (categoria_id) references categorias(id)
);

-- insert categorias 
insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');

-- insert produtos 
insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);

-- selecionar todos os dados da tabela categorias
select * from categorias;

-- selecionar todos os dados da tabela produtos
select * from produtos;

-- inner join das duas tabelas
SELECT categorias.nome, produtos.nome, produtos.valor
FROM produtos
INNER JOIN categorias ON produtos.categoria_id = categorias.id;


select C.nome as 'categoria_nome', 
       P.nome as 'produto_nome', 
       P.valor
from produtos P 
inner join categorias C on P.categoria_id = C.id;


create table vendas (
	id int(11) primary key auto_increment,
    nota_fiscal char(8),
	data date,
    produto_id int(11),
	foreign key (produto_id) references produtos(id)
);

drop table vendas;

create table vendas (
	id int(11) primary key auto_increment,
    nota_fiscal char(8),
	data date,
    produto_id int(11),
	foreign key (produto_id) references produtos(id)
);

-- insert vendas 
insert into vendas (nota_fiscal, data, produto_id) values ('0001', '2022-09-13', 1);
insert into vendas (nota_fiscal, data, produto_id) values ('0001', '2022-09-13', 2);
insert into vendas (nota_fiscal, data, produto_id) values ('0002', '2022-09-12', 3);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 1);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 5);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 6);
insert into vendas (nota_fiscal, data, produto_id) values ('0004', '2022-09-13', 4);

-- Exercícios
-- inner join das três tabelas
-- proposição: fazer uma consulta que resulte o nome da categoria, o nome do produto,
-- o número da nota fiscal, a data e o valor do produto.

  SELECT  c.nome as 'categoria_nome',
          p.nome as 'produto_nome', 
          v.nota_fiscal as 'venda_nota_fiscal', 
          v.data as 'venda_data', 
          p.valor
  FROM produtos p
  inner join categorias c on p.categoria_id = c.id
  inner join vendas v on v.produto_id = p.id;

-- 1) Retorne o nome da categoria onde esta cadastrado o produto 'mouse'.
    select nome from produtos
    where nome = 'mouse';
    
-- 2) Retorne todos os produtos cadastrados na categoria 'escritorio'
    select * from categorias
    where nome = 'escritorio';
   
-- 3) Retorne todas as categorias que tenham produtos com valor maior ou igual a 80


-- 4) Retorne uma listagem em ordem alfabética contendo a categoria, nome do produto e valor
-- em ordem alfabética de categoria e depois produto






