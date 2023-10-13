-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 13-Out-2023 às 19:35
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `postagem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_postador` int NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `postagem` text NOT NULL,
  `visitas` int NOT NULL,
  `curtidas` int NOT NULL,
  `imagem` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `id_postador`, `titulo`, `data`, `postagem`, `visitas`, `curtidas`, `imagem`) VALUES
(7, 1, 'gui teste', '22/09/2023 09:55', 'teste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testeateste testea', 3, 0, 'images/uploads/pessoa2.jpeg'),
(6, 1, 'abcdefghijklmnopqrstuv', '19/09/2023 23:19', 'sebgunda', 14, 5, 'images/uploads/358759205_664432748917263_6918101938205614299_n.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `nivel` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `nivel`) VALUES
(1, 'guilherme freitas', 'admin', 'admin', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
