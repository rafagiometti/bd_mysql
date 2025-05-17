CREATE DATABASE db_exercicio02;
USE db_exercicio02;

CREATE TABLE tb_produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR (500) NOT NULL,
    preco DECIMAL(10,2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (id, nome, descricao, preco, estoque, categoria) VALUES
(1, 'Smartphone Samsung  S24', 'Smartphone Samsung com 128GB', 1399.90, 30, 'Eletrónicos'),
(2, 'Notebook DELL', 'Notebook com 8GB RAM e 256GB SSD', 2899.00, 15, 'Informática'),
(3, 'Cadeira Gamer', 'Cadeira ergonómica com ajuste de altura', 799.99, 10, 'Mobiliário'),
(4, 'Teclado Mecânico', 'Teclado com retroiluminação RGB', 320.00, 50, 'Acessórios'),
(5, 'Monitor Samsung 24"', 'Monitor Full HD com HDMI e VGA', 679.90, 20, 'Informática'),
(6, 'Fone dBluetooth', 'Fone com cancelamento de ruído', 199.99, 40, 'Áudio'),
(7, 'Mouse sem frio', 'Mouse ergonómico com 3 botões', 89.90, 60, 'Acessórios'),
(8, 'Impressora Brother', 'Impressora multifunções colorida', 449.00, 25, 'Periféricos');

SELECT * FROM tb_produtos;

-- Produtos com valor maior que 500
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 219.90
WHERE id = 6;