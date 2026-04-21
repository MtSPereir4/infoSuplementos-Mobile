SET FOREIGN_KEY_CHECKS = 0;
SET NAMES utf8mb4;

-- Whey
INSERT INTO midias (id_suplemento, tipo, url)
SELECT 
    id_suplemento,
    'IMAGEM',
    'resources/whey_generico.jpg'
FROM suplementos
WHERE UPPER(tipo_suplemento) LIKE '%WHEY%';

-- Creatina
INSERT INTO midias (id_suplemento, tipo, url)
SELECT 
    id_suplemento,
    'IMAGEM',
    'resources/creatina_generica.jpg'
FROM suplementos
WHERE UPPER(tipo_suplemento) LIKE '%CREATINA%';

SET FOREIGN_KEY_CHECKS = 1;