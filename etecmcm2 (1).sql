-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2025 às 14:08
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'Frios'),
(3, 'Congelados'),
(4, 'Enlatados'),
(5, 'Carnes'),
(6, 'Hortifrut'),
(7, 'Perfumaria'),
(8, 'Bebidas'),
(9, 'Eletroeletrônicos'),
(10, 'Embalagens');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `fk_categorias_id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`ID_produto`, `nome`, `qtde`, `preco`, `marca`, `fk_categorias_id_categoria`) VALUES
(1, 'Sabão em pó', 5, 25.00, 'OMO', 1),
(2, 'Detergente', 20, 3.50, 'Ypê', 1),
(3, 'Mussarela', 100, 55.60, 'President', 2),
(4, 'Presunto', 100, 48.50, 'Sadia', 2),
(5, 'Lasanha', 1, 10.00, 'Seara', 3),
(6, 'Hamburguer', 1, 18.99, 'Sadia', 3),
(7, 'Atum', 1, 10.00, 'Gomes da Costa', 4),
(8, 'Milho', 1, 3.49, 'Knorr', 4),
(9, 'Bife de filé Mingnon', 1, 89.90, 'Swift', 5),
(10, 'Bife de Alcatra', 1, 53.90, 'Swift', 5),
(11, 'Abacaxi', 1, 10.00, 'Pérola', 6),
(12, 'Maçã', 1, 19.90, 'Fisher', 6),
(13, 'Perfume', 1, 475.00, '212', 7),
(14, 'Perfume', 1, 675.00, 'Dior', 7),
(15, 'Refrigerante', 1, 13.00, 'Coca Cola', 8),
(16, 'Suco', 1, 10.00, 'Ades', 8),
(17, 'Microondas', 1, 429.00, 'Eletrolux', 9),
(18, 'Air Fryer', 1, 275.00, 'Eletrolux', 9),
(19, 'Salgadinho', 1, 10.00, 'Doritos', 10),
(20, 'Bolacha', 1, 4.00, 'Trakinas', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_produto`),
  ADD KEY `FK_produtos_2` (`fk_categorias_id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `FK_produtos_2` FOREIGN KEY (`fk_categorias_id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
