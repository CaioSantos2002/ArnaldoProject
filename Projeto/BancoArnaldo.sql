drop database if exists arnaldo;
create database arnaldo;
use arnaldo;

create table Produtos(
    cod integer primary key auto_increment not null,
    nome varchar(40) not null,
    descricao varchar(200) not null,
    valor decimal(6,2) not null,
    quantidade integer not null
);

create table Compras(
    cod integer auto_increment not null,
    data Date not null,
    codProduto integer not null,
    custo decimal(6,2) not null,
    quantidade integer not null,
    primary key(cod)
);

create table Vendas(
    cod integer auto_increment not null,
    codProduto integer not null,
    preco decimal(6,2) not null,
    quantidade integer not null,
    primary key(cod)
    constraint fk_cod_vendas 
    foreign key (codProduto)
    references Mercadorias(cod)
);

insert into Produtos
values
    (default, "Camiseta", "Camiseta Preta ", 15, 300),
    (default, "Camiseta", "Camiseta Branca", 10, 250),
    (default, "Mochila", "Mochila Ben 10", 60, 500),
    (default, "Chinelo", "Chinelo Havaianas", 15, 150),
    (default, "Bermuda", "Bermuda Quiksilver", 30, 300),
    (default, "Relogio", "Relogio Cassio", 25, 120),
    (default, "Caneta", "Caneta Bic", 0.25, 800),
    (default, "Vassoura", "Vassoura de pobre", 5, 260),
    (default, "Detergente", "Detergente Ypê", 8, 60);

    insert into Compras
values
    (default,NOW(),1, 150 ,10);
insert into Compras
values
    (default,NOW(),2, 100 ,10);
insert into Compras
values
    (default,NOW(),3, 120,2);
insert into Compras
values
    (default,NOW(),7, 25,100);
insert into Compras
values
    (default,NOW(),8, 100,20);
insert into Compras
values
    (default,NOW(),6, 125,5);
    insert into Compras
values
    (default,NOW(),5, 300,10);

    insert into Vendas
values
    (default,1, 150 ,5);
insert into Vendas
values
    (default,2, 160 ,8);
insert into Vendas
values
    (default,3, 100,1);
insert into Vendas
values
    (default,7, 15,30);
insert into Vendas
values
    (default,8, 150,10);
insert into Vendas
values
    (default,6, 100,2);
    insert into Vendas
values
    (default,5, 420,7);

    Select * from Produtos;
Select * , valor * quantidade as subtotal
from Produtos;

Select * from Compras;
Select * , custo * quantidade as subtotal
from Compras;

Select * from Vendas;
Select * , preco * quantidade as subtotal
from Vendas;
