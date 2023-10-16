create database gulliverdatabase;

use gulliverdatabase;

-- criacao da tabela
CREATE TABLE Restaurante (
	Id int primary KEY auto_increment ,
    Titulo varchar(255) NOT NULL,
    Image varchar(255) NULL,
    Avaliacao decimal(10,1) NULL,
	Endereco varchar(255) NULL,
    Cep varchar(10) NULL,
    Cidade varchar(255) NULL,
    Estado varchar(100) NULL
);

-- inserir dados
INSERT INTO Restaurante (Titulo, Image, Avaliacao, Endereco, Cep, Cidade, Estado) values 
('Trattoria do Vini', './img/trattoria-vini-1.png', 4.5, 'R. Amadeu Gamberini, 283 - São Miguel Paulista', 
'08010-110', 'São Paulo', 'SP' );

 insert INTO Restaurante (Titulo, Image, Avaliacao, Endereco, Cep, Cidade, Estado)
 values ('Circolo Cucina','./img/restaurante-circolo.png',4.5, 'AV. iPIRANGA, 344 - Centro Histórico de São Paulo', '01046-926','São Paulo','SP');

insert into Restaurante (Titulo, Image, Avaliacao, Endereco, Cep, Cidade, Estado)
values ('Terraço Itália','./img/restaurante-italia.png',4.5,'AV. iPIRANGA, 344 - 41° andar - república','01046-010','São Paulo','SP')
;

-- consultar base
select Id, Titulo, Image, Avaliacao, Endereco, Cep, Cidade, Estado from Restaurante;

