SET FOREIGN_KEY_CHECKS = 0;
SET NAMES utf8mb4;

-- Whey
INSERT INTO midias (
    id_suplemento,
    nome_midia,
    tipo_midia,
    caminho_midia
)
SELECT 
    id_suplemento,
    'Imagem Whey',
    'IMAGEM',
    'resources/whey_generico.jpg'
FROM suplementos
WHERE tipo_suplemento = 'WHEY_PROTEIN';

-- Creatina
INSERT INTO midias (
    id_suplemento,
    nome_midia,
    tipo_midia,
    caminho_midia
)
SELECT 
    id_suplemento,
    'Imagem Creatina'
    'IMAGEM',
    'resources/creatina_generica.jpg'
FROM suplementos
WHERE tipo_suplemento = 'CREATINA';

SET FOREIGN_KEY_CHECKS = 1;