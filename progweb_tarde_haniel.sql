-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 19:30
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
-- Banco de dados: `progweb_tarde_haniel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL COMMENT 'nome completo do cliente',
  `email` varchar(150) NOT NULL COMMENT 'endereço de e-mail do cliente ',
  `telefone` varchar(15) NOT NULL COMMENT 'número de telefone com DDD do cliente',
  `endereco` text NOT NULL COMMENT 'endereço completo do cliente',
  `data_nascimento` date NOT NULL COMMENT 'data de nmascimento do cliente',
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(1, 'haniel Reinaldo Barbosa Soare', 'hanielsoares29@gmail.co', '51 9932976', 'Rua 8 nova Guaiba, Bom fim velh', '2008-05-29', '2024-12-11 19:00:46'),
(2, 'Yago Rodrigues', 'dvieira@yahoo.com.br', '(081) 7163-0000', 'Rodovia de Azevedo, 25, Vila Atila De Paiva, 16588-959 da Costa de da Paz / MS', '1982-10-21', '2024-12-11 17:42:55'),
(3, 'Ana Carolina da Mata', 'leonardoduarte@gmail.com', '(031) 5743 6173', 'Campo Ramos, Beija Flor, 40902337 da Cunha de Minas / PR', '1977-01-15', '2024-12-11 17:42:55'),
(4, 'Brenda Moraes', 'bda-rocha@pinto.com', '+55 61 2418 730', 'Passarela Barbosa, 168, Nossa Senhora Do Rosário, 13945-901 Farias de Lopes / MG', '1971-01-22', '2024-12-11 17:42:55'),
(5, 'Dra. Laís Lima', 'pauloalves@aragao.br', '+55 (081) 9867-', 'Vila da Mota, 31, Casa Branca, 85245-384 Rezende da Mata / PI', '1949-12-03', '2024-12-11 17:42:55'),
(6, 'Gustavo Santos', 'camposjulia@gmail.com', '61 7535 0641', 'Lago de Fernandes, 67, Barreiro, 13713100 Porto / AC', '1951-09-28', '2024-12-11 17:42:55'),
(7, 'Dr. Nathan das Neves', 'vieiramarcelo@gmail.com', '+55 (041) 9526 ', 'Alameda de Nunes, 546, Custodinha, 31422107 Fernandes / RJ', '1985-09-07', '2024-12-11 17:53:21'),
(8, 'Luigi Cardoso', 'cardosoheitor@costa.com', '0800-726-0998', 'Aeroporto Rafael Fogaça, 43, Mangabeiras, 60131681 Moraes do Amparo / SP', '1995-09-27', '2024-12-11 17:53:21'),
(9, 'Daniel Oliveira', 'emanuelly48@moraes.br', '81 9619 0398', 'Viaduto de das Neves, 60, Vila Havaí, 02329972 Martins de Rezende / MT', '2000-06-17', '2024-12-11 17:53:21'),
(10, 'Anthony Souza', 'santospietro@barros.org', '+55 81 5546-564', 'Estrada Nicolas da Conceição, 54, Casa Branca, 11628-527 das Neves Alegre / DF', '1953-11-03', '2024-12-11 17:53:21'),
(11, 'Milena da Paz', 'milenafreitas@ig.com.br', '+55 84 3233 159', 'Aeroporto Fernandes, 894, Vila Paquetá, 58222-346 Jesus / PR', '1954-07-29', '2024-12-11 17:53:21'),
(12, 'Stephany Pires', 'das-nevesisadora@yahoo.com.br', '+55 (051) 8709-', 'Parque de Rocha, 8, Nova Suíça, 43426-577 Pires / DF', '1994-02-07', '2024-12-11 17:53:21'),
(13, 'Lara Nunes', 'thomasda-costa@farias.org', '(011) 4203-2600', 'Largo Vitor Ferreira, 6, Marilandia, 04592857 da Mota / PB', '1960-04-26', '2024-12-11 17:53:21'),
(14, 'Dra. Melissa Nascimento', 'catarina86@hotmail.com', '(051) 8175 2620', 'Praça de Araújo, 23, São Francisco Das Chagas, 16569310 Ramos Paulista / RJ', '1953-05-10', '2024-12-11 17:53:21'),
(15, 'Sr. João Felipe da Mata', 'nicole24@yahoo.com.br', '51 6791 4513', 'Viela Correia, 879, Manacas, 81069600 Gomes / RR', '1989-05-13', '2024-12-11 17:53:21'),
(16, 'Sofia da Paz', 'xbarros@almeida.com', '(021) 4703 4340', 'Travessa Cavalcanti, 80, Prado, 31687-713 Mendes Verde / SP', '1999-01-09', '2024-12-11 17:53:21'),
(17, 'Dra. Isabel Azevedo', 'azevedoana-beatriz@ramos.com', '(011) 9082 7073', 'Aeroporto de Ramos, 95, Piratininga, 16768009 Caldeira / AC', '1986-11-10', '2024-12-11 17:53:21'),
(18, 'Sr. João Lucas Nascimento', 'falmeida@hotmail.com', '31 8639-9997', 'Vereda Gustavo Ribeiro, 52, Vila Da Ária, 88164-069 da Cunha / RS', '1967-02-27', '2024-12-11 17:53:21'),
(19, 'Vinicius Cardoso', 'isabellylopes@bol.com.br', '41 2062 2781', 'Vale Pedro Miguel Rezende, 15, Santa Rita De Cássia, 55770081 Monteiro da Praia / BA', '1981-11-01', '2024-12-11 17:53:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `email`, `senha`, `data`) VALUES
(1, 'Haniel Soares', 'hanielsoares29@gmail.com', '272beba3d98b156a1cd83131f21736c0', '2024-11-29 17:16:04'),
(3, 'alex soares', 'alexsoares88@gmail.com', '550a141f12de6341fba65b0ad0433500', '2024-11-29 17:20:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` enum('PP','P','M','G','GG','XG') NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `categoria`, `marca`, `cor`, `preco`, `imagem`, `data`) VALUES
(1, 'Camiseta do Grêmio Tricolor.', 'Na parte superior do manto estão outros detalhes celestes do Grêmio. A vestimenta também carrega o escudo do Imortal que remete a versão utilizada na década de 1970, quando o Clube homenageou Everaldo pelo título da Copa do Mundo e eternizou sua estrela estampada na bandeira Tricolor.', 'P', 'Camiseta de Time.', 'Umbro', 'Azul Celeste, Preto e Branca com  as Cores Tradicionais do Tricolor.', 299.99, '', '2024-12-03 17:29:06'),
(3, 'Camiseta da Argentina Primaria.', 'Inspirada na história vitoriosa da seleção, a nova camisa titular da Argentina combina tradição e modernidade em um design elegante e marcante.', 'G', 'Camiseta de time.', 'Adidas.', ' O branco predomina, simbolizando a pureza e a garra dos jogadores argentinos, enquanto as três listras verticais em azul celeste representam a paixão e o orgulho nacional.', 259.99, '', '2024-12-03 20:03:31');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
