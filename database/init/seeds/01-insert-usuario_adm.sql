SET FOREIGN_KEY_CHECKS = 0;
SET NAMES utf8mb4;

INSERT INTO usuarios (
       tipo_usuario,
       status_usuario,
       nome_usuario,
       email_usuario,
       senha_hash
)
VALUES
('ADMINISTRADOR', 'ATIVO', 'Matheus Pereira', 'mtspereira@email.com', '$2b$10$yowZJVy/R6JTle2orWs/.e23h5f/sVJkgbZMC4dWgw5GQfkd/nav.'),
('ADMINISTRADOR', 'ATIVO', 'Caio Gabriel', 'caiogabriel@email.com', '$2b$10$yowZJVy/R6JTle2orWs/.e23h5f/sVJkgbZMC4dWgw5GQfkd/nav.'),
('ADMINISTRADOR', 'ATIVO', 'Pedro Tales', 'pedrinho@email.com', '$2b$10$yowZJVy/R6JTle2orWs/.e23h5f/sVJkgbZMC4dWgw5GQfkd/nav.'),
('ADMINISTRADOR', 'ATIVO', 'Luiz Gonzaga', 'gonzaga@email.com', '$2b$10$yowZJVy/R6JTle2orWs/.e23h5f/sVJkgbZMC4dWgw5GQfkd/nav.'),
('ADMINISTRADOR', 'ATIVO', 'Jonathan Alves', 'john@email.com', '$2b$10$yowZJVy/R6JTle2orWs/.e23h5f/sVJkgbZMC4dWgw5GQfkd/nav.');

SET FOREIGN_KEY_CHECKS = 1;