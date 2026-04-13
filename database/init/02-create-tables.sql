SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    status VARCHAR(50),
    login VARCHAR(100),
    email VARCHAR(255),
    senha VARCHAR(255),
    PRIMARY KEY (id_usuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS suplementos (
    id_suplemento INT NOT NULL AUTO_INCREMENT,
    id_usuario_cadastro INT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    tipo_suplemento ENUM('WHEY_PROTEIN', 'CREATINA') NOT NULL,
    status_suplemento ENUM('ATIVO', 'INATIVO') NOT NULL,
    status_aprovacao ENUM('APROVADO', 'REPROVADO') NOT NULL,
    detalhes_laudo TEXT,
    orgao_laudo VARCHAR(100),
    data_laudo DATE,
    data_cadastro_sistema TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id_suplemento),

    CONSTRAINT fk_usuario_cadastro
        FOREIGN KEY (id_usuario_cadastro)
        REFERENCES usuarios(id_usuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS midias (
    id_midia INT NOT NULL AUTO_INCREMENT,
    id_suplemento INT,
    url VARCHAR(255),
    tipo VARCHAR(50),

    PRIMARY KEY (id_midia),

    CONSTRAINT fk_suplemento_midia
        FOREIGN KEY (id_suplemento)
        REFERENCES suplementos(id_suplemento)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
