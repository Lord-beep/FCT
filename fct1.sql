-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Mar-2021 às 14:56
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fct1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigos`
--

CREATE TABLE `artigos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `votos` int(11) NOT NULL,
  `pontos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`id`, `titulo`, `votos`, `pontos`) VALUES
(1, 'Partilhe connosco a sua avaliação', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL,
  `qnt_estrelas` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `produtoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id`, `qnt_estrelas`, `created`, `modified`, `produtoid`) VALUES
(1, 3, '2021-02-19 15:06:32', NULL, 1),
(2, 3, '2021-02-19 15:07:28', NULL, 1),
(7, 5, '2021-03-04 14:58:56', NULL, 1),
(8, 3, '2021-03-12 12:23:50', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Assuntos` varchar(200) NOT NULL,
  `Mensagem` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contacto`
--

INSERT INTO `contacto` (`id`, `Nome`, `Email`, `Assuntos`, `Mensagem`) VALUES
(1, 'Miguel Santos', 'miganvsantos@gmail.com', 'adadad', 'adad'),
(5, 'Miguel Santos', 'miganvsantos@gmail.com', 'aa', 'adad'),
(6, 'Miguel Santos', 'miganvsantos@gmail.com', 'dadad', 'adadda'),
(7, 'Miguel Santos', 'miganvsantos@gmail.com', 'agd', 'dada'),
(8, 'Miguel Santos', 'miganvsantos@gmail.com', 'ada', 'add'),
(9, 'Jarvido', 'jarvido@gmail.com', 'FCT', 'Ta quase tudo feito');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `desc1` varchar(500) NOT NULL,
  `desc2` varchar(700) NOT NULL,
  `promovid` int(11) NOT NULL,
  `Url` varchar(500) NOT NULL,
  `subtit` varchar(500) NOT NULL,
  `titulo2` varchar(500) NOT NULL,
  `subtit2` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id`, `titulo`, `desc1`, `desc2`, `promovid`, `Url`, `subtit`, `titulo2`, `subtit2`) VALUES
(1, 'Eurofio', '\r\n				Para conhecer melhor a eurofio vamos fazer uma pequena introdução.\r\n				Fundada em 2000, resultante da necessidade de validar os moldes realizados na EROFIO S.A.. \r\n				Inicia o seu crescimento com o estabelecimento de relações duradouras com os clientes que nela \r\n				confiaram para produzir componentes plásticos em série.', 'O Grupo EUROFIO especializou-se no fornecimento de soluções para a indústria de injeção de termoplásticos, utilizando a melhor tecnologia disponível para o projeto, produção e controle de qualidade no fornecimento de moldes e injeção plástica.\r\n				Procuramos a construção de verdadeiras parcerias com os nossos clientes, de forma a apoiarmo-nos mutuamente no crescimento que desejamos.\r\n				As empresas do grupo primam pela diferenciação em rigor e qualidade, investindo em tecnologia, equipamento e formação dos seus colaboradores, respondendo estes com motivação, produtividade e inovação, dando forma à estratégia de diferenciação pela excelência do serviço prestado', 1, 'https://www.youtube.com/embed/xMIuk_RlS9Y', 'AQUI PODE CONHECER UM POUCO SOBRE A EUROFIO', 'Eurofio', 'O grupo Eurofio'),
(2, 'Bem Vindo', 'A funcionalidade do jogo consiste num personagem que se pode movimentar livremente num cenário, com o objetivo de passar diversas fases. Cada fase tem um checkpoint para quando a personagem “morrer” não começar do início, mas sim para passar ao próximo nível. Para dificultar a passagem das fases, existem vários obstáculos, tais como serras, picos, plataformas que caem, trampolins, mobs. Com a finalidade de tornar o jogo mais desafiante foram colocados outros objetos (frutas) para serem recolhido', '', 0, 'https://www.youtube.com/embed/BMWKMyn9ls4', 'Aqui pode conhecer um pouco sobre o meu jogo PixelGame', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `usertype` varchar(200) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `artigos`
--
ALTER TABLE `artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `artigos`
--
ALTER TABLE `artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
