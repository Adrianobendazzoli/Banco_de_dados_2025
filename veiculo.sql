-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 14:02
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
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` int(11) NOT NULL,
  `codModelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
('ABC1234', 'preto', 101, 1),
('BCD8901', 'Preto', 110, 10),
('DEF5678', 'Preto', 102, 2),
('EFG2345', 'Branco', 111, 11),
('GHI9012', 'Branco', 103, 3),
('HIJ6780', 'Vermelho', 112, 12),
('JKL3456', 'Vermelho', 104, 4),
('KLM9011', 'Prata', 113, 13),
('MNO7890', 'Azul', 105, 5),
('NOP3452', 'Azul', 114, 14),
('PQR1235', 'Cinza', 106, 6),
('QRS7893', 'Cinza', 115, 15),
('STU6789', 'Verde', 107, 7),
('VWX0123', 'Amarelo', 108, 8),
('YZA4567', 'Roxo', 109, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
