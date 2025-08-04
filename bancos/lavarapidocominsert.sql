-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/08/2025 às 14:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codos` int(11) NOT NULL,
  `codcarro` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codos`, `codcarro`, `totalgeral`, `data`) VALUES
(1, 1, 30.00, '2025-07-01'),
(2, 1, 50.00, '2025-07-10'),
(3, 2, 130.00, '2025-07-05'),
(4, 3, 100.00, '2025-07-03'),
(5, 2, 100.00, '2025-08-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codsatendimentoservico` int(11) NOT NULL,
  `codos` int(11) NOT NULL,
  `codservico` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  `totalserv` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codsatendimentoservico`, `codos`, `codservico`, `qtde`, `totalserv`) VALUES
(1, 1, 1, 1, 30.00),
(2, 2, 2, 1, 50.00),
(3, 3, 2, 1, 50.00),
(4, 3, 3, 1, 100.00),
(5, 4, 3, 1, 100.00),
(6, 5, 3, 1, 100.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `codmodelo` int(11) NOT NULL,
  `codmarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `ano`, `codcliente`, `codmodelo`, `codmarca`) VALUES
(1, 2015, 1, 1, 1),
(2, 2018, 2, 2, 2),
(3, 2010, 3, 3, 3),
(4, 2017, 1, 2, 2),
(5, 2019, 4, 4, 2),
(6, 2020, 8, 10, 4),
(7, 2016, 8, 12, 4),
(8, 2022, 8, 14, 5),
(9, 2019, 9, 16, 6),
(10, 2021, 10, 18, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codendereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `codendereco`) VALUES
(1, 'Ana Paula', '1988-04-15', '11999990000', 'ana@gmail.com', 1),
(2, 'João Silva', '1990-01-22', '11988887777', 'joao@gmail.com', 2),
(3, 'Carlos Souza', '1985-06-10', '11912345678', 'carlos@gmail.com', 3),
(4, 'Fernanda Lima', '2000-08-30', '11955556666', 'fernanda@gmail.com', 4),
(5, 'Pedro Alves', '1975-11-09', '11944443333', 'pedro@gmail.com', 5),
(6, 'Marina Duarte', '1995-07-25', '11922221111', 'marina@gmail.com', 1),
(7, 'Lucas Rocha', '1998-03-17', '11933334444', 'lucas@gmail.com', 2),
(8, 'Bruno Ferreira', '1992-09-12', '11987654321', 'bruno@gmail.com', 6),
(9, 'Larissa Martins', '1987-02-28', '11911223344', 'larissa@gmail.com', 7),
(10, 'Diego Oliveira', '1993-12-05', '11922334455', 'diego@gmail.com', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `num` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP', '01001-000'),
(2, 'Av. Brasil', '456', 'Jardins', 'São Paulo', 'SP', '01401-000'),
(3, 'Rua A', '10', 'Bela Vista', 'Campinas', 'SP', '13015-001'),
(4, 'Rua B', '22', 'Centro', 'Santos', 'SP', '11010-000'),
(5, 'Rua C', '77', 'Centro', 'Ribeirão Preto', 'SP', '14010-000'),
(6, 'Rua das Palmeiras', '88', 'Centro', 'Sorocaba', 'SP', '18010-000'),
(7, 'Av. São João', '500', 'Santa Cecília', 'São Paulo', 'SP', '01211-000'),
(8, 'Rua Tuiuti', '99', 'Bosque', 'Campinas', 'SP', '13026-000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Ford'),
(4, 'Chevrolet'),
(5, 'Volkswagen'),
(6, 'Fiat'),
(7, 'Hyundai'),
(8, 'Nissan'),
(9, 'Renault'),
(10, 'Jeep');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `codmarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Hilux', 1),
(3, 'Yaris', 1),
(4, 'Civic', 2),
(5, 'Fit', 2),
(6, 'HR-V', 2),
(7, 'Fiesta', 3),
(8, 'Ka', 3),
(9, 'EcoSport', 3),
(10, 'Onix', 4),
(11, 'Prisma', 4),
(12, 'Tracker', 4),
(13, 'Gol', 5),
(14, 'Polo', 5),
(15, 'T-Cross', 5),
(16, 'Uno', 6),
(17, 'Argo', 6),
(18, 'Toro', 6),
(19, 'HB20', 7),
(20, 'Creta', 7),
(21, 'Azera', 7),
(22, 'March', 8),
(23, 'Versa', 8),
(24, 'Kicks', 8),
(25, 'Sandero', 9),
(26, 'Logan', 9),
(27, 'Duster', 9),
(28, 'Renegade', 10),
(29, 'Compass', 10),
(30, 'Commander', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(100) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`) VALUES
(1, 'Lavagem Simples', 30.00),
(2, 'Lavagem Completa', 50.00),
(3, 'Higienização de Estofado', 100.00),
(4, 'Cristalização', 120.00),
(5, 'Lavagem Técnica de Motor', 80.00),
(6, 'Descontaminação de Pintura', 150.00),
(7, 'Enceramento Manual', 90.00),
(8, 'Hidratação de Couro', 120.00),
(9, 'Limpeza de Tapetes', 40.00),
(10, 'Higienização de Ar-Condicionado', 100.00),
(11, 'Revitalização de Faróis', 70.00),
(12, 'Impermeabilização de Estofados', 140.00),
(13, 'Vitrificação de Vidros', 50.00),
(14, 'Aspirador Interno', 25.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codos`),
  ADD KEY `codcarro` (`codcarro`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codsatendimentoservico`),
  ADD KEY `codos` (`codos`),
  ADD KEY `codservico` (`codservico`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codendereco` (`codendereco`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `codmarca` (`codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `codsatendimentoservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codcarro`) REFERENCES `carro` (`codcarro`);

--
-- Restrições para tabelas `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`codos`) REFERENCES `atendimento` (`codos`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`codservico`) REFERENCES `servico` (`codservico`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
