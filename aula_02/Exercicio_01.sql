CREATE DATABASE db_exercicio01;

USE db_exercicio01;

-- Criando a tabela de colaboradore
CREATE TABLE tb_colaboradores(
 nome VARCHAR(150) NOT NULL,
 id INT PRIMARY KEY,
 cargo VARCHAR(50),
 salario DECIMAL(10,2),
 data_admissao DATE
 );
 
 -- Inserindo registros
INSERT INTO tb_colaboradores (id, nome, cargo, salario, data_admissao) VALUES
(1, 'Rafaela Souza', 'Gerente de projetos', 15000, '2023-09-02'),
(2, 'Silvia Silva', 'Desenvolvedora Jr', 4000, '2024-07-08'),
(3, 'Ana Carolina', 'Diretora de TI', 20000, '2021-05-03'),
(4, 'Pedro Manoel', 'Analista de marketing digital', 4500, '2025-05-02'),
(5, 'Renata Reis', 'Assistente administrativo', 3000, '2024-12-16');

-- Mostrando todos os colabores com salário maior que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Mostrando todos os colabores com salário menor que 2000
SELECT *FROM tb_colaboradores WHERE salario < 2000;

-- Atualizando registro
UPDATE tb_colaboradores
SET salario = 1800.00
WHERE id = 5;
