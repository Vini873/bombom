-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Dez-2023 às 13:21
-- Versão do servidor: 8.0.21
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbdbdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anamnese_emergencia_medica`
--

CREATE TABLE `anamnese_emergencia_medica` (
  `idAnamnese_Emergencia_Medica` int NOT NULL,
  `que_aconteceu` text NOT NULL,
  `vezes_aconteceu` varchar(3) NOT NULL,
  `tempo_aconteceu` text NOT NULL,
  `problema_saude` varchar(3) NOT NULL,
  `qual_problema` text NOT NULL,
  `uso_medicacao` varchar(3) NOT NULL,
  `horario_medicacao` time NOT NULL,
  `qual_medicacao` text NOT NULL,
  `alergico` varchar(3) NOT NULL,
  `qual_alergia` text NOT NULL,
  `ingeriu_alimentos` varchar(3) NOT NULL,
  `ingeriu_horas` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anamnese_emergencia_medica`
--

INSERT INTO `anamnese_emergencia_medica` (`idAnamnese_Emergencia_Medica`, `que_aconteceu`, `vezes_aconteceu`, `tempo_aconteceu`, `problema_saude`, `qual_problema`, `uso_medicacao`, `horario_medicacao`, `qual_medicacao`, `alergico`, `qual_alergia`, `ingeriu_alimentos`, `ingeriu_horas`) VALUES
(52, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(53, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(54, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(55, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(56, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(57, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(58, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(59, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(60, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(61, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(62, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(63, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(64, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(65, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(66, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(67, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(68, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(69, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(70, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(71, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(72, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(73, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(74, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(75, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(76, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(77, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(78, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(79, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(80, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(81, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(82, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(83, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(84, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(85, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(86, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(87, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(88, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(89, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(90, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00'),
(91, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `idAnamnese_Gestacional` int NOT NULL,
  `tempoGestacao` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fezPreNatal` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomeMedico` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `complicacoes` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primeiroFilho` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numFilhos` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inicioContracoes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duracaoContracoes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `intervaloContracoes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pressaoQuadril` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rupturaBolsa` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inspecaoVisual` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `partoRealizado` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `horaNascimento` time DEFAULT NULL,
  `bebeSexo` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bebeNome` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `anamnese_gestacional`
--

INSERT INTO `anamnese_gestacional` (`idAnamnese_Gestacional`, `tempoGestacao`, `fezPreNatal`, `nomeMedico`, `complicacoes`, `primeiroFilho`, `numFilhos`, `inicioContracoes`, `duracaoContracoes`, `intervaloContracoes`, `pressaoQuadril`, `rupturaBolsa`, `inspecaoVisual`, `partoRealizado`, `horaNascimento`, `bebeSexo`, `bebeNome`) VALUES
(80, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(81, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(82, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(83, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(84, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(85, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(86, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(87, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(88, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(89, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(90, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(91, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(92, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(93, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(94, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(95, '', '', '', '', '', '0', '', '', '', '', '', '', '', '00:00:00', '', ''),
(96, '', '', '', '', '', '1', '', '', '', '', '', '', '', '00:00:00', '', ''),
(97, '', '', '', '', '', '1', '', '', '', '', '', '', '', '00:00:00', '', ''),
(98, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(99, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(100, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(101, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(102, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(103, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(104, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(105, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(106, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(107, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(108, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(109, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(110, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(111, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(112, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(113, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(114, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(115, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(116, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(117, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(118, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', ''),
(119, '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path` blob,
  `data_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome`, `path`, `data_upload`) VALUES
(1, 'oi.jfif', 0x6172717569766f732f363537316134363037616433652e6a666966, NULL),
(2, 'Captura de tela 2023-10-23 103008.png', 0x2e2e2f75706c6f61642f6172717569766f732f363537316234363433643365312e706e67, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao_cinematica`
--

CREATE TABLE `avaliacao_cinematica` (
  `idAvaliacao_Cinematica` int NOT NULL,
  `disturbio_comportamento` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `encontra_capacete` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `encontrado_cinto` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `para_brisa_avariado` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caminhando_na_cena` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `painel_avariado` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `volante_torcido` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `avaliacao_cinematica`
--

INSERT INTO `avaliacao_cinematica` (`idAvaliacao_Cinematica`, `disturbio_comportamento`, `encontra_capacete`, `encontrado_cinto`, `para_brisa_avariado`, `caminhando_na_cena`, `painel_avariado`, `volante_torcido`) VALUES
(227, '', '', '', '', '', '', ''),
(228, '', '', '', '', '', '', ''),
(229, '', '', '', '', '', '', ''),
(230, '', '', '', '', '', '', ''),
(231, '', '', '', '', '', '', ''),
(232, '', '', '', '', '', '', ''),
(233, '', '', '', '', '', '', ''),
(234, '', '', '', '', '', '', ''),
(235, '', '', '', '', '', '', ''),
(236, '', '', '', '', '', '', ''),
(237, '', '', '', '', '', '', ''),
(238, '', '', '', '', '', '', ''),
(239, '', '', '', '', '', '', ''),
(240, '', '', '', '', '', '', ''),
(241, '', '', '', '', '', '', ''),
(242, '', '', '', '', '', '', ''),
(243, '', '', '', '', '', '', ''),
(244, '', '', '', '', '', '', ''),
(245, '', '', '', '', '', '', ''),
(246, '', '', '', '', '', '', ''),
(247, '', '', '', '', '', '', ''),
(248, '', '', '', '', '', '', ''),
(249, '', '', '', '', '', '', ''),
(250, '', '', '', '', '', '', ''),
(251, '', '', '', '', '', '', ''),
(252, '', '', '', '', '', '', ''),
(253, '', '', '', '', '', '', ''),
(254, '', '', '', '', '', '', ''),
(255, '', '', '', '', '', '', ''),
(256, '', '', '', '', '', '', ''),
(257, '', '', '', '', '', '', ''),
(258, '', '', '', '', '', '', ''),
(259, '', '', '', '', '', '', ''),
(260, '', '', '', '', '', '', ''),
(261, '', '', '', '', '', '', ''),
(262, '', '', '', '', '', '', ''),
(263, '', '', '', '', '', '', ''),
(264, '', '', '', '', '', '', ''),
(265, '', '', '', '', '', '', ''),
(266, '', '', '', '', '', '', ''),
(267, '', '', '', '', '', '', ''),
(268, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao_glasgow`
--

CREATE TABLE `avaliacao_glasgow` (
  `idAvaliacao_Glasgow` int NOT NULL,
  `Abertura_Ocular` varchar(99) DEFAULT NULL,
  `Resposta_Verbal` varchar(99) DEFAULT NULL,
  `Resposta_Motora` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `avaliacao_glasgow`
--

INSERT INTO `avaliacao_glasgow` (`idAvaliacao_Glasgow`, `Abertura_Ocular`, `Resposta_Verbal`, `Resposta_Motora`) VALUES
(172, '', '', ''),
(173, '', '', ''),
(174, '', '', ''),
(175, '', '', ''),
(176, '', '', ''),
(177, '', '', ''),
(178, '', '', ''),
(179, '', '', ''),
(180, '', '', ''),
(181, '', '', ''),
(182, '', '', ''),
(183, '', '', ''),
(184, '', '', ''),
(185, '', '', ''),
(186, '', '', ''),
(187, '', '', ''),
(188, '', '', ''),
(189, '', '', ''),
(190, '', '', ''),
(191, '', '', ''),
(192, '', '', ''),
(193, '', '', ''),
(194, '', '', ''),
(195, '', '', ''),
(196, '', '', ''),
(197, '', '', ''),
(198, '', '', ''),
(199, '', '', ''),
(200, '', '', ''),
(201, '', '', ''),
(202, '', '', ''),
(203, '', '', ''),
(204, '', '', ''),
(205, '', '', ''),
(206, '', '', ''),
(207, '', '', ''),
(208, '', '', ''),
(209, '', '', ''),
(210, '', '', ''),
(211, '', '', ''),
(212, '', '', ''),
(213, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fichas`
--

CREATE TABLE `fichas` (
  `id_fichas` int NOT NULL,
  `data_ficha` date NOT NULL,
  `idPaciente` int DEFAULT NULL,
  `idAvaliacao_Glasgow` int DEFAULT NULL,
  `idSinais_Vitais` int DEFAULT NULL,
  `idProblemas_Encontrados` int DEFAULT NULL,
  `idSinais_e_Sintomas` int DEFAULT NULL,
  `idProcedimentos_Efetuados` int DEFAULT NULL,
  `idMateriais_Utilizados_Descartavel` int DEFAULT NULL,
  `idMateriais_Utilizados_Deixados` int DEFAULT NULL,
  `idAnamnese_Emergencia_Medica` int NOT NULL,
  `idAnamnese_Gestacional` int NOT NULL,
  `idAvaliacao_Cinematica` int NOT NULL,
  `idObjetos_Recolhidos` int NOT NULL,
  `idObservacoes_Importantes` int NOT NULL,
  `idTipo_de_Ocorrencia` int NOT NULL,
  `idDecisao_Transporte` int NOT NULL,
  `idDetalhes_Viagem` int NOT NULL,
  `idForma_de_Conducao` int NOT NULL,
  `idTransporte_Vitima_Era` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fichas`
--

INSERT INTO `fichas` (`id_fichas`, `data_ficha`, `idPaciente`, `idAvaliacao_Glasgow`, `idSinais_Vitais`, `idProblemas_Encontrados`, `idSinais_e_Sintomas`, `idProcedimentos_Efetuados`, `idMateriais_Utilizados_Descartavel`, `idMateriais_Utilizados_Deixados`, `idAnamnese_Emergencia_Medica`, `idAnamnese_Gestacional`, `idAvaliacao_Cinematica`, `idObjetos_Recolhidos`, `idObservacoes_Importantes`, `idTipo_de_Ocorrencia`, `idDecisao_Transporte`, `idDetalhes_Viagem`, `idForma_de_Conducao`, `idTransporte_Vitima_Era`) VALUES
(4, '0000-00-00', 367, 185, 305, 86, 246, 355, 67, 65, 65, 93, 240, 270, 343, 374, 196, 115, 327, 247),
(5, '0000-00-00', 368, 186, 306, 87, 247, 356, 68, 66, 66, 94, 241, 271, 344, 375, 197, 116, 328, 248),
(6, '0000-00-00', 369, 187, 307, 88, 248, 357, 69, 67, 67, 95, 242, 272, 345, 376, 198, 117, 329, 249),
(7, '1010-10-10', 371, 189, 309, 89, 250, 358, 70, 68, 68, 96, 244, 274, 347, 378, 200, 119, 331, 251),
(8, '1010-10-10', 373, 191, 311, 90, 252, 359, 71, 69, 69, 97, 246, 276, 349, 380, 202, 121, 333, 253),
(9, '1010-10-10', 374, 192, 312, 91, 253, 360, 72, 70, 70, 98, 247, 277, 350, 381, 203, 122, 334, 254),
(10, '1111-11-11', 379, 197, 317, 96, 258, 365, 77, 75, 75, 103, 252, 282, 355, 386, 208, 127, 339, 259),
(11, '2023-01-01', 380, 198, 318, 97, 259, 366, 78, 76, 76, 104, 253, 283, 356, 387, 209, 128, 340, 260),
(12, '2023-01-01', 381, 199, 319, 98, 260, 367, 79, 77, 77, 105, 254, 284, 357, 388, 210, 129, 341, 261),
(13, '2023-01-01', 382, 200, 320, 99, 261, 368, 80, 78, 78, 106, 255, 285, 358, 389, 211, 130, 342, 262),
(14, '2023-01-01', 383, 201, 321, 100, 262, 369, 81, 79, 79, 107, 256, 286, 359, 390, 212, 131, 343, 263),
(15, '2023-01-01', 384, 202, 322, 101, 263, 370, 82, 80, 80, 108, 257, 287, 360, 391, 213, 132, 344, 264),
(16, '2023-12-07', 385, 203, 323, 102, 264, 371, 83, 81, 81, 109, 258, 288, 361, 392, 214, 133, 345, 265),
(17, '2023-12-04', 386, 204, 324, 103, 265, 372, 84, 82, 82, 110, 259, 289, 362, 393, 215, 134, 346, 266),
(18, '2023-12-04', 387, 205, 325, 104, 266, 373, 85, 83, 83, 111, 260, 290, 363, 394, 216, 135, 347, 267),
(19, '2023-12-04', 388, 206, 326, 105, 267, 374, 86, 84, 84, 112, 261, 291, 364, 395, 217, 136, 348, 268),
(20, '2023-12-04', 389, 207, 327, 106, 268, 375, 87, 85, 85, 113, 262, 292, 365, 396, 218, 137, 349, 269),
(21, '2023-12-01', 390, 208, 328, 107, 269, 376, 88, 86, 86, 114, 263, 293, 366, 397, 219, 138, 350, 270),
(22, '2023-12-01', 391, 209, 329, 108, 270, 377, 89, 87, 87, 115, 264, 294, 367, 398, 220, 139, 351, 271),
(23, '1212-12-12', 392, 210, 330, 109, 271, 378, 90, 88, 88, 116, 265, 295, 368, 399, 221, 140, 352, 272),
(24, '1212-12-12', 393, 211, 331, 110, 272, 379, 91, 89, 89, 117, 266, 296, 369, 400, 222, 141, 353, 273),
(25, '1212-12-12', 394, 212, 332, 111, 273, 380, 92, 90, 90, 118, 267, 297, 370, 401, 223, 142, 354, 274),
(26, '2023-12-01', 395, 213, 333, 112, 274, 381, 93, 91, 91, 119, 268, 298, 371, 402, 224, 143, 355, 275);

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao_dos_traumas`
--

CREATE TABLE `localizacao_dos_traumas` (
  `idLocalizacao_dos_Traumas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `materiais_utilizados_deixados`
--

CREATE TABLE `materiais_utilizados_deixados` (
  `idMateriais_Utilizados_Deixados` int NOT NULL,
  `base` varchar(10) NOT NULL,
  `colar1` varchar(10) NOT NULL,
  `colar2` varchar(10) NOT NULL,
  `coxins` varchar(10) NOT NULL,
  `KED` varchar(10) NOT NULL,
  `maca` varchar(10) NOT NULL,
  `TTF` varchar(10) NOT NULL,
  `tirante_aranha` varchar(10) NOT NULL,
  `tirante_cabeca` varchar(10) NOT NULL,
  `canula` varchar(10) NOT NULL,
  `outro_campo1` varchar(99) NOT NULL,
  `outro_valor1` varchar(10) NOT NULL,
  `outro_campo2` varchar(99) NOT NULL,
  `outro_valor2` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `materiais_utilizados_deixados`
--

INSERT INTO `materiais_utilizados_deixados` (`idMateriais_Utilizados_Deixados`, `base`, `colar1`, `colar2`, `coxins`, `KED`, `maca`, `TTF`, `tirante_aranha`, `tirante_cabeca`, `canula`, `outro_campo1`, `outro_valor1`, `outro_campo2`, `outro_valor2`) VALUES
(52, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(82, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `materiais_utilizados_descartavel`
--

CREATE TABLE `materiais_utilizados_descartavel` (
  `idMateriais_Utilizados_Descartavel` int NOT NULL,
  `ataduras` varchar(10) NOT NULL,
  `cateter` varchar(10) NOT NULL,
  `compressa` varchar(10) NOT NULL,
  `kit` varchar(10) NOT NULL,
  `luvas` varchar(10) NOT NULL,
  `mascara` varchar(10) NOT NULL,
  `manta` varchar(10) NOT NULL,
  `pas` varchar(10) NOT NULL,
  `sonda` varchar(10) NOT NULL,
  `soro` varchar(10) NOT NULL,
  `talas` varchar(10) NOT NULL,
  `outro_nome` varchar(99) NOT NULL,
  `outro_valor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `materiais_utilizados_descartavel`
--

INSERT INTO `materiais_utilizados_descartavel` (`idMateriais_Utilizados_Descartavel`, `ataduras`, `cateter`, `compressa`, `kit`, `luvas`, `mascara`, `manta`, `pas`, `sonda`, `soro`, `talas`, `outro_nome`, `outro_valor`) VALUES
(54, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(82, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetos_recolhidos`
--

CREATE TABLE `objetos_recolhidos` (
  `idObjetos_Recolhidos` int NOT NULL,
  `objetos_recolhidos` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `objetos_recolhidos`
--

INSERT INTO `objetos_recolhidos` (`idObjetos_Recolhidos`, `objetos_recolhidos`) VALUES
(257, ''),
(258, ''),
(259, ''),
(260, ''),
(261, ''),
(262, ''),
(263, ''),
(264, ''),
(265, ''),
(266, ''),
(267, ''),
(268, ''),
(269, ''),
(270, ''),
(271, ''),
(272, ''),
(273, ''),
(274, ''),
(275, ''),
(276, ''),
(277, ''),
(278, ''),
(279, ''),
(280, ''),
(281, ''),
(282, ''),
(283, ''),
(284, ''),
(285, ''),
(286, ''),
(287, ''),
(288, ''),
(289, ''),
(290, ''),
(291, ''),
(292, ''),
(293, ''),
(294, ''),
(295, ''),
(296, ''),
(297, ''),
(298, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `observacoes_importantes`
--

CREATE TABLE `observacoes_importantes` (
  `idObservacoes_Importantes` int NOT NULL,
  `observacoes_importantes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `observacoes_importantes`
--

INSERT INTO `observacoes_importantes` (`idObservacoes_Importantes`, `observacoes_importantes`) VALUES
(330, ''),
(331, ''),
(332, ''),
(333, ''),
(334, ''),
(335, ''),
(336, ''),
(337, ''),
(338, ''),
(339, ''),
(340, ''),
(341, ''),
(342, ''),
(343, ''),
(344, ''),
(345, ''),
(346, ''),
(347, ''),
(348, ''),
(349, ''),
(350, ''),
(351, ''),
(352, ''),
(353, ''),
(354, ''),
(355, ''),
(356, ''),
(357, ''),
(358, ''),
(359, ''),
(360, ''),
(361, ''),
(362, ''),
(363, ''),
(364, ''),
(365, ''),
(366, ''),
(367, ''),
(368, ''),
(369, ''),
(370, ''),
(371, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int NOT NULL,
  `data_ocorrencia` date NOT NULL,
  `genero_paciente` varchar(9) NOT NULL,
  `nome_hospital` varchar(255) NOT NULL,
  `nome_paciente` varchar(45) DEFAULT NULL,
  `idade_paciente` varchar(5) DEFAULT NULL,
  `CPF_paciente` varchar(11) DEFAULT NULL,
  `telefone_paciente` varchar(12) DEFAULT NULL,
  `nome_acompanhante` varchar(45) DEFAULT NULL,
  `idade_acompanhante` varchar(5) DEFAULT NULL,
  `local_da_ocorrencia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `data_ocorrencia`, `genero_paciente`, `nome_hospital`, `nome_paciente`, `idade_paciente`, `CPF_paciente`, `telefone_paciente`, `nome_acompanhante`, `idade_acompanhante`, `local_da_ocorrencia`) VALUES
(354, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(355, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(356, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(357, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(358, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(359, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(360, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(361, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(362, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(363, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(364, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(365, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(366, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(367, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(368, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(369, '0000-00-00', '', '', '', '', '', '', '', '', ''),
(370, '1010-10-10', '', '', '', '123', '', '', '', '', ''),
(371, '1010-10-10', '', '', '', '123', '', '', '', '', ''),
(372, '1010-10-10', '', '', '', '', '', '', '', '', ''),
(373, '1010-10-10', '', '', '', '', '', '', '', '', ''),
(374, '1010-10-10', '', '', '', '', '', '', '', '', ''),
(375, '1010-10-10', '', '', '', '', '', '', '', '', ''),
(376, '1212-12-12', '', '', '', '', '', '', '', '', ''),
(377, '1212-12-12', '', '', '', '', '', '', '', '', ''),
(378, '1212-12-12', '', '', '', '', '', '', '', '', ''),
(379, '1111-11-11', '', '', '', '', '', '', '', '', ''),
(380, '2023-01-01', '', '', '', '', '', '', '', '', ''),
(381, '2023-01-01', '', '', '', '', '', '', '', '', ''),
(382, '2023-01-01', '', '', '', '', '', '', '', '', ''),
(383, '2023-01-01', '', '', '', '', '', '', '', '', ''),
(384, '2023-01-01', '', '', '', '', '', '', '', '', ''),
(385, '2023-12-07', '', '', '', '', '', '', '', '', ''),
(386, '2023-12-04', '', '', '', '', '', '', '', '', ''),
(387, '2023-12-04', '', '', '', '', '', '', '', '', ''),
(388, '2023-12-04', '', '', '', '', '', '', '', '', ''),
(389, '2023-12-04', '', '', '', '', '', '', '', '', ''),
(390, '2023-12-01', '', '', '', '', '', '', '', '', ''),
(391, '2023-12-01', '', '', '', '', '', '', '', '', ''),
(392, '1212-12-12', '', '', '', '', '', '', '', '', ''),
(393, '1212-12-12', '', '', '', '', '', '', '', '', ''),
(394, '1212-12-12', '', '', '', '', '', '', '', '', ''),
(395, '2023-12-01', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `problemas_encontrados`
--

CREATE TABLE `problemas_encontrados` (
  `idProblemas_Encontrados` int NOT NULL,
  `psiquiatrico` int NOT NULL,
  `obstetrico` varchar(99) NOT NULL,
  `respiratorio` varchar(99) NOT NULL,
  `diabetes` varchar(99) NOT NULL,
  `transporte` varchar(99) NOT NULL,
  `outros` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `problemas_encontrados`
--

INSERT INTO `problemas_encontrados` (`idProblemas_Encontrados`, `psiquiatrico`, `obstetrico`, `respiratorio`, `diabetes`, `transporte`, `outros`) VALUES
(73, 0, '', '', '', '', ''),
(74, 0, '', '', '', '', ''),
(75, 0, '', '', '', '', ''),
(76, 0, '', '', '', '', ''),
(77, 0, '', '', '', '', ''),
(78, 0, '', '', '', '', ''),
(79, 0, '', '', '', '', ''),
(80, 0, '', '', '', '', ''),
(81, 0, '', '', '', '', ''),
(82, 0, '', '', '', '', ''),
(83, 0, '', '', '', '', ''),
(84, 0, '', '', '', '', ''),
(85, 0, '', '', '', '', ''),
(86, 0, '', '', '', '', ''),
(87, 0, '', '', '', '', ''),
(88, 0, '', '', '', '', ''),
(89, 0, '', '', '', '', ''),
(90, 0, '', '', '', '', ''),
(91, 0, '', '', '', '', ''),
(92, 0, '', '', '', '', ''),
(93, 0, '', '', '', '', ''),
(94, 0, '', '', '', '', ''),
(95, 0, '', '', '', '', ''),
(96, 0, '', '', '', '', ''),
(97, 0, '', '', '', '', ''),
(98, 0, '', '', '', '', ''),
(99, 0, '', '', '', '', ''),
(100, 0, '', '', '', '', ''),
(101, 0, '', '', '', '', ''),
(102, 0, '', '', '', '', ''),
(103, 0, '', '', '', '', ''),
(104, 0, '', '', '', '', ''),
(105, 0, '', '', '', '', ''),
(106, 0, '', '', '', '', ''),
(107, 0, '', '', '', '', ''),
(108, 0, '', '', '', '', ''),
(109, 0, '', '', '', '', ''),
(110, 0, '', '', '', '', ''),
(111, 0, '', '', '', '', ''),
(112, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `idProcedimentos_Efetuados` int NOT NULL,
  `Aspiracao` int DEFAULT NULL,
  `Avaliacao_Inicial` int DEFAULT NULL,
  `Avaliacao_Dirigida` int DEFAULT NULL,
  `Avaliacao_Continuada` int DEFAULT NULL,
  `Chave_de_Rautek` int DEFAULT NULL,
  `Canula_de_Guedel` int DEFAULT NULL,
  `Desobstrucao_de_VA` int DEFAULT NULL,
  `Emprego_do_DEA` int DEFAULT NULL,
  `Gerenciamento_de_Riscos` int DEFAULT NULL,
  `Limpeza_de_Ferimentos` int DEFAULT NULL,
  `Curativos` int DEFAULT NULL,
  `Compressivo` int DEFAULT NULL,
  `Encravamento` int DEFAULT NULL,
  `Ocular` int DEFAULT NULL,
  `Queimadura` int DEFAULT NULL,
  `Simples` int DEFAULT NULL,
  `tres_Pontas` int DEFAULT NULL,
  `Imobilizacoes` int DEFAULT NULL,
  `Membro_INF_dir` int DEFAULT NULL,
  `Membro_INF_esq` int DEFAULT NULL,
  `Membro_SUP_dir` int DEFAULT NULL,
  `Membro_SUP_esq` int DEFAULT NULL,
  `Quadril` int DEFAULT NULL,
  `Cervical` int DEFAULT NULL,
  `Maca_Sobre_Rodas` int DEFAULT NULL,
  `Maca_Rigida` int DEFAULT NULL,
  `Ponte` int DEFAULT NULL,
  `Retirado_Capacete` int DEFAULT NULL,
  `RCP` int DEFAULT NULL,
  `Rolamento_90` int DEFAULT NULL,
  `Rolamento_180` int DEFAULT NULL,
  `Tomada_Decisao` int DEFAULT NULL,
  `Tratado_Choque` int DEFAULT NULL,
  `Uso_de_Canula` int DEFAULT NULL,
  `Uso_Colar` int DEFAULT NULL,
  `tamColar` varchar(10) DEFAULT NULL,
  `Uso_KED` int DEFAULT NULL,
  `Uso_TTF` int DEFAULT NULL,
  `Ventilacao_Suporte` int DEFAULT NULL,
  `Oxigenioterapia` int DEFAULT NULL,
  `Oxigenioterapia_LPM` varchar(10) DEFAULT NULL,
  `Reanimador` int DEFAULT NULL,
  `Reanimador_LPM` varchar(10) DEFAULT NULL,
  `Meios_Auxiliares` int DEFAULT NULL,
  `Celesc` int DEFAULT NULL,
  `Def_Civil` int DEFAULT NULL,
  `IGP_PC` int DEFAULT NULL,
  `Policia` int DEFAULT NULL,
  `Policia_Value` varchar(7) DEFAULT NULL,
  `Samu` int DEFAULT NULL,
  `Samu_Value` varchar(3) DEFAULT NULL,
  `CIT` int DEFAULT NULL,
  `OutrosMeios` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `procedimentos_efetuados`
--

INSERT INTO `procedimentos_efetuados` (`idProcedimentos_Efetuados`, `Aspiracao`, `Avaliacao_Inicial`, `Avaliacao_Dirigida`, `Avaliacao_Continuada`, `Chave_de_Rautek`, `Canula_de_Guedel`, `Desobstrucao_de_VA`, `Emprego_do_DEA`, `Gerenciamento_de_Riscos`, `Limpeza_de_Ferimentos`, `Curativos`, `Compressivo`, `Encravamento`, `Ocular`, `Queimadura`, `Simples`, `tres_Pontas`, `Imobilizacoes`, `Membro_INF_dir`, `Membro_INF_esq`, `Membro_SUP_dir`, `Membro_SUP_esq`, `Quadril`, `Cervical`, `Maca_Sobre_Rodas`, `Maca_Rigida`, `Ponte`, `Retirado_Capacete`, `RCP`, `Rolamento_90`, `Rolamento_180`, `Tomada_Decisao`, `Tratado_Choque`, `Uso_de_Canula`, `Uso_Colar`, `tamColar`, `Uso_KED`, `Uso_TTF`, `Ventilacao_Suporte`, `Oxigenioterapia`, `Oxigenioterapia_LPM`, `Reanimador`, `Reanimador_LPM`, `Meios_Auxiliares`, `Celesc`, `Def_Civil`, `IGP_PC`, `Policia`, `Policia_Value`, `Samu`, `Samu_Value`, `CIT`, `OutrosMeios`) VALUES
(342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinais_e_sintomas`
--

CREATE TABLE `sinais_e_sintomas` (
  `idSinais_e_Sintomas` int NOT NULL,
  `abdomen_sensivel_rigido` int DEFAULT NULL,
  `afundamento_cranio` int DEFAULT NULL,
  `agitacao` int DEFAULT NULL,
  `amnesia` int DEFAULT NULL,
  `angna_peito` int DEFAULT NULL,
  `apneia` int DEFAULT NULL,
  `bradicardia` int DEFAULT NULL,
  `bradipneia` int DEFAULT NULL,
  `bronco_aspiracao` int DEFAULT NULL,
  `cefaleia` int DEFAULT NULL,
  `cianose_labios` int NOT NULL,
  `cianose_extremidade` int NOT NULL,
  `convulsao` int DEFAULT NULL,
  `decorticacao` int DEFAULT NULL,
  `deformidade` int DEFAULT NULL,
  `descerebracao` int DEFAULT NULL,
  `desmaio` int DEFAULT NULL,
  `desvio_traqueia` int DEFAULT NULL,
  `despineia` int DEFAULT NULL,
  `dor_local` int DEFAULT NULL,
  `edema_generalizado` int NOT NULL,
  `edema_localizado` int NOT NULL,
  `enfisema_subcutaneo` int DEFAULT NULL,
  `extase_jugular` int DEFAULT NULL,
  `face_palida` int DEFAULT NULL,
  `hemorragia_interna` int NOT NULL,
  `hemorragia_externa` int NOT NULL,
  `hipertensao` int DEFAULT NULL,
  `hipotensao` int DEFAULT NULL,
  `nauseas_vomitos` int DEFAULT NULL,
  `nasoragia` int DEFAULT NULL,
  `obito` int DEFAULT NULL,
  `otorreia` int DEFAULT NULL,
  `otorragia` int DEFAULT NULL,
  `ovace` int DEFAULT NULL,
  `parada_cardiaca` int NOT NULL,
  `parada_respiratoria` int NOT NULL,
  `priaprismo` int DEFAULT NULL,
  `prurido_pele` int DEFAULT NULL,
  `pupilas_anisocoria` int DEFAULT NULL,
  `pupilas_isocoria` int DEFAULT NULL,
  `pupilas_midriase` int DEFAULT NULL,
  `pupilas_miose` int DEFAULT NULL,
  `pupilas_reagente` int DEFAULT NULL,
  `pupilas_nao_reagente` int DEFAULT NULL,
  `sede` int DEFAULT NULL,
  `sinal_battle` int DEFAULT NULL,
  `sinal_guaxinim` int DEFAULT NULL,
  `sudorese` int DEFAULT NULL,
  `taquipneia` int DEFAULT NULL,
  `taquicardia` int DEFAULT NULL,
  `tontura` int DEFAULT NULL,
  `observacoes` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sinais_e_sintomas`
--

INSERT INTO `sinais_e_sintomas` (`idSinais_e_Sintomas`, `abdomen_sensivel_rigido`, `afundamento_cranio`, `agitacao`, `amnesia`, `angna_peito`, `apneia`, `bradicardia`, `bradipneia`, `bronco_aspiracao`, `cefaleia`, `cianose_labios`, `cianose_extremidade`, `convulsao`, `decorticacao`, `deformidade`, `descerebracao`, `desmaio`, `desvio_traqueia`, `despineia`, `dor_local`, `edema_generalizado`, `edema_localizado`, `enfisema_subcutaneo`, `extase_jugular`, `face_palida`, `hemorragia_interna`, `hemorragia_externa`, `hipertensao`, `hipotensao`, `nauseas_vomitos`, `nasoragia`, `obito`, `otorreia`, `otorragia`, `ovace`, `parada_cardiaca`, `parada_respiratoria`, `priaprismo`, `prurido_pele`, `pupilas_anisocoria`, `pupilas_isocoria`, `pupilas_midriase`, `pupilas_miose`, `pupilas_reagente`, `pupilas_nao_reagente`, `sede`, `sinal_battle`, `sinal_guaxinim`, `sudorese`, `taquipneia`, `taquicardia`, `tontura`, `observacoes`) VALUES
(233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinais_vitais`
--

CREATE TABLE `sinais_vitais` (
  `idSinais_Vitais` int NOT NULL,
  `pressao_arterial0` varchar(45) DEFAULT NULL,
  `pressao_arterial1` varchar(45) NOT NULL,
  `pulso` varchar(45) NOT NULL,
  `respiracao` varchar(45) DEFAULT NULL,
  `saturacao` varchar(45) DEFAULT NULL,
  `temperatura` varchar(45) DEFAULT NULL,
  `perfusao` varchar(45) DEFAULT NULL,
  `HGT` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sinais_vitais`
--

INSERT INTO `sinais_vitais` (`idSinais_Vitais`, `pressao_arterial0`, `pressao_arterial1`, `pulso`, `respiracao`, `saturacao`, `temperatura`, `perfusao`, `HGT`) VALUES
(292, '', '', '', '', '', '', NULL, ''),
(293, '', '', '', '', '', '', NULL, ''),
(294, '', '', '', '', '', '', NULL, ''),
(295, '', '', '', '', '', '', NULL, ''),
(296, '', '', '', '', '', '', NULL, ''),
(297, '', '', '', '', '', '', NULL, ''),
(298, '', '', '', '', '', '', NULL, ''),
(299, '', '', '', '', '', '', NULL, ''),
(300, '', '', '', '', '', '', NULL, ''),
(301, '', '', '', '', '', '', NULL, ''),
(302, '', '', '', '', '', '', NULL, ''),
(303, '', '', '', '', '', '', NULL, ''),
(304, '', '', '', '', '', '', NULL, ''),
(305, '', '', '', '', '', '', NULL, ''),
(306, '', '', '', '', '', '', NULL, ''),
(307, '', '', '', '', '', '', NULL, ''),
(308, '', '', '', '', '', '', NULL, ''),
(309, '', '', '', '', '', '', NULL, ''),
(310, '', '', '', '', '', '', NULL, ''),
(311, '', '', '', '', '', '', NULL, ''),
(312, '', '', '', '', '', '', NULL, ''),
(313, '', '', '', '', '', '', NULL, ''),
(314, '', '', '', '', '', '', NULL, ''),
(315, '', '', '', '', '', '', NULL, ''),
(316, '', '', '', '', '', '', NULL, ''),
(317, '', '', '', '', '', '', NULL, ''),
(318, '', '', '', '', '', '', NULL, ''),
(319, '', '', '', '', '', '', NULL, ''),
(320, '', '', '', '', '', '', NULL, ''),
(321, '', '', '', '', '', '', NULL, ''),
(322, '', '', '', '', '', '', NULL, ''),
(323, '', '', '', '', '', '', NULL, ''),
(324, '', '', '', '', '', '', NULL, ''),
(325, '', '', '', '', '', '', NULL, ''),
(326, '', '', '', '', '', '', NULL, ''),
(327, '', '', '', '', '', '', NULL, ''),
(328, '', '', '', '', '', '', NULL, ''),
(329, '', '', '', '', '', '', NULL, ''),
(330, '', '', '', '', '', '', NULL, ''),
(331, '', '', '', '', '', '', NULL, ''),
(332, '', '', '', '', '', '', NULL, ''),
(333, '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_ocorrencia`
--

CREATE TABLE `tipo_de_ocorrencia` (
  `idTipo_de_Ocorrencia` int NOT NULL,
  `Causado_Por_Animais` int DEFAULT NULL,
  `Com_Meio_De_Transporte` int DEFAULT NULL,
  `Desmoronamento_Deslizamento` int DEFAULT NULL,
  `Emergencia_Medica` int DEFAULT NULL,
  `Queda_De_Altura_2M` int DEFAULT NULL,
  `Tentativa_De_Suicidio` int DEFAULT NULL,
  `Queda_Propria_Altura` int DEFAULT NULL,
  `Afogamento` int DEFAULT NULL,
  `Agressao` int DEFAULT NULL,
  `Atropelamento` int DEFAULT NULL,
  `Choque_Eletrico` int DEFAULT NULL,
  `Desabamento` int DEFAULT NULL,
  `Domestico` int DEFAULT NULL,
  `Esportivo` int DEFAULT NULL,
  `Intoxicacao` int DEFAULT NULL,
  `Queda_Bicicleta` int DEFAULT NULL,
  `Queda_Moto` int DEFAULT NULL,
  `Queda_Nivel_2M` int DEFAULT NULL,
  `Trabalho` int DEFAULT NULL,
  `Transferencia` int DEFAULT NULL,
  `Outro_Campo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_de_ocorrencia`
--

INSERT INTO `tipo_de_ocorrencia` (`idTipo_de_Ocorrencia`, `Causado_Por_Animais`, `Com_Meio_De_Transporte`, `Desmoronamento_Deslizamento`, `Emergencia_Medica`, `Queda_De_Altura_2M`, `Tentativa_De_Suicidio`, `Queda_Propria_Altura`, `Afogamento`, `Agressao`, `Atropelamento`, `Choque_Eletrico`, `Desabamento`, `Domestico`, `Esportivo`, `Intoxicacao`, `Queda_Bicicleta`, `Queda_Moto`, `Queda_Nivel_2M`, `Trabalho`, `Transferencia`, `Outro_Campo`) VALUES
(361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(388, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(391, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(392, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transporte_decisao_transporte`
--

CREATE TABLE `transporte_decisao_transporte` (
  `idDecisao_Transporte` int NOT NULL,
  `decisao_transporte` varchar(33) NOT NULL,
  `M` varchar(99) NOT NULL,
  `S1` varchar(99) NOT NULL,
  `S2` varchar(99) NOT NULL,
  `S3` varchar(99) NOT NULL,
  `Demandante` varchar(99) NOT NULL,
  `Equipe` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `transporte_decisao_transporte`
--

INSERT INTO `transporte_decisao_transporte` (`idDecisao_Transporte`, `decisao_transporte`, `M`, `S1`, `S2`, `S3`, `Demandante`, `Equipe`) VALUES
(183, '', '', '', '', '', '', ''),
(184, '', '', '', '', '', '', ''),
(185, '', '', '', '', '', '', ''),
(186, '', '', '', '', '', '', ''),
(187, '', '', '', '', '', '', ''),
(188, '', '', '', '', '', '', ''),
(189, '', '', '', '', '', '', ''),
(190, '', '', '', '', '', '', ''),
(191, '', '', '', '', '', '', ''),
(192, '', '', '', '', '', '', ''),
(193, '', '', '', '', '', '', ''),
(194, '', '', '', '', '', '', ''),
(195, '', '', '', '', '', '', ''),
(196, '', '', '', '', '', '', ''),
(197, '', '', '', '', '', '', ''),
(198, '', '', '', '', '', '', ''),
(199, '', '', '', '', '', '', ''),
(200, '', '', '', '', '', '', ''),
(201, '', '', '', '', '', '', ''),
(202, '', '', '', '', '', '', ''),
(203, '', '', '', '', '', '', ''),
(204, '', '', '', '', '', '', ''),
(205, '', '', '', '', '', '', ''),
(206, '', '', '', '', '', '', ''),
(207, '', '', '', '', '', '', ''),
(208, '', '', '', '', '', '', ''),
(209, '', '', '', '', '', '', ''),
(210, '', '', '', '', '', '', ''),
(211, '', '', '', '', '', '', ''),
(212, '', '', '', '', '', '', ''),
(213, '', '', '', '', '', '', ''),
(214, '', '', '', '', '', '', ''),
(215, '', '', '', '', '', '', ''),
(216, '', '', '', '', '', '', ''),
(217, '', '', '', '', '', '', ''),
(218, '', '', '', '', '', '', ''),
(219, '', '', '', '', '', '', ''),
(220, '', '', '', '', '', '', ''),
(221, '', '', '', '', '', '', ''),
(222, '', '', '', '', '', '', ''),
(223, '', '', '', '', '', '', ''),
(224, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transporte_detalhes_viagem`
--

CREATE TABLE `transporte_detalhes_viagem` (
  `idDetalhes_Viagem` int NOT NULL,
  `NumeroUSB` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CodigoIR` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NumeroOcorrencia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CodigoPS` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Desp` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `HCH` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `KMFinal` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CodigoSIASUS` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `transporte_detalhes_viagem`
--

INSERT INTO `transporte_detalhes_viagem` (`idDetalhes_Viagem`, `NumeroUSB`, `CodigoIR`, `NumeroOcorrencia`, `CodigoPS`, `Desp`, `HCH`, `KMFinal`, `CodigoSIASUS`) VALUES
(102, '', '', '', '', '', '', '', ''),
(103, '', '', '', '', '', '', '', ''),
(104, '', '', '', '', '', '', '', ''),
(105, '', '', '', '', '', '', '', ''),
(106, '', '', '', '', '', '', '', ''),
(107, '', '', '', '', '', '', '', ''),
(108, '', '', '', '', '', '', '', ''),
(109, '', '', '', '', '', '', '', ''),
(110, '', '', '', '', '', '', '', ''),
(111, '', '', '', '', '', '', '', ''),
(112, '', '', '', '', '', '', '', ''),
(113, '', '', '', '', '', '', '', ''),
(114, '', '', '', '', '', '', '', ''),
(115, '', '', '', '', '', '', '', ''),
(116, '', '', '', '', '', '', '', ''),
(117, '', '', '', '', '', '', '', ''),
(118, '', '', '', '', '', '', '', ''),
(119, '', '', '', '', '', '', '', ''),
(120, '', '', '', '', '', '', '', ''),
(121, '', '', '', '', '', '', '', ''),
(122, '', '', '', '', '', '', '', ''),
(123, '', '', '', '', '', '', '', ''),
(124, '', '', '', '', '', '', '', ''),
(125, '', '', '', '', '', '', '', ''),
(126, '', '', '', '', '', '', '', ''),
(127, '', '', '', '', '', '', '', ''),
(128, '', '', '', '', '', '', '', ''),
(129, '', '', '', '', '', '', '', ''),
(130, '', '', '', '', '', '', '', ''),
(131, '', '', '', '', '', '', '', ''),
(132, '', '', '', '', '', '', '', ''),
(133, '', '', '', '', '', '', '', ''),
(134, '', '', '', '', '', '', '', ''),
(135, '', '', '', '', '', '', '', ''),
(136, '', '', '', '', '', '', '', ''),
(137, '', '', '', '', '', '', '', ''),
(138, '', '', '', '', '', '', '', ''),
(139, '', '', '', '', '', '', '', ''),
(140, '', '', '', '', '', '', '', ''),
(141, '', '', '', '', '', '', '', ''),
(142, '', '', '', '', '', '', '', ''),
(143, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transporte_forma_de_conducao`
--

CREATE TABLE `transporte_forma_de_conducao` (
  `idForma_de_Conducao` int NOT NULL,
  `forma_conducao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `transporte_forma_de_conducao`
--

INSERT INTO `transporte_forma_de_conducao` (`idForma_de_Conducao`, `forma_conducao`) VALUES
(314, ''),
(315, ''),
(316, ''),
(317, ''),
(318, ''),
(319, ''),
(320, ''),
(321, ''),
(322, ''),
(323, ''),
(324, ''),
(325, ''),
(326, ''),
(327, ''),
(328, ''),
(329, ''),
(330, ''),
(331, ''),
(332, ''),
(333, ''),
(334, ''),
(335, ''),
(336, ''),
(337, ''),
(338, ''),
(339, ''),
(340, ''),
(341, ''),
(342, ''),
(343, ''),
(344, ''),
(345, ''),
(346, ''),
(347, ''),
(348, ''),
(349, ''),
(350, ''),
(351, ''),
(352, ''),
(353, ''),
(354, ''),
(355, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transporte_vitima_era`
--

CREATE TABLE `transporte_vitima_era` (
  `idTransporte_Vitima_Era` int NOT NULL,
  `vitima_era` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `transporte_vitima_era`
--

INSERT INTO `transporte_vitima_era` (`idTransporte_Vitima_Era`, `vitima_era`) VALUES
(234, ''),
(235, ''),
(236, ''),
(237, ''),
(238, ''),
(239, ''),
(240, ''),
(241, ''),
(242, ''),
(243, ''),
(244, ''),
(245, ''),
(246, ''),
(247, ''),
(248, ''),
(249, ''),
(250, ''),
(251, ''),
(252, ''),
(253, ''),
(254, ''),
(255, ''),
(256, ''),
(257, ''),
(258, ''),
(259, ''),
(260, ''),
(261, ''),
(262, ''),
(263, ''),
(264, ''),
(265, ''),
(266, ''),
(267, ''),
(268, ''),
(269, ''),
(270, ''),
(271, ''),
(272, ''),
(273, ''),
(274, ''),
(275, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `permissao` varchar(5) NOT NULL DEFAULT 'user',
  `id_fichas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User data.';

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `cpf`, `senha`, `permissao`, `id_fichas`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin', NULL),
(15, 'vinicius', 'vini@gmail.com', '12312312312', '123', 'admin', NULL),
(16, 'vinicius2', 'vini3@gmail.com', '32132132132', '123', 'user', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anamnese_emergencia_medica`
--
ALTER TABLE `anamnese_emergencia_medica`
  ADD PRIMARY KEY (`idAnamnese_Emergencia_Medica`),
  ADD UNIQUE KEY `idAnamnese_Emergência_Médica_UNIQUE` (`idAnamnese_Emergencia_Medica`);

--
-- Índices para tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  ADD PRIMARY KEY (`idAnamnese_Gestacional`);

--
-- Índices para tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `avaliacao_cinematica`
--
ALTER TABLE `avaliacao_cinematica`
  ADD PRIMARY KEY (`idAvaliacao_Cinematica`);

--
-- Índices para tabela `avaliacao_glasgow`
--
ALTER TABLE `avaliacao_glasgow`
  ADD PRIMARY KEY (`idAvaliacao_Glasgow`),
  ADD UNIQUE KEY `idAvaliacao_Glasgow_UNIQUE` (`idAvaliacao_Glasgow`);

--
-- Índices para tabela `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`id_fichas`),
  ADD UNIQUE KEY `idReports_UNIQUE` (`id_fichas`),
  ADD KEY `idPaciente_idx` (`idPaciente`),
  ADD KEY `idSinais_Vitais_idx` (`idSinais_Vitais`),
  ADD KEY `idProblemas_Encontrados_idx` (`idProblemas_Encontrados`),
  ADD KEY `idSinais_e_Sintomas_idx` (`idSinais_e_Sintomas`),
  ADD KEY `idAvaliacao_Glasgow_idx` (`idAvaliacao_Glasgow`),
  ADD KEY `idProcedimentos_Efetuados_idx` (`idProcedimentos_Efetuados`),
  ADD KEY `idMateriais_Utilizados_Descartavel_idx` (`idMateriais_Utilizados_Descartavel`),
  ADD KEY `idMateriais_Utilizados_Deixados_idx` (`idMateriais_Utilizados_Deixados`),
  ADD KEY `idAnamnese_Emergencia_Medica` (`idAnamnese_Emergencia_Medica`),
  ADD KEY `idAnamnese_Gestaciona` (`idAnamnese_Gestacional`),
  ADD KEY `idAvaliacao_Cinematica` (`idAvaliacao_Cinematica`),
  ADD KEY `idObjetos_Recolhidos` (`idObjetos_Recolhidos`),
  ADD KEY `idObservacoes_Importantes` (`idObservacoes_Importantes`),
  ADD KEY `idTipo_de_Ocorrencia` (`idTipo_de_Ocorrencia`),
  ADD KEY `idDecisao_Transporte` (`idDecisao_Transporte`),
  ADD KEY `idDetalhes_Viagem` (`idDetalhes_Viagem`),
  ADD KEY `idForma_de_Conducao` (`idForma_de_Conducao`),
  ADD KEY `idTransporte_Vitima_Era` (`idTransporte_Vitima_Era`);

--
-- Índices para tabela `localizacao_dos_traumas`
--
ALTER TABLE `localizacao_dos_traumas`
  ADD PRIMARY KEY (`idLocalizacao_dos_Traumas`);

--
-- Índices para tabela `materiais_utilizados_deixados`
--
ALTER TABLE `materiais_utilizados_deixados`
  ADD PRIMARY KEY (`idMateriais_Utilizados_Deixados`),
  ADD UNIQUE KEY `idMateriais_Utilizados_Deixados_UNIQUE` (`idMateriais_Utilizados_Deixados`);

--
-- Índices para tabela `materiais_utilizados_descartavel`
--
ALTER TABLE `materiais_utilizados_descartavel`
  ADD PRIMARY KEY (`idMateriais_Utilizados_Descartavel`),
  ADD UNIQUE KEY `idMateriais_Utilizados_Descartavel_UNIQUE` (`idMateriais_Utilizados_Descartavel`);

--
-- Índices para tabela `objetos_recolhidos`
--
ALTER TABLE `objetos_recolhidos`
  ADD PRIMARY KEY (`idObjetos_Recolhidos`);

--
-- Índices para tabela `observacoes_importantes`
--
ALTER TABLE `observacoes_importantes`
  ADD PRIMARY KEY (`idObservacoes_Importantes`),
  ADD UNIQUE KEY `idObservacoes_Importantes_UNIQUE` (`idObservacoes_Importantes`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD UNIQUE KEY `idReports_Patient_UNIQUE` (`idPaciente`);

--
-- Índices para tabela `problemas_encontrados`
--
ALTER TABLE `problemas_encontrados`
  ADD PRIMARY KEY (`idProblemas_Encontrados`),
  ADD UNIQUE KEY `idProblemas_Encontrados_UNIQUE` (`idProblemas_Encontrados`);

--
-- Índices para tabela `procedimentos_efetuados`
--
ALTER TABLE `procedimentos_efetuados`
  ADD PRIMARY KEY (`idProcedimentos_Efetuados`),
  ADD UNIQUE KEY `idProcedimentos_Efetuados_UNIQUE` (`idProcedimentos_Efetuados`);

--
-- Índices para tabela `sinais_e_sintomas`
--
ALTER TABLE `sinais_e_sintomas`
  ADD PRIMARY KEY (`idSinais_e_Sintomas`),
  ADD UNIQUE KEY `idSinais_e_Sintomas_UNIQUE` (`idSinais_e_Sintomas`);

--
-- Índices para tabela `sinais_vitais`
--
ALTER TABLE `sinais_vitais`
  ADD PRIMARY KEY (`idSinais_Vitais`),
  ADD UNIQUE KEY `idSinais_Vitais_UNIQUE` (`idSinais_Vitais`);

--
-- Índices para tabela `tipo_de_ocorrencia`
--
ALTER TABLE `tipo_de_ocorrencia`
  ADD PRIMARY KEY (`idTipo_de_Ocorrencia`),
  ADD UNIQUE KEY `idTipo_de_Ocorrencia_UNIQUE` (`idTipo_de_Ocorrencia`);

--
-- Índices para tabela `transporte_decisao_transporte`
--
ALTER TABLE `transporte_decisao_transporte`
  ADD PRIMARY KEY (`idDecisao_Transporte`),
  ADD UNIQUE KEY `idDecisao_Transporte_UNIQUE` (`idDecisao_Transporte`);

--
-- Índices para tabela `transporte_detalhes_viagem`
--
ALTER TABLE `transporte_detalhes_viagem`
  ADD PRIMARY KEY (`idDetalhes_Viagem`);

--
-- Índices para tabela `transporte_forma_de_conducao`
--
ALTER TABLE `transporte_forma_de_conducao`
  ADD PRIMARY KEY (`idForma_de_Conducao`),
  ADD UNIQUE KEY `idForma_de_Conducao_UNIQUE` (`idForma_de_Conducao`);

--
-- Índices para tabela `transporte_vitima_era`
--
ALTER TABLE `transporte_vitima_era`
  ADD PRIMARY KEY (`idTransporte_Vitima_Era`),
  ADD UNIQUE KEY `idTransporte_Vitima_Era_UNIQUE` (`idTransporte_Vitima_Era`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `idUser_UNIQUE` (`id_usuario`),
  ADD UNIQUE KEY `Email_UNIQUE` (`email`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `Reports_UNIQUE` (`id_fichas`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anamnese_emergencia_medica`
--
ALTER TABLE `anamnese_emergencia_medica`
  MODIFY `idAnamnese_Emergencia_Medica` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  MODIFY `idAnamnese_Gestacional` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `avaliacao_cinematica`
--
ALTER TABLE `avaliacao_cinematica`
  MODIFY `idAvaliacao_Cinematica` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de tabela `avaliacao_glasgow`
--
ALTER TABLE `avaliacao_glasgow`
  MODIFY `idAvaliacao_Glasgow` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de tabela `fichas`
--
ALTER TABLE `fichas`
  MODIFY `id_fichas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `materiais_utilizados_deixados`
--
ALTER TABLE `materiais_utilizados_deixados`
  MODIFY `idMateriais_Utilizados_Deixados` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `materiais_utilizados_descartavel`
--
ALTER TABLE `materiais_utilizados_descartavel`
  MODIFY `idMateriais_Utilizados_Descartavel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de tabela `objetos_recolhidos`
--
ALTER TABLE `objetos_recolhidos`
  MODIFY `idObjetos_Recolhidos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT de tabela `observacoes_importantes`
--
ALTER TABLE `observacoes_importantes`
  MODIFY `idObservacoes_Importantes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT de tabela `problemas_encontrados`
--
ALTER TABLE `problemas_encontrados`
  MODIFY `idProblemas_Encontrados` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `procedimentos_efetuados`
--
ALTER TABLE `procedimentos_efetuados`
  MODIFY `idProcedimentos_Efetuados` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT de tabela `sinais_e_sintomas`
--
ALTER TABLE `sinais_e_sintomas`
  MODIFY `idSinais_e_Sintomas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT de tabela `sinais_vitais`
--
ALTER TABLE `sinais_vitais`
  MODIFY `idSinais_Vitais` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT de tabela `tipo_de_ocorrencia`
--
ALTER TABLE `tipo_de_ocorrencia`
  MODIFY `idTipo_de_Ocorrencia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT de tabela `transporte_decisao_transporte`
--
ALTER TABLE `transporte_decisao_transporte`
  MODIFY `idDecisao_Transporte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de tabela `transporte_detalhes_viagem`
--
ALTER TABLE `transporte_detalhes_viagem`
  MODIFY `idDetalhes_Viagem` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de tabela `transporte_forma_de_conducao`
--
ALTER TABLE `transporte_forma_de_conducao`
  MODIFY `idForma_de_Conducao` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT de tabela `transporte_vitima_era`
--
ALTER TABLE `transporte_vitima_era`
  MODIFY `idTransporte_Vitima_Era` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fichas`
--
ALTER TABLE `fichas`
  ADD CONSTRAINT `idAnamnese_Emergencia_Medica` FOREIGN KEY (`idAnamnese_Emergencia_Medica`) REFERENCES `anamnese_emergencia_medica` (`idAnamnese_Emergencia_Medica`),
  ADD CONSTRAINT `idAnamnese_Gestaciona` FOREIGN KEY (`idAnamnese_Gestacional`) REFERENCES `anamnese_gestacional` (`idAnamnese_Gestacional`),
  ADD CONSTRAINT `idAvaliacao_Cinematica` FOREIGN KEY (`idAvaliacao_Cinematica`) REFERENCES `avaliacao_cinematica` (`idAvaliacao_Cinematica`),
  ADD CONSTRAINT `idAvaliacao_Glasgow` FOREIGN KEY (`idAvaliacao_Glasgow`) REFERENCES `avaliacao_glasgow` (`idAvaliacao_Glasgow`),
  ADD CONSTRAINT `idDecisao_Transporte` FOREIGN KEY (`idDecisao_Transporte`) REFERENCES `transporte_decisao_transporte` (`idDecisao_Transporte`),
  ADD CONSTRAINT `idDetalhes_Viagem` FOREIGN KEY (`idDetalhes_Viagem`) REFERENCES `transporte_detalhes_viagem` (`idDetalhes_Viagem`),
  ADD CONSTRAINT `idForma_de_Conducao` FOREIGN KEY (`idForma_de_Conducao`) REFERENCES `transporte_forma_de_conducao` (`idForma_de_Conducao`),
  ADD CONSTRAINT `idMateriais_Utilizados_Deixados` FOREIGN KEY (`idMateriais_Utilizados_Deixados`) REFERENCES `materiais_utilizados_deixados` (`idMateriais_Utilizados_Deixados`),
  ADD CONSTRAINT `idMateriais_Utilizados_Descartavel` FOREIGN KEY (`idMateriais_Utilizados_Descartavel`) REFERENCES `materiais_utilizados_descartavel` (`idMateriais_Utilizados_Descartavel`),
  ADD CONSTRAINT `idObjetos_Recolhidos` FOREIGN KEY (`idObjetos_Recolhidos`) REFERENCES `objetos_recolhidos` (`idObjetos_Recolhidos`),
  ADD CONSTRAINT `idObservacoes_Importantes` FOREIGN KEY (`idObservacoes_Importantes`) REFERENCES `observacoes_importantes` (`idObservacoes_Importantes`),
  ADD CONSTRAINT `idPaciente` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`),
  ADD CONSTRAINT `idProblemas_Encontrados` FOREIGN KEY (`idProblemas_Encontrados`) REFERENCES `problemas_encontrados` (`idProblemas_Encontrados`),
  ADD CONSTRAINT `idProcedimentos_Efetuados` FOREIGN KEY (`idProcedimentos_Efetuados`) REFERENCES `procedimentos_efetuados` (`idProcedimentos_Efetuados`),
  ADD CONSTRAINT `idSinais_e_Sintomas` FOREIGN KEY (`idSinais_e_Sintomas`) REFERENCES `sinais_e_sintomas` (`idSinais_e_Sintomas`),
  ADD CONSTRAINT `idSinais_Vitais` FOREIGN KEY (`idSinais_Vitais`) REFERENCES `sinais_vitais` (`idSinais_Vitais`),
  ADD CONSTRAINT `idTipo_de_Ocorrencia` FOREIGN KEY (`idTipo_de_Ocorrencia`) REFERENCES `tipo_de_ocorrencia` (`idTipo_de_Ocorrencia`),
  ADD CONSTRAINT `idTransporte_Vitima_Era` FOREIGN KEY (`idTransporte_Vitima_Era`) REFERENCES `transporte_vitima_era` (`idTransporte_Vitima_Era`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `id_fichas` FOREIGN KEY (`id_fichas`) REFERENCES `fichas` (`id_fichas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
