SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    tipo_usuario ENUM('ADMINISTRADOR', 'COMUM') NOT NULL,
    status_usuario ENUM('ATIVO', 'INATIVO') NOT NULL,
    nome_usuario VARCHAR(255) NOT NULL,
    email_usuario VARCHAR(255) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id_usuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS favoritos (
    id_favorito INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
    id_suplemento INT NOT NULL,
	data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_suplemento) REFERENCES suplementos(id_suplemento)
        
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;


CREATE TABLE IF NOT EXISTS suplementos (
    id_suplemento INT NOT NULL AUTO_INCREMENT,
    id_usuario_cadastro INT NOT NULL,
    nome_suplemento VARCHAR(255) NOT NULL,
    marca_suplemento VARCHAR(255) NOT NULL,
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
    id_suplemento INT NOT NULL,
    nome_midia VARCHAR(255) NOT NULL,
    caminho_midia VARCHAR(255) NOT NULL,
    tipo_midia ENUM('IMAGEM', 'VIDEO') NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id_midia),

    CONSTRAINT fk_suplemento_midia
        FOREIGN KEY (id_suplemento)
        REFERENCES suplementos(id_suplemento)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
