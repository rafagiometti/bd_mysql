
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Remédios para diversas condições de saúde'),
('Higiene Pessoal', 'Produtos de higiene e cuidados pessoais'),
('Cosméticos', 'Produtos de beleza para cuidados e estética'),
('Vitaminas e Suplementos', 'Suplementos alimentares e vitamínicos'),
('Produtos Infantis', 'Produtos para cuidados com bebês e crianças');

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, id_categoria) VALUES
('Dipirona Sódica', 'Analgesia e redução de febre', 10.50, 200, 1),
('Desodorante Roll-on', 'Desodorante para pele sensível', 15.00, 300, 2),
('Máscara de Cílios', 'Máscara para alongamento e volume dos cílios', 35.00, 150, 3),
('Suplemento de Magnésio', 'Melhora a função muscular e nervosa', 40.00, 100, 4),
('Fraldas Descartáveis', 'Fraldas para bebês de 6 a 12kg', 30.00, 500, 5),
('Gel para Artrite', 'Alívio das dores articulares', 55.00, 75, 1),
('Creme para o Rosto', 'Hidratação facial profunda', 45.00, 80, 3),
('Óleo de Peixe', 'Suplemento de ômega 3', 60.00, 90, 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.id_produto, p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.id_produto, p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
