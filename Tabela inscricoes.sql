
drop database bd4;
create database bd4;

use bd4;

create table inscricoes (
id int(11) not null auto_increment,
nome varchar(200) not null,
cidade varchar(200) not null,
primary key(id)
);

insert into inscricoes (nome, cidade) values ('André', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Carlo', 'São Paulo');
insert into inscricoes (nome, cidade) values ('David', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Wando', 'Recife');
insert into inscricoes (nome, cidade) values ('Paula', 'Belo Horizonte');
insert into inscricoes (nome, cidade) values ('Graciela', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Renata', 'Vitória');
insert into inscricoes (nome, cidade) values ('Leticia', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Milena', 'São Paulo');
insert into inscricoes (nome, cidade) values ('Patrícia', 'São Paulo');

select cidade, count(id)
from inscricoes
group by cidade;

select cidade, count(id)
from inscricoes
group by cidade
order by count(id) desc;

