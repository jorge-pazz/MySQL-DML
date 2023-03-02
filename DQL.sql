SELECT * FROM tipos_produtos;
INSERT INTO tipos_produtos (descricao) VALUES ('Eletronico');

INSERT INTO produtos (descricao,preco,id_tipo_produtos) VALUES ('Notebook HP', 2200, 1);
SELECT p.descricao AS Descrição, p.preco AS Preço, p.id_tipo_produtos AS Tipo_Produto FROM produtos AS p;

INSERT INTO tipos_produtos (descricao) VALUES ('Moveis');
select * FROM tipos_produtos;

INSERT INTO produtos (descricao, preco, id_tipo_produtos) VALUES ('Cadeira TOP', 80 , 3); 

DELETE FROM tipos_produtos WHERE id = 2;
