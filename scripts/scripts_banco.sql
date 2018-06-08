CREATE SCHEMA liga_dos_furados;
USE liga_dos_furados;
CREATE TABLE tbJogadores(
	id BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150) NOT NULL,
	saldoGols INT DEFAULT 0,
	login VARCHAR(100) NOT NULL,
	senha VARCHAR(100) NOT NULL,
	idTime BIGINT(10) NOT NULL,
	tipoUsuario VARCHAR(30) NOT NULL
);

CREATE TABLE tbTimes(
	id BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150) NOT NULL,
	saldoGols INT DEFAULT 0
);


CREATE TABLE tbPartidas(
	id BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
	idTimeCasa BIGINT(10) NOT NULL,
	idTimeAdversario BIGINT(10) NOT NULL,
	golsCasa INT DEFAULT 0,
	golsAdversario INT DEFAULT 0,
	vencedor BIGINT(10) NULL
);

INSERT INTO tbJogadores(nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Administrador', 0, 'admin', 'admin', 0 , 'Juiz');

INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Espanha Real Madrid', 23);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Itália Milan', 90);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Liverpool', 67);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Alemanha Bayern de Munique', 60);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Espanha Barcelona', 58);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Países Baixos Ajax', 4);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Itália Internazionale', 68);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Manchester United', 97);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Portugal Benfica', 20);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Itália Juventus', 43);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Nottingham Forest', 99);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Portugal Porto', 55);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Escócia Celtic', 63);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Alemanha Hamburgo', 88);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('França Marseille', 31);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Roménia Steaua București', 73);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Chelsea', 10);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Aston Villa', 21);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Alemanha Borussia Dortmund', 83);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Iugoslávia Estrela Vermelha', 19);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Países Baixos Feyenoord', 52);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Países Baixos PSV', 5);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Espanha Atlético de Madrid', 31);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('França Stade Reims', 73);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Espanha Valencia', 80);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Arsenal', 74);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Alemanha Bayer Leverkusen', 1);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Alemanha Borussia Mönchengladbach', 74);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Bélgica Club Brugge', 78);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Alemanha Eintracht Frankfurt', 39);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Itália Fiorentina', 58);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Inglaterra Leeds United', 78);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Suécia Malmö', 36);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('França Monaco', 52);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Grécia Panathinaikos', 49);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Iugoslávia Partizan', 44);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Itália Roma', 68);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('França Saint-Étienne', 69);
INSERT INTO tbTimes (nome, saldoGols)  VALUES ('Itália Sampdoria', 87);
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Keylor Navas',1,'Keylor', 123,39 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Dani Carvajal',6,'Dani', 123,22 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Marcelo',14,'Marcelo', 123,11 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Sergio Ramos',10,'Sergio', 123,20 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Marco Assensio',15,'Marco', 123,35 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Casemiro',19,'Casemiro', 123,35 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Isco',18,'Isco', 123,19 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Toni Kroos',12,'Toni', 123,24 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Luka Modric',10,'Luka', 123,10 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Karim Benzema e Cristiano Ronaldo',10,'Karim', 123,37 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Gianluigi Buffon',20,'Gianluigi', 123,7 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Daniel Alves',12,'Daniel', 123,29 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Giorgio Chiellini',9,'Giorgio', 123,31 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Alex Sandro',4,'Alex', 123,8 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Miralem Pjanic e Paulo Dybala',15,'Miralem', 123,32 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Jan Oblak',15,'Jan', 123,20 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Diego Godin',18,'Diego', 123,3 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Saúl Ñíguez e Antoine Griezmann',19,'Saúl', 123,6 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('David de Gea',12,'David', 123,38 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Antonio Valencia',6,'Antonio', 123,16 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Henrikh Mkhitaryan e Paul Pogba',7,'Henrikh', 123,39 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Gerard Piqué',15,'Gerard', 123,16 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Andrés Iniesta',16,'Andrés', 123,16 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Lionel Messi e Luis Suárez',1,'Lionel', 123,3 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Thomas Meunier',13,'Thomas', 123,17 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Edinson Cavani',5,'Edinson', 123,25 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Kylian Mbappé e Neymar',13,'Kylian', 123,9 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Davinson Sánchez',17,'Davinson', 123,15 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Dele Alli',11,'Dele', 123,39 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Christian Eriksen e Harry Kane',14,'Christian', 123,39 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Manuel Neuer',8,'Manuel', 123,6 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Joshua Kimmich e Robert Lewandowski',9,'Joshua', 123,25 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Benjamin Mendy',6,'Benjamin', 123,36 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Kevin de Bruyne e Sergio Aguero',17,'Kevin', 123,21 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Kamil Glik',1,'Kamil', 123,5 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Fabinho e Radamel Falcao',8,'Fabinho', 123,7 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Pierre-Emerick Aubameyang',9,'Pierre', 123,34 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Eden Hazard',16,'Eden', 123,21 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Leonardo Bonucci',14,'Leonardo', 123,18 ,'Jogador');
INSERT INTO tbJogadores (nome, saldoGols, login, senha, idTime, tipoUsuario) VALUES ('Dries Mertens',16,'Dries', 123,7 ,'Jogador');
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (22,12,5,10,12);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (31,22,6,9,22);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (21,15,4,6,15);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (26,33,6,3,26);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (13,39,5,7,39);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (29,16,6,7,16);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (1,4,10,6,1);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (20,25,8,1,20);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (21,7,6,8,7);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (29,25,5,1,29);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (8,3,7,3,8);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (28,19,8,5,28);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (11,8,9,7,11);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (29,7,4,8,7);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (7,39,6,4,7);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (38,17,3,6,17);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (15,20,3,1,15);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (6,30,10,9,6);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (31,25,4,10,25);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (34,5,2,7,5);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (1,35,6,9,35);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (24,20,9,2,24);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (2,21,3,4,21);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (7,8,8,4,7);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (19,23,1,3,23);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (27,20,1,10,20);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (26,21,9,9,26);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (24,32,3,2,24);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (32,28,9,6,32);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (35,23,5,2,35);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (26,17,8,7,26);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (1,20,4,4,1);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (23,23,7,6,23);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (6,30,5,9,30);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (36,8,3,5,8);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (30,12,1,9,12);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (9,30,8,4,9);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (22,12,1,3,12);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (38,12,4,9,12);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (36,30,9,5,36);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (6,1,4,7,1);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (23,25,6,2,23);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (34,24,7,2,34);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (25,30,10,6,25);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (35,15,6,7,15);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (15,27,10,9,15);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (37,21,9,10,21);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (7,34,1,3,34);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (30,32,1,2,32);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (38,7,10,3,38);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (11,10,10,5,11);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (35,2,5,6,2);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (18,4,8,10,4);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (24,32,10,8,24);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (23,1,5,4,23);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (14,10,8,3,14);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (2,28,7,5,2);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (22,22,7,5,22);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (15,23,8,9,23);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (6,5,8,3,6);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (14,22,10,5,14);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (12,17,9,10,17);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (17,17,4,2,17);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (38,7,9,4,38);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (32,9,9,6,32);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (37,32,6,5,37);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (25,39,4,3,25);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (16,34,4,1,16);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (12,31,4,5,31);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (17,29,2,6,29);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (26,17,8,3,26);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (33,20,1,2,20);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (14,32,5,2,14);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (6,39,10,8,6);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (2,28,3,2,2);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (2,26,2,6,26);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (25,34,2,7,34);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (31,32,2,4,32);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (19,22,8,4,19);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (35,11,10,8,35);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (7,19,6,6,7);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (17,9,8,6,17);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (13,37,5,8,37);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (29,16,1,5,16);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (13,3,1,8,3);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (14,25,7,2,14);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (13,3,6,3,13);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (21,33,10,4,21);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (31,22,5,8,22);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (35,12,3,4,12);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (1,36,1,8,36);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (10,27,1,10,27);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (9,9,7,1,9);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (13,16,8,4,13);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (25,33,10,7,25);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (35,35,9,2,35);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (34,9,10,6,34);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (11,21,6,5,11);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (21,14,2,7,14);
INSERT INTO tbPartidas(idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (22,24,4,5,24);
