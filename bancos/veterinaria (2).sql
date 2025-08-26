-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2025 às 17:28
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veterinaria`
--
CREATE DATABASE IF NOT EXISTS `veterinaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veterinaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `especie` varchar(150) DEFAULT NULL,
  `raca` varchar(150) DEFAULT NULL,
  `peso` varchar(150) DEFAULT NULL,
  `cor` varchar(150) DEFAULT NULL,
  `sexo` varchar(150) DEFAULT NULL,
  `codAnimal` int(11) NOT NULL,
  `codDono` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`especie`, `raca`, `peso`, `cor`, `sexo`, `codAnimal`, `codDono`, `nome`) VALUES
('Cachorro', 'SRD', '5.5', 'Preto', 'Macho', 1, 1, 'Rex'),
('Cachorro', 'Labrador', '35.3', 'Preto', 'Macho', 2, 1, 'Max'),
('Cachorro', 'Labrador', '35.6', 'Preto', 'Macho', 3, 3, 'Thor'),
('Gato', 'SRD', '3.5', 'Malhada', 'Fêmea', 4, 2, 'Mia'),
('Calopsita', 'Arlequim', '0.7', 'Albina', 'Fêmea', 5, 2, 'Luna'),
('Cobra', 'Jibóia', '50.0', 'Amarela', 'Fêmea', 6, 4, 'Kaa'),
('Cachorro', 'Beagle', '20.5', 'Marrom e Branco', 'Macho', 7, 5, 'Buddy'),
('Gato', 'Angorá', '7.5', 'Cinza', 'Macho', 8, 6, 'Snow'),
('Chinchila', 'Aracara', '0.5', 'Marrom', 'Macho', 9, 7, 'Nino'),
('Gato', 'SRD', '9.0', 'Azul', 'Macho', 10, 8, 'Blue'),
('Porco', 'Deractori', '4.5', 'Rosa', 'Macho', 11, 9, 'Pinky'),
('Papagaio', 'Amazona', '0.8', 'Verde', 'Macho', 12, 10, 'Loro'),
('Coelho', 'Angorá', '2.2', 'Branco', 'Fêmea', 13, 10, 'Mel'),
('Hamster', 'Sírio', '0.3', 'Marrom', 'Fêmea', 14, 3, 'Lili'),
('Pássaro Canário', 'Canário da Terra', '0.2', 'Amarelo', 'Macho', 15, 5, 'Canarinho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendende`
--

CREATE TABLE `atendende` (
  `codAtend` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telFixo` varchar(150) DEFAULT NULL,
  `telCel` varchar(150) DEFAULT NULL,
  `rg` varchar(150) DEFAULT NULL,
  `cpf` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendende`
--

INSERT INTO `atendende` (`codAtend`, `nome`, `email`, `telFixo`, `telCel`, `rg`, `cpf`) VALUES
(1, 'Carolina Carrera', 'carolina@gmail.com', '11-2222-2222', '11-98888-7777', '33.456.555-9', '345.345.567-09'),
(2, 'Samanta Adelina', 'samanta@gmail.com', '11-43434-3333', '11-96666-2222', '33.444.555-9', '333.333.333-33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta_agenda`
--

CREATE TABLE `consulta_agenda` (
  `codCons` int(11) NOT NULL,
  `preco` varchar(150) DEFAULT NULL,
  `hora` varchar(150) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `diagnostico` varchar(150) DEFAULT NULL,
  `codDono` int(11) DEFAULT NULL,
  `codAtend` int(11) DEFAULT NULL,
  `codAnimal` int(11) DEFAULT NULL,
  `codVet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `consulta_agenda`
--

INSERT INTO `consulta_agenda` (`codCons`, `preco`, `hora`, `data`, `diagnostico`, `codDono`, `codAtend`, `codAnimal`, `codVet`) VALUES
(1, '120.00', '10:00', '2025-08-10', 'Vacinação anual', 1, 1, 1, 1),
(2, '200.00', '11:00', '2025-08-10', 'Consulta de rotina', 1, 2, 2, 2),
(3, '180.00', '14:00', '2025-08-11', 'Exame de sangue', 3, 1, 3, 1),
(4, '150.00', '15:30', '2025-08-11', 'Consulta dermatológica', 2, 2, 4, 2),
(5, '90.00', '09:30', '2025-08-12', 'Avaliação de penas', 2, 1, 5, 1),
(6, '300.00', '16:00', '2025-08-12', 'Avaliação digestiva', 4, 2, 6, 2),
(7, '170.00', '10:15', '2025-08-13', 'Otite canina', 5, 1, 7, 1),
(8, '160.00', '11:45', '2025-08-13', 'Consulta respiratória', 6, 2, 8, 2),
(9, '130.00', '09:00', '2025-08-14', 'Avaliação odontológica', 7, 1, 9, 1),
(10, '140.00', '13:30', '2025-08-14', 'Consulta renal', 8, 2, 10, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dono`
--

CREATE TABLE `dono` (
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telFixo` varchar(150) DEFAULT NULL,
  `telCel` varchar(150) DEFAULT NULL,
  `cpf` varchar(150) DEFAULT NULL,
  `rg` varchar(150) DEFAULT NULL,
  `codDono` int(11) NOT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `cep` varchar(150) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `dono`
--

INSERT INTO `dono` (`nome`, `email`, `telFixo`, `telCel`, `cpf`, `rg`, `codDono`, `logradouro`, `num`, `complemento`, `bairro`, `cidade`, `cep`, `uf`) VALUES
('Cíntia Pinho', 'cintia@gmail.com', '11-34567-8765', '11-54329-9876', '234.456.987-54', '11.34567-8765', 1, 'Rua A', 10, '', 'Centro', 'São Paulo', '01000-000', 'SP'),
('Alberto de Souza', 'alberto@gmail.com', '11-8765-8765', '11-99999-8888', '234.654.234-09', '43.432.432-9', 2, 'Rua B', 20, 'Apto 2', 'Jardim', 'São Paulo', '02000-000', 'SP'),
('Carlina de Almeida Silva', 'carlina@gmail.com', '11-2345-2335', '11-11111-2222', '234.765.987-09', '12.123.123-7', 3, 'Rua C', 30, '', 'Moema', 'São Paulo', '04000-000', 'SP'),
('Josefina Aguiar dos Santos', 'josefina@gmail.com', '11-2222-3345', '11-99999-6666', '333.333.444-09', '11.222.3345', 4, 'Rua DD', 40, '', 'Vila Madalena', 'São Paulo', '05400-000', 'SP'),
('Carlos de Souza Augusto', 'carlos@gmail.com', '11-8888-9999', '11-77777-4444', '333.555.666-98', '33.444.555-6', 5, 'Av. Jacobina', 100, '', 'Pinheiros', 'São Paulo', '05000-000', 'SP'),
('Amora Amorim', 'amora@gmail.com', '11-34567-5555', '11-55555-9876', '222.456.987-54', '23.445.765-0', 6, 'Rua Japão', 15, '', 'Liberdade', 'São Paulo', '01500-000', 'SP'),
('Augusto de Pinto', 'augusto@gmail.com', '11-7676-8765', '11-87878-8888', '666.654.234-09', '55.432.432-9', 7, 'Rua Estema', 25, '', 'Brooklin', 'São Paulo', '04600-000', 'SP'),
('Estela Cardoso', 'estela@gmail.com', '11-98766-2335', '11-88888-2222', '234.666.000-09', '22.222.123-7', 8, 'Rua Caraca', 50, '', 'Itaim', 'São Paulo', '04500-000', 'SP'),
('Amanda Barbosa', 'amanda@gmail.com', '11-66666-7777', '11-44444-8888', '444.777.888-66', '44.555.666-7', 9, 'Rua Pérola', 60, '', 'Brooklin', 'São Paulo', '04600-000', 'SP'),
('Bruno Ferreira', 'bruno@gmail.com', '11-33333-1111', '11-22222-3333', '555.222.111-33', '55.666.777-8', 10, 'Rua Flamengo', 70, 'Casa', 'Lapa', 'São Paulo', '05000-000', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `nome` varchar(150) DEFAULT NULL,
  `telFixo` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telCel` varchar(150) DEFAULT NULL,
  `cpf` varchar(150) DEFAULT NULL,
  `crmv` varchar(150) DEFAULT NULL,
  `codVet` int(11) NOT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `num` varchar(150) DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veterinario`
--

INSERT INTO `veterinario` (`nome`, `telFixo`, `email`, `telCel`, `cpf`, `crmv`, `codVet`, `logradouro`, `num`, `complemento`, `bairro`, `cidade`, `uf`, `cep`) VALUES
('Jéssica Pinho', '11-1111-2222', 'jessica@gmail.com', '11-98776-9876', '234.234.765-09', '23405-6', 1, 'Rua Alameda Deida', '9876', '', 'Centro', 'São Paulo', 'SP', '01000-000'),
('Aroldo Sofito', '11-2222-9999', 'aroldo@gmail.com', '11-23456-9999', '223.222.333-98', '54324-9', 2, 'Rua Ceideme', '654', 'Apto 1', 'Jardim', 'São Paulo', 'SP', '02000-000');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`codAnimal`),
  ADD KEY `codDono` (`codDono`);

--
-- Índices para tabela `atendende`
--
ALTER TABLE `atendende`
  ADD PRIMARY KEY (`codAtend`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `consulta_agenda`
--
ALTER TABLE `consulta_agenda`
  ADD PRIMARY KEY (`codCons`),
  ADD KEY `codAtend` (`codAtend`),
  ADD KEY `codVet` (`codVet`),
  ADD KEY `codDono` (`codDono`),
  ADD KEY `codAnimal` (`codAnimal`);

--
-- Índices para tabela `dono`
--
ALTER TABLE `dono`
  ADD PRIMARY KEY (`codDono`);

--
-- Índices para tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`codVet`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `codAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `atendende`
--
ALTER TABLE `atendende`
  MODIFY `codAtend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `consulta_agenda`
--
ALTER TABLE `consulta_agenda`
  MODIFY `codCons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `dono`
--
ALTER TABLE `dono`
  MODIFY `codDono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `codVet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`codDono`) REFERENCES `dono` (`codDono`);

--
-- Limitadores para a tabela `consulta_agenda`
--
ALTER TABLE `consulta_agenda`
  ADD CONSTRAINT `consulta_agenda_ibfk_1` FOREIGN KEY (`codAtend`) REFERENCES `atendende` (`codAtend`),
  ADD CONSTRAINT `consulta_agenda_ibfk_2` FOREIGN KEY (`codVet`) REFERENCES `veterinario` (`codVet`),
  ADD CONSTRAINT `consulta_agenda_ibfk_3` FOREIGN KEY (`codDono`) REFERENCES `dono` (`codDono`),
  ADD CONSTRAINT `consulta_agenda_ibfk_4` FOREIGN KEY (`codAnimal`) REFERENCES `animal` (`codAnimal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
