CREATE TABLE tbJogadores(
	id BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150) NOT NULL,
	saldoGols INT DEFAULT 0,
	login VARCHAR(100) NOT NULL,
	senha VARCHAR(100) NOT NULL,
	idTime BIGINT(10) NOT NULL,
	tipoUsuario VARCHAR(30) NOT NULL
);

INSERT INTO tbJogadores(nome, saldoGols, idTime) VALUES (dto.getNome(),dto.getSaldoGols(), dto.getIdTime());

UPDATE tbJogadores SET nome = dto.getNome(), saldoGols = dto.getSaldoGols(), idTime = dto.IdTime() WHERE id = dto.getId();

DELETE FROM tbJogadores WHERE id = dto.getId();

CREATE TABLE tbTimes(
	id BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150) NOT NULL,
	saldoGols INT DEFAULT 0
);

INSERT INTO tbTimes(nome, saldoGols) VALUES (dto.getNome, 0);

UPDATE tbTimes SET nome = dto.getNome(), saldoGols = dto.getSaldoGols() WHERE id = dto.getId();

DELETE FROM tbTimes WHERE id = dto.getId();

CREATE TABLE tbPartidas(
	id BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
	idTimeCasa BIGINT(10) NOT NULL,
	idTimeAdversario BIGINT(10) NOT NULL,
	golsCasa INT DEFAULT 0,
	golsAdversario INT DEFAULT 0,
	vencedor BIGINT(10) NULL
);

INSERT INTO tbPartidas (idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (dto.getTimeCasa().getId(), dto.getTimeAdversario().getId(), dto.getTimeCasa().getSaldoGols(), dto.getTimeAdversario().getId(), vencedor.getId());

SELECT * FROM tbPartidas WHERE idTimeCasa = ? OR idTimeAdversario = ?