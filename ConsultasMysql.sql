USE consultasmysql;

/*INSERT*/

INSERT INTO tipos_produtos (descricao) VALUES ('Eletronico');
INSERT INTO produtos (descricao,preco,id_tipo_produtos) VALUES ('Notebook HP', 2200, 1);

/*UPDATE*/
UPDATE tipos_produtos SET descricao = 'Eletronicos' WHERE id = 1;
UPDATE produtos SET descricao = 'Notebook HP I9', preco = 2500 WHERE id = 5;

-- DELETE
DELETE FROM produtos WHERE id = 8;
DELETE FROM tipos_produtos WHERE id = 3;




