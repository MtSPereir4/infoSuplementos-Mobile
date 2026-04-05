-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 05/04/2026 às 16:32
-- Versão do servidor: 8.0.44
-- Versão do PHP: 8.3.26

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `info_suplementos`
--
DROP DATABASE IF EXISTS `info_suplementos`;
CREATE DATABASE IF NOT EXISTS `info_suplementos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `info_suplementos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
CREATE TABLE `favoritos` (
  `id_favorito` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `id_suplemento` int NOT NULL AUTO_INCREMENT,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
,
  PRIMARY KEY (`id_favorito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `favoritos`
--

INSERT INTO `favoritos` (`id_favorito`, `id_usuario`, `id_suplemento`, `data_cadastro`,
  PRIMARY KEY (`id_favorito`)
) VALUES
(1, 2, 2, '2025-11-29 17:26:36',
  PRIMARY KEY (`id_favorito`)
),
(2, 2, 2, '2025-11-29 17:26:36',
  PRIMARY KEY (`id_favorito`)
),
(3, 2, 3, '2025-11-29 17:26:38',
  PRIMARY KEY (`id_favorito`)
),
(4, 2, 3, '2025-11-29 17:26:38',
  PRIMARY KEY (`id_favorito`)
),
(5, 3, 45, '2025-12-02 01:28:14',
  PRIMARY KEY (`id_favorito`)
),
(6, 4, 3, '2025-12-02 01:42:23',
  PRIMARY KEY (`id_favorito`)
),
(7, 4, 3, '2025-12-02 01:42:23',
  PRIMARY KEY (`id_favorito`)
),
(8, 8, 1, '2025-12-04 01:08:05',
  PRIMARY KEY (`id_favorito`)
),
(9, 8, 1, '2025-12-04 01:08:05',
  PRIMARY KEY (`id_favorito`)
),
(10, 11, 97, '2025-12-06 19:52:47',
  PRIMARY KEY (`id_favorito`)
),
(11, 11, 113, '2025-12-06 19:53:15',
  PRIMARY KEY (`id_favorito`)
),
(12, 11, 112, '2025-12-06 19:53:26',
  PRIMARY KEY (`id_favorito`)
),
(13, 11, 47, '2025-12-06 19:53:44',
  PRIMARY KEY (`id_favorito`)
),
(14, 11, 56, '2025-12-06 19:54:09',
  PRIMARY KEY (`id_favorito`)
),
(15, 11, 46, '2025-12-06 19:54:16',
  PRIMARY KEY (`id_favorito`)
),
(16, 11, 93, '2025-12-06 19:54:47',
  PRIMARY KEY (`id_favorito`)
),
(17, 11, 122, '2025-12-06 19:54:54',
  PRIMARY KEY (`id_favorito`)
),
(18, 11, 58, '2025-12-06 19:55:08',
  PRIMARY KEY (`id_favorito`)
),
(19, 12, 20, '2025-12-08 14:53:02',
  PRIMARY KEY (`id_favorito`)
),
(20, 15, 94, '2025-12-09 22:53:55',
  PRIMARY KEY (`id_favorito`)
),
(22, 2, 70, '2026-01-07 01:46:04',
  PRIMARY KEY (`id_favorito`)
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `midias`
--

DROP TABLE IF EXISTS `midias`;
CREATE TABLE `midias` (
  `id_midia` int NOT NULL AUTO_INCREMENT,
  `id_suplemento` int NOT NULL AUTO_INCREMENT,
  `tipo_midia` enum('IMAGEM','VIDEO',
  PRIMARY KEY (`id_midia`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255,
  PRIMARY KEY (`id_midia`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caminho_midia` varchar(255,
  PRIMARY KEY (`id_midia`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
,
  PRIMARY KEY (`id_midia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `midias`
--

INSERT INTO `midias` (`id_midia`, `id_suplemento`, `tipo_midia`, `nome`, `caminho_midia`, `data_cadastro`, `data_atualizacao`,
  PRIMARY KEY (`id_midia`)
) VALUES
(1, 80, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(2, 81, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(3, 82, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(4, 83, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(5, 84, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(6, 85, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(7, 86, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(8, 87, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(9, 88, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(10, 89, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(11, 90, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(12, 91, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(13, 92, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(14, 93, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(15, 94, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(16, 95, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(17, 96, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(18, 97, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(19, 98, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(20, 99, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(21, 100, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(22, 101, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(23, 102, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(24, 103, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(25, 104, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(26, 105, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(27, 106, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(28, 107, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(29, 108, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(30, 109, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(31, 110, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(32, 111, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(33, 112, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(34, 113, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(35, 114, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(36, 115, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(37, 116, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(38, 117, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(39, 118, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(40, 119, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(41, 120, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(42, 121, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(43, 122, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(44, 123, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(45, 124, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(46, 125, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(47, 126, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(48, 127, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(49, 128, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(50, 129, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(51, 130, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(52, 131, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(53, 132, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(54, 133, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(55, 134, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(56, 135, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(57, 136, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(58, 137, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(59, 138, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(60, 139, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(61, 140, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(62, 141, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(63, 142, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(64, 143, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(65, 144, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(66, 145, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(67, 146, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(68, 147, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(69, 148, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(70, 149, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(71, 150, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(72, 151, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(73, 152, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(74, 153, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(75, 154, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(76, 155, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(77, 156, 'IMAGEM', 'Imagem GenÃ©rica Whey Protein', 'resources/whey_generico.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(128, 1, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(129, 2, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(130, 3, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(131, 4, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(132, 5, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(133, 6, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(134, 7, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(135, 8, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(136, 9, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(137, 10, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(138, 11, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(139, 12, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(140, 13, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(141, 14, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(142, 15, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(143, 16, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(144, 17, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(145, 18, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(146, 19, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(147, 20, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(148, 21, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(149, 22, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(150, 23, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(151, 24, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(152, 25, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(153, 26, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(154, 27, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(155, 28, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(156, 29, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(157, 30, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(158, 31, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(159, 32, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(160, 33, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(161, 34, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(162, 35, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(163, 36, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(164, 37, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(165, 38, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(166, 39, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(167, 40, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(168, 41, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(169, 42, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(170, 43, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(171, 44, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(172, 45, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(173, 46, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(174, 47, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(175, 48, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(176, 49, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(177, 50, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(178, 51, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(179, 52, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(180, 53, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(181, 54, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(182, 55, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(183, 56, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(184, 57, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(185, 58, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(186, 59, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(187, 60, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(188, 61, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(189, 62, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(190, 63, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(191, 64, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(192, 65, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(193, 66, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(194, 67, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(195, 68, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(196, 69, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(197, 70, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(198, 71, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(199, 72, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(200, 73, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(201, 74, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(202, 75, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(203, 76, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(204, 77, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(205, 78, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
),
(206, 79, 'IMAGEM', 'Imagem GenÃ©rica Creatina', 'resources/creatina_generica.jpg', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_midia`)
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `suplementos`
--

DROP TABLE IF EXISTS `suplementos`;
CREATE TABLE `suplementos` (
  `id_suplemento` int NOT NULL AUTO_INCREMENT,
  `id_usuario_cadastro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255,
  PRIMARY KEY (`id_suplemento`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255,
  PRIMARY KEY (`id_suplemento`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_suplemento` enum('WHEY_PROTEIN','CREATINA',
  PRIMARY KEY (`id_suplemento`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_suplemento` enum('ATIVO','INATIVO',
  PRIMARY KEY (`id_suplemento`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aprovacao` enum('APROVADO','REPROVADO',
  PRIMARY KEY (`id_suplemento`)
) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalhes_laudo` text COLLATE utf8mb4_unicode_ci,
  `orgao_laudo` varchar(100,
  PRIMARY KEY (`id_suplemento`)
) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_laudo` date DEFAULT NULL,
  `data_cadastro_sistema` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
,
  PRIMARY KEY (`id_suplemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `suplementos`
--

INSERT INTO `suplementos` (`id_suplemento`, `id_usuario_cadastro`, `nome`, `marca`, `tipo_suplemento`, `status_suplemento`, `status_aprovacao`, `detalhes_laudo`, `orgao_laudo`, `data_laudo`, `data_cadastro_sistema`, `data_atualizacao`,
  PRIMARY KEY (`id_suplemento`)
) VALUES
(1, 1, 'Creatina 100% Pure', 'Absolut Nutrition', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(2, 1, 'CREATINE', 'ADAPTOGEN', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(3, 1, 'CREATINE SUPER', 'ADAPTOGEN', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(4, 1, 'HD CRET', 'ADAPTOGEN', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(5, 1, 'MICRONIZED CREATINE', 'AST Sports Science', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(6, 1, '100% Creatine Flavour', 'Atlhetica Nutrition', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(7, 1, 'CREATOR', 'BLACK SKULL', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(8, 1, 'CREATINE', 'BLACK SKULL', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(9, 1, 'Creatine Turbo', 'BLACK SKULL', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(10, 1, '100% CREATINE', 'BODYBUILDERS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(11, 1, 'CREATINE', 'BODY NUTRI', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(12, 1, 'CREATINA PURA 200 g', 'BODY SHAPE', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(13, 1, 'CREATINA', 'BRUTHAL SPORTS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(14, 1, 'GERMAN CREATINE', 'CELLGENIX', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(15, 1, 'CREATINE', 'DARK LAB', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(16, 1, 'Creadop Creapure', 'Elemento Puro', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(17, 1, 'CREATINA', 'ELEVA NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(18, 1, 'Creatina Creapure', 'Equaliv', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(19, 1, 'Creatina 100% Pure', 'Espartanos', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(20, 1, 'Creatine Powder 100%', 'Euro Nutry', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(21, 1, 'CREATINE', 'Extreme Action', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(22, 1, '100% Creatina', 'EXTREME NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(23, 1, 'Strong Creatine 100% Pure', 'Fisio Nutri', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(24, 1, 'CREATINA monohidratada', 'FTW', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(25, 1, 'Monohidratada Creatine', 'GROWTH SUP', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(26, 1, 'CREATINA GOURMET', 'HEALTH LABS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(27, 1, 'Atlas Creatina', 'Iridium Labs', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(28, 1, 'CREATINE MICRONIZED', 'LEADER NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(29, 1, 'CREATINE ATP', 'NEW MILLEN', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(30, 1, 'CREATINA', 'NEW NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(31, 1, 'MAX CREATINA', 'NITRO MAX', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(32, 1, 'CREATINE CREAPURE', 'NUTRATA', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(33, 1, 'MICRONIZED CREATINE', 'OPTIMUM NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(34, 1, 'Creatine', 'Pro Corps', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(35, 1, 'CREATINE MICRONIZED', 'PRO HEALTHY', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(36, 1, 'Creatina Premium', 'Pura Vida', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(37, 1, 'CREATINE', 'QNT Move', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(38, 1, 'CREATINA 100% PURA', 'R74 PREMIUM', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(39, 1, '100% CREATINE PURE', 'SHAPE NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(40, 1, 'CREATINA SMART', 'SMART FIT SUPPS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(41, 1, 'CREATINA 100% PURA', 'SMART FIT SUPPS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(42, 1, 'CREATINA', 'SOLDIERS NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(43, 1, 'CREATINA', 'TOP WAY', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(44, 1, 'CREATINE FUZE', 'UNDERLABS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(45, 1, 'CREATINE', 'UNIVERSAL', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(46, 1, 'Pure Creatina Monohydrate', 'Venom Labs', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(47, 1, 'Creatine', 'VITAFOR', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(48, 1, 'Creatina 100% Pura', 'Vitamax Nutrition', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(49, 1, 'Creatine Monohydrate', 'Wise Health', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(50, 1, 'Kreat', 'X Pro Nutrition', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(51, 1, 'CREATINE', 'ZUPLER', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 0%-5%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(52, 1, 'CREATINA MONOHIDRATADA', '+Mu', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 5,1%-10%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(53, 1, 'CREATINA PLUS', 'CANIBAL INC.', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 5,1%-10%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(54, 1, 'Evo Creatine', 'Evorox Nutrition', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 5,1%-10%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(55, 1, 'CREATINE DRIVE', 'NUTREX RESEARCH', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 5,1%-10%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(56, 1, 'ENERGY CREATINA', 'SHARK PRO', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 5,1%-10%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(57, 1, 'PREMIUM CREATINA', 'BRN FOODS', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 10,1%-20%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(58, 1, 'CREATINA', 'HARDCORE SPORTS NUTRITION', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 10,1%-20%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(59, 1, 'CREATINE POWER', 'PROFIT LAB', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 10,1%-20%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(60, 1, 'BRUTAL CREATINE', 'RED', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 10,1%-20%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(61, 1, 'CREATINA POWDER', 'SYNTHESIZE', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 10,1%-20%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(62, 1, 'Creatine Booster', 'Vitamax Nutrition', 'CREATINA', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado (variação 10,1%-20%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(63, 1, 'Dark Dragon', 'BODY NUTRY', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(64, 1, 'CREATINA ENERGY', 'BODY NUTRY', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(65, 1, 'CREATINA 100%', 'Melius Nutrition', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(66, 1, 'CREATINA', 'MUSCLE FULL', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(67, 1, 'Creatine', 'PROSIZE', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(68, 1, 'CREATINA PURA', 'SCI NUTRITION', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(69, 1, 'CREATINE', 'BODY NUTRY', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -21% a -99%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(70, 1, 'Creatine Monohidratada', 'AGE', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(71, 1, 'Creatin', 'Cellucor', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(72, 1, 'Creatina Monohidrate', 'Dymatrix Nutrition', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(73, 1, 'Creatina Monohidratada', 'GENERIC LABS', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(74, 1, 'CREATINA', 'IMPURE NUTRITION', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(75, 1, 'Power Creatina', 'INTLAB', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(76, 1, 'Creatina Monohidratada', 'Iron Tech Sports Nutrition', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(77, 1, 'Creatine', 'Muscle Pharm', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(78, 1, 'Creatina 100% Pura', 'NFT Nutrition', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(79, 1, 'Creatina Monohidratada', 'TRIBE NUTRITION', 'CREATINA', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado (variação -100%,
  PRIMARY KEY (`id_suplemento`)
)', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(80, 1, 'Whey 100% Pure', 'Absolut Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -14,22%, Treonina: -12.02%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(81, 1, '3 Whealth', 'Active Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,50%, Treonina: -19,96%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(82, 1, '100% Whey', 'Age – Intlab Suplementos Nutricionais', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 04,65%, Treonina: 18,08%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(83, 1, 'Atletica Nutritrion', 'Atletica Nutritrion', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 14,35%, Treonina: -18,06%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(84, 1, 'Whey 4HD', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,13%, Treonina: 4,40%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(85, 1, 'Whey 3HD', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -10,20%, Treonina: 13,20%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(86, 1, 'Whey 100% HD', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -6,96%, Treonina: -10,16%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(87, 1, 'Hydrolysis', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -7,89%, Treonina: 10,11%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(88, 1, 'Protein Muscle', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -10,79%, Treonina: -5,74%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(89, 1, 'Protein 7 Blend Gourmet', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -10,95%, Treonina: 11,19%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(90, 1, 'Whey', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -3,63%, Treonina: -0,03%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(91, 1, 'Whey 100%', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 11,49%, Treonina: -16,34%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(92, 1, 'Whey Turbo', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -11,00%, Treonina: -11,02%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(93, 1, 'Albumina Turbo', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -9,89%, Treonina: 11,21%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(94, 1, 'Protein 7 Blend', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 10,05%, Treonina: 10,64%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(95, 1, 'Whey Zero', 'Black Skull', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -3,81%, Treonina: -1,28%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(96, 1, 'Whey', 'Best Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,37%, Treonina: -16,74%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(97, 1, '100% Whey Prime', 'Body Action', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,86%, Treonina: -19,23%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(98, 1, 'Whey', 'Cellucor Nutrabolt;', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,22%, Treonina: -19,47%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(99, 1, 'Whey Protein Isolado', 'Dux Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,96%, Treonina: -19,44%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(100, 1, 'Izo 100% Hydrolyzed', 'Dymatize', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,74%, Treonina: 9,32%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(101, 1, 'Whey Ultra Protein', 'FTW Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -8,85%, Treonina: 5,75%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(102, 1, 'Izo Protein', 'FTW Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,88%, Treonina: 17,30%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(103, 1, 'Delicious 3 Whey', 'FTW Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -12,08%, Treonina: 19,47%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(104, 1, 'Proven Whey', 'Gaspar', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 6,60%, Treonina: -19,89%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(105, 1, '100% WheY', 'Generic Labs Intalab Suplementos Nutricionais', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,02%, Treonina: 14,53%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(106, 1, 'Whey Blend', 'Generic Labs Intalab Suplementos Nutricionais', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,88%, Treonina: -18,52%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(107, 1, '100% Premium Whey', 'Protesa;', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,64%, Treonina: -10,69%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(108, 1, 'Whey Protein 100%', 'Health Time Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -13,89%, Treonina: 3,09%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(109, 1, '100% Whey Pure', 'Intalb', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,64%, Treonina: 3,65%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(110, 1, 'Femini Whey', 'Max Titanium', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,40%, Treonina: 16,26%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(111, 1, 'Top Whey 3W', 'Max Titanium', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -6,47%, Treonina: -19,07%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(112, 1, 'Iso Whey', 'Max Titanium', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,44%, Treonina: -18,76%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(113, 1, 'Top Whey 3W', 'Max Titanium', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -8,58%, Treonina: -14,36%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(114, 1, '100% Whey', 'Max Titanium', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -14,16%, Treonina: -19,89%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(115, 1, 'Iso Pro Whey', 'Probiótica', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,82%, Treonina: -1,05%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(116, 1, '3 Whey Protein', 'Probiótica', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -10,56%, Treonina: 7,31%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(117, 1, '100% Pure Whey', 'Probiótica', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -5,36%, Treonina: -6,94%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(118, 1, '100% Pure Whey Zero', 'Probiótica', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -6,06%, Treonina: -19,86%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(119, 1, 'Hiper 100% Whey', 'Probiótica', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -13,08%, Treonina: -16,08%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(120, 1, 'Pro Whey Protein', 'Probiótica', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 18,21%, Treonina: -19,47%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(121, 1, 'Whey Concentrado;', 'Proway', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -17%, Treonina: -19,79%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(122, 1, '100% Whey', 'SCI Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,98%, Treonina: -6,37%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(123, 1, '100% Whey Protein', 'Smart Fit Protein', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 1,71%, Treonina: -18,90%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(124, 1, 'Isolado Whey Protein', 'Smart Fit Protein', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -14,23%, Treonina: -19,74%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(125, 1, 'Flex Tasty Whey;', 'Under Labs', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 6,97%, Treonina: 11,73%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(126, 1, 'Whey Gourmet;', 'Underx Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -16,42%, Treonina: -18,04%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(127, 1, 'Ultra Whey Pro', 'Universal', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 17,56%, Treonina: -18,19%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(128, 1, 'Isolate Whey', 'Wise Heath Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -18,33%, Treonina: -19,33%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(129, 1, 'Whey zero lactose', 'Wise Heath Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -1,26%, Treonina: 1,82%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(130, 1, 'Authentic Whey', 'Wise Heath Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: -19,90%, Treonina: 16,96%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(131, 1, 'Starter Whey', 'Wise Heath Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 19,51%, Treonina: 19,80%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(132, 1, 'Whey', 'Wise Heath Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'APROVADO', 'Laudo ABENUTRI - Aprovado. Não contém indícios de Amino Spiking. Variação Glicina: 6,10%, Treonina: -19,88%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(133, 1, 'Hyper Whey;', 'XTR Health Research', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -7,91%, Treonina: 39,80%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(134, 1, 'Xpro Nutrition', 'Xpro Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: Não informado, Treonina: Não informado.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(135, 1, 'Iso-x Protein Complex', 'Xpro Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 53,42%, Treonina: 47,12%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(136, 1, 'W-Iso Isolate Whey', 'Xpro Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 845,95%, Treonina: 34,05%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(137, 1, 'Isohydro ++ Flex Whey;', 'Under Labz', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 39,47%, Treonina: 8,74%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(138, 1, 'Prostar 100% Whey Protein;', 'Ultimate Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -21,13%, Treonina: 28,28%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(139, 1, '5W Whey Protein;', 'Ravenna Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -61,09%, Treonina: 106,10%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(140, 1, 'Nitro Power Whey;', 'NitroMax The Heat Comércio Varejista', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 1556,19%, Treonina: 60,07%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(141, 1, 'Nitrotech Whey Gold;', 'Muscletech', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 36,14%, Treonina: -65,70%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(142, 1, 'Maximus Whey;', 'MHP', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 63,71%, Treonina: -48,27%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(143, 1, '3 Whey Protein', 'FTW Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 37,84%, Treonina: 34,36%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(144, 1, 'Whey 3W', 'FTW Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -3,35%, Treonina: 46,39%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(145, 1, 'Whey Blend', 'FTW Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 510,41%, Treonina: 18,29%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(146, 1, '3 Whey Protein Power;', 'ForceUp (LHS Foods,
  PRIMARY KEY (`id_suplemento`)
)', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 1,50%, Treonina: 216,53%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(147, 1, 'Protein 1 Whey;', 'Evolution Labs', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -21,62%, Treonina: 41,58%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(148, 1, 'Iso 100%;', 'Cobra Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -54,62%, Treonina: 65,04%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(149, 1, 'Isolate Definition', 'BodyAction Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 458,04%, Treonina: 5,52%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(150, 1, 'Isolate Prime Whey', 'BodyAction Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 912,71%, Treonina: 12,52%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(151, 1, 'Isolate Prime Whey', 'BodyAction Sports Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 939,43%, Treonina: 44,64%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(152, 1, 'Best Whey Brigadeiro', 'Atletica Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 25,31%, Treonina: 25,31%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(153, 1, 'Best Whey double chocolate', 'Atletica Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 153,26%, Treonina: 10,37%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(154, 1, 'Best Whey milkshake de chocolate', 'Atletica Nutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: 70,32%, Treonina: 38,66%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(155, 1, 'VP2 Whey Protein Isolate;', 'AST Sport Science', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -15,89%, Treonina: 52,73%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
),
(156, 1, 'Protein Whey 3W.', 'ActiveNutrition', 'WHEY_PROTEIN', 'ATIVO', 'REPROVADO', 'Laudo ABENUTRI - Reprovado. Contém indícios de Amino Spiking. Variação Glicina: -27,23%, Treonina: 33,52%.', 'ABENUTRI', '2024-05-26', '2025-11-27 00:21:57', '2025-11-27 00:21:57',
  PRIMARY KEY (`id_suplemento`)
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `tipo_usuario` enum('ADMINISTRADOR','COMUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_usuario` enum('ATIVO','INATIVO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `tipo_usuario`, `status_usuario`, `nome`, `email`, `senha_hash`, `data_cadastro`, `data_atualizacao`) VALUES
(1, 'ADMINISTRADOR', 'ATIVO', 'Matheus Pereira', 'mtspereira@email.com', '$2b$10$yowZJVy/R6JTle2orWs/.e23h5f/sVJkgbZMC4dWgw5GQfkd/nav.', '2025-11-27 00:21:57', '2025-11-27 00:21:57'),
(2, 'COMUM', 'ATIVO', 'nator', 'nator@email.com', '$2b$10$XXZ5UbNUXRx1Z2xv1RFv4.MHiJ4KACc4DGtKsprHy22H74CD6pHuG', '2025-11-29 16:36:57', '2025-11-29 16:36:57'),
(3, 'COMUM', 'ATIVO', 'Victor Lucena Saraiva ', 'victorlucsar@gmail.com', '$2b$10$uw087I.GtDHLkCvdHR3vsuuWCJErDX9EP5gcLfJIjE6UlN06gSgbG', '2025-12-02 01:27:53', '2025-12-02 01:27:53'),
(4, 'COMUM', 'ATIVO', 'Fabricio Martins ', 'brilhante0077@gmail.com', '$2b$10$QAszVCn5kpUxcrMI3L/wW.VKOg3Bjf9vqCNHx9PrxKxH5/qqgwCAG', '2025-12-02 01:40:48', '2025-12-02 01:40:48'),
(5, 'COMUM', 'ATIVO', 'Francisca Nivia Paiva Vale ', 'niviapaiva@yahoo.com.br', '$2b$10$.S9vZ3MHxYlpjrLsCFEUjONmzxox7HeZQTWRCIdh07BWQKNuTDIU6', '2025-12-02 10:49:30', '2025-12-02 10:49:30'),
(6, 'COMUM', 'ATIVO', 'Cesar Viana', 'cesarfviana@gmail.com', '$2b$10$/rUk4fwAB0aWYBWgg45XeOt7hYSBsm0G6o2K.leZ8RJ/Lp7uGT7Lu', '2025-12-02 13:41:46', '2025-12-02 13:41:46'),
(7, 'COMUM', 'ATIVO', 'Rogério Carvalho ', 'rogfeliz440@gmail.com', '$2b$10$C0akElBokJA77bkK4uCXcOhAWH4sHaY/OPusFa0gmO6lia36EbTHO', '2025-12-03 11:50:32', '2025-12-03 11:50:32'),
(8, 'COMUM', 'ATIVO', 'Kamila', 'kamilakcl21@hotmail.com', '$2b$10$5qtev31AbuhEGrUyFATLCecCdC2AD/2vSqK6L5NxEGshnGE7b/XKy', '2025-12-04 01:07:36', '2025-12-04 01:07:36'),
(9, 'COMUM', 'ATIVO', 'Rubens Alves', 'rubensalves032@yahoo.com', '$2b$10$Z6jqV.PE7o6Zo6Pt2/Ef8.IMtMosew5xXHSKZDP8b4N2ps.44Emii', '2025-12-06 18:02:17', '2025-12-06 18:02:17'),
(10, 'COMUM', 'ATIVO', 'Sulivan', 'sulivan.silva07@gmail.com', '$2b$10$Rzd7hw2QctP.PRJ3rHHoWerXvmTtc/avSpDki4K/iSL4VjwJ4cS0W', '2025-12-06 18:45:30', '2025-12-06 18:45:30'),
(11, 'COMUM', 'ATIVO', 'Luiz Teixeira', 'luizgpteixeira1@gmail.com', '$2b$10$sd0bmDe9SehNikDV.ud1e.cpJxi4LrLIRxPnFAZt7n12gf6AjPh1u', '2025-12-06 19:51:17', '2025-12-06 19:51:17'),
(12, 'COMUM', 'ATIVO', 'Leo', 'leonardoaesilva@yahoo.com', '$2b$10$yZpbfQQNRnq//WXt/pG0v.FRaQhxuTGt9TYbLSHVOMO49/qbuivFO', '2025-12-08 14:41:02', '2025-12-08 14:41:02'),
(13, 'COMUM', 'ATIVO', 'DOMINGOS', 'domingosbruno4764@gmail.com', '$2b$10$.6eXTRmfIPDEOZNHNhk6Ie7e6KVA62iuFiX5b7fNiksdp6llbnFcu', '2025-12-09 00:18:35', '2025-12-09 00:18:35'),
(15, 'COMUM', 'ATIVO', 'Matheus Pererira', 'mtspereira222@email.com', '$2b$10$VZ6trj7lMEMzJupFXX3I8uVtiik.5ivsk0ssI5rCskm0JSpPaGxp2', '2025-12-09 22:53:32', '2025-12-09 22:53:32'),
(16, 'COMUM', 'ATIVO', 'Levi', 'levimemoria@gmail.com', '$2b$10$4MK/PgpEg5MkIivS9sRQquNbdk3BsT.LiazXjNwndl61wAsNWF/XW', '2026-02-01 18:23:09', '2026-02-01 18:23:09'),
(17, 'COMUM', 'ATIVO', 'José Renato Rodrigues Gomes ', 'renatorodriguesgg2121@gmail.com', '$2b$10$J4Nj/vIbBEI3sOcv9GBb0.V2I4OSB69IO3p5OFzmw7gam0RDhLl1q', '2026-02-19 20:41:43', '2026-02-19 20:41:43');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_favorito`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_suplemento` (`id_suplemento`);

--
-- Índices de tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`id_midia`),
  ADD KEY `id_suplemento` (`id_suplemento`);

--
-- Índices de tabela `suplementos`
--
ALTER TABLE `suplementos`
  ADD PRIMARY KEY (`id_suplemento`),
  ADD KEY `id_usuario_cadastro` (`id_usuario_cadastro`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id_favorito` int NOT NULL AUTO_INCREMENT AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id_midia` int NOT NULL AUTO_INCREMENT AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de tabela `suplementos`
--
ALTER TABLE `suplementos`
  MODIFY `id_suplemento` int NOT NULL AUTO_INCREMENT AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_suplemento`) REFERENCES `suplementos` (`id_suplemento`);

--
-- Restrições para tabelas `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`id_suplemento`) REFERENCES `suplementos` (`id_suplemento`);

--
-- Restrições para tabelas `suplementos`
--
ALTER TABLE `suplementos`
  ADD CONSTRAINT `suplementos_ibfk_1` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuarios` (`id_usuario`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
