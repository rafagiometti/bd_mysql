DROP DATABASE IF EXISTS db_generation_game_online;
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Exclui as tabelas existentes, primeiro removendo as chaves estrangeiras
DROP TABLE IF EXISTS tb_produtos;
DROP TABLE IF EXISTS tb_usuarios;
DROP TABLE IF EXISTS tb_categorias;


CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo) VALUES ("Corrida");
INSERT INTO tb_categorias (tipo) VALUES ("Puzzle");
INSERT INTO tb_categorias (tipo) VALUES ("Exploração");
INSERT INTO tb_categorias (tipo) VALUES ("FPS");
INSERT INTO tb_categorias (tipo) VALUES ("MMORPG");
INSERT INTO tb_categorias (tipo) VALUES ("Simulação Aérea");
INSERT INTO tb_categorias (tipo) VALUES ("Casual");

SELECT * FROM tb_categorias;

CREATE TABLE tb_usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(255) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  foto VARCHAR(255),
  data_nascimento DATE NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("admin@games.com", "Alex GameMaster", "senha#123", "https://i.imgur.com/A1.jpg", "1995-10-15");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("lara@games.com", "Lara Ferreira", "game@456", "https://i.imgur.com/B2.jpg", "1997-06-03");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("tiago@games.com", "Tiago Martins", "pass789&", "https://i.imgur.com/C3.jpg", "1998-03-22");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("aline@games.com", "Aline Souza", "secure!pass", "https://i.imgur.com/D4.jpg", "1999-08-30");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("joao@games.com", "João Pedro Lemos", "senhaSegura", "https://i.imgur.com/E5.jpg", "2000-02-12");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("renata@games.com", "Renata Campos", "gamer@renata", "https://i.imgur.com/F6.jpg", "1996-11-11");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("mario@games.com", "Mario Braga", "marioGame77", "https://i.imgur.com/G7.jpg", "1994-07-27");

SELECT * FROM tb_usuarios;

CREATE TABLE tb_produtos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(500),
  console VARCHAR(255) NOT NULL,
  quantidade INT,
  preco DECIMAL(19,2) NOT NULL,
  foto VARCHAR(255),
  categoria_id BIGINT,
  usuario_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (usuario_id) REFERENCES tb_usuarios (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("The Last Frontier", "Um jogo de exploração espacial com narrativa envolvente e ambientes realistas. Ótimo para fãs de ficção científica.", "PS5", 40, 550.00, "https://i.imgur.com/H1.jpg", 3, 2);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Urban Racer X", "Corridas em alta velocidade pelas ruas da cidade com gráficos de tirar o fôlego.", "PS5", 25, 430.00, "https://i.imgur.com/I2.jpg", 1, 3);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Dark Ops", "FPS tático com jogabilidade realista e mapas urbanos detalhados.", "PS5", 30, 750.00, "https://i.imgur.com/J3.jpg", 4, 4);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Chrono Blades", "MMORPG com batalhas épicas e personalização completa de personagens.", "PS5", 80, 680.00, "https://i.imgur.com/K4.jpg", 5, 5);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Space Warriors", "Missões de combate no espaço com navegação livre e coop online.", "XBOX", 90, 950.00, "https://i.imgur.com/L5.jpg", 4, 6);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("AeroFlight 2024", "Simulador de voo com condições meteorológicas reais e dezenas de aeronaves.", "XBOX", 20, 290.00, "https://i.imgur.com/M6.jpg", 6, 7);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_usuarios
ON tb_usuarios.id = tb_produtos.usuario_id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
INNER JOIN tb_usuarios ON tb_usuarios.id = tb_produtos.usuario_id;
