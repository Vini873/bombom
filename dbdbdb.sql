-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/12/2023 às 12:42
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
-- Banco de dados: `dbdbdb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_emergencia_medica`
--

CREATE TABLE `anamnese_emergencia_medica` (
  `idAnamnese_Emergencia_Medica` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `anamnese_emergencia_medica`
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
(67, '', '', '', '', '', '', '00:00:00', '', '', '', '', '00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `idAnamnese_Gestacional` int(11) NOT NULL,
  `tempoGestacao` varchar(255) DEFAULT NULL,
  `fezPreNatal` varchar(3) DEFAULT NULL,
  `nomeMedico` varchar(255) DEFAULT NULL,
  `complicacoes` varchar(3) DEFAULT NULL,
  `primeiroFilho` varchar(3) DEFAULT NULL,
  `numFilhos` int(11) DEFAULT NULL,
  `inicioContracoes` varchar(255) DEFAULT NULL,
  `duracaoContracoes` varchar(255) DEFAULT NULL,
  `intervaloContracoes` varchar(255) DEFAULT NULL,
  `pressaoQuadril` varchar(3) DEFAULT NULL,
  `rupturaBolsa` varchar(3) DEFAULT NULL,
  `inspecaoVisual` varchar(3) DEFAULT NULL,
  `partoRealizado` varchar(3) DEFAULT NULL,
  `horaNascimento` time DEFAULT NULL,
  `bebeSexo` varchar(10) DEFAULT NULL,
  `bebeNome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `anamnese_gestacional`
--

INSERT INTO `anamnese_gestacional` (`idAnamnese_Gestacional`, `tempoGestacao`, `fezPreNatal`, `nomeMedico`, `complicacoes`, `primeiroFilho`, `numFilhos`, `inicioContracoes`, `duracaoContracoes`, `intervaloContracoes`, `pressaoQuadril`, `rupturaBolsa`, `inspecaoVisual`, `partoRealizado`, `horaNascimento`, `bebeSexo`, `bebeNome`) VALUES
(80, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(81, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(82, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(83, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(84, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(85, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(86, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(87, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(88, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(89, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(90, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(91, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(92, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(93, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(94, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', ''),
(95, '', '', '', '', '', 0, '', '', '', '', '', '', '', '00:00:00', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_cinematica`
--

CREATE TABLE `avaliacao_cinematica` (
  `idAvaliacao_Cinematica` int(11) NOT NULL,
  `disturbio_comportamento` varchar(3) DEFAULT NULL,
  `encontra_capacete` varchar(3) DEFAULT NULL,
  `encontrado_cinto` varchar(3) DEFAULT NULL,
  `para_brisa_avariado` varchar(3) DEFAULT NULL,
  `caminhando_na_cena` varchar(3) DEFAULT NULL,
  `painel_avariado` varchar(3) DEFAULT NULL,
  `volante_torcido` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao_cinematica`
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
(242, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_glasgow`
--

CREATE TABLE `avaliacao_glasgow` (
  `idAvaliacao_Glasgow` int(11) NOT NULL,
  `Abertura_Ocular` varchar(99) DEFAULT NULL,
  `Resposta_Verbal` varchar(99) DEFAULT NULL,
  `Resposta_Motora` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `avaliacao_glasgow`
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
(187, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fichas`
--

CREATE TABLE `fichas` (
  `id_fichas` int(11) NOT NULL,
  `data_ficha` date NOT NULL,
  `idPaciente` int(11) DEFAULT NULL,
  `idAvaliacao_Glasgow` int(11) DEFAULT NULL,
  `idSinais_Vitais` int(11) DEFAULT NULL,
  `idProblemas_Encontrados` int(11) DEFAULT NULL,
  `idSinais_e_Sintomas` int(11) DEFAULT NULL,
  `idProcedimentos_Efetuados` int(11) DEFAULT NULL,
  `idMateriais_Utilizados_Descartavel` int(11) DEFAULT NULL,
  `idMateriais_Utilizados_Deixados` int(11) DEFAULT NULL,
  `idAnamnese_Emergencia_Medica` int(11) NOT NULL,
  `idAnamnese_Gestacional` int(11) NOT NULL,
  `idAvaliacao_Cinematica` int(11) NOT NULL,
  `idObjetos_Recolhidos` int(11) NOT NULL,
  `idObservacoes_Importantes` int(11) NOT NULL,
  `idTipo_de_Ocorrencia` int(11) NOT NULL,
  `idDecisao_Transporte` int(11) NOT NULL,
  `idDetalhes_Viagem` int(11) NOT NULL,
  `idForma_de_Conducao` int(11) NOT NULL,
  `idTransporte_Vitima_Era` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `fichas`
--

INSERT INTO `fichas` (`id_fichas`, `data_ficha`, `idPaciente`, `idAvaliacao_Glasgow`, `idSinais_Vitais`, `idProblemas_Encontrados`, `idSinais_e_Sintomas`, `idProcedimentos_Efetuados`, `idMateriais_Utilizados_Descartavel`, `idMateriais_Utilizados_Deixados`, `idAnamnese_Emergencia_Medica`, `idAnamnese_Gestacional`, `idAvaliacao_Cinematica`, `idObjetos_Recolhidos`, `idObservacoes_Importantes`, `idTipo_de_Ocorrencia`, `idDecisao_Transporte`, `idDetalhes_Viagem`, `idForma_de_Conducao`, `idTransporte_Vitima_Era`) VALUES
(4, '0000-00-00', 367, 185, 305, 86, 246, 355, 67, 65, 65, 93, 240, 270, 343, 374, 196, 115, 327, 247),
(5, '0000-00-00', 368, 186, 306, 87, 247, 356, 68, 66, 66, 94, 241, 271, 344, 375, 197, 116, 328, 248),
(6, '0000-00-00', 369, 187, 307, 88, 248, 357, 69, 67, 67, 95, 242, 272, 345, 376, 198, 117, 329, 249);

-- --------------------------------------------------------

--
-- Estrutura para tabela `localizacao_dos_traumas`
--

CREATE TABLE `localizacao_dos_traumas` (
  `idLocalizacao_dos_Traumas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados_deixados`
--

CREATE TABLE `materiais_utilizados_deixados` (
  `idMateriais_Utilizados_Deixados` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `materiais_utilizados_deixados`
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
(67, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados_descartavel`
--

CREATE TABLE `materiais_utilizados_descartavel` (
  `idMateriais_Utilizados_Descartavel` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `materiais_utilizados_descartavel`
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
(69, '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetos_recolhidos`
--

CREATE TABLE `objetos_recolhidos` (
  `idObjetos_Recolhidos` int(11) NOT NULL,
  `objetos_recolhidos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `objetos_recolhidos`
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
(272, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `observacoes_importantes`
--

CREATE TABLE `observacoes_importantes` (
  `idObservacoes_Importantes` int(11) NOT NULL,
  `observacoes_importantes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `observacoes_importantes`
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
(345, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `data_ocorrencia` date NOT NULL,
  `genero_paciente` varchar(9) NOT NULL,
  `nome_hospital` varchar(255) NOT NULL,
  `nome_paciente` varchar(45) DEFAULT NULL,
  `idade_paciente` varchar(3) DEFAULT NULL,
  `CPF_paciente` varchar(11) DEFAULT NULL,
  `telefone_paciente` varchar(12) DEFAULT NULL,
  `nome_acompanhante` varchar(45) DEFAULT NULL,
  `idade_acompanhante` varchar(3) DEFAULT NULL,
  `local_da_ocorrencia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `paciente`
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
(369, '0000-00-00', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas_encontrados`
--

CREATE TABLE `problemas_encontrados` (
  `idProblemas_Encontrados` int(11) NOT NULL,
  `psiquiatrico` int(11) NOT NULL,
  `obstetrico` varchar(99) NOT NULL,
  `respiratorio` varchar(99) NOT NULL,
  `diabetes` varchar(99) NOT NULL,
  `transporte` varchar(99) NOT NULL,
  `outros` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `problemas_encontrados`
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
(88, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `idProcedimentos_Efetuados` int(11) NOT NULL,
  `Aspiracao` int(11) DEFAULT NULL,
  `Avaliacao_Inicial` int(11) DEFAULT NULL,
  `Avaliacao_Dirigida` int(11) DEFAULT NULL,
  `Avaliacao_Continuada` int(11) DEFAULT NULL,
  `Chave_de_Rautek` int(11) DEFAULT NULL,
  `Canula_de_Guedel` int(11) DEFAULT NULL,
  `Desobstrucao_de_VA` int(11) DEFAULT NULL,
  `Emprego_do_DEA` int(11) DEFAULT NULL,
  `Gerenciamento_de_Riscos` int(11) DEFAULT NULL,
  `Limpeza_de_Ferimentos` int(11) DEFAULT NULL,
  `Curativos` int(11) DEFAULT NULL,
  `Compressivo` int(11) DEFAULT NULL,
  `Encravamento` int(11) DEFAULT NULL,
  `Ocular` int(11) DEFAULT NULL,
  `Queimadura` int(11) DEFAULT NULL,
  `Simples` int(11) DEFAULT NULL,
  `tres_Pontas` int(11) DEFAULT NULL,
  `Imobilizacoes` int(11) DEFAULT NULL,
  `Membro_INF_dir` int(11) DEFAULT NULL,
  `Membro_INF_esq` int(11) DEFAULT NULL,
  `Membro_SUP_dir` int(11) DEFAULT NULL,
  `Membro_SUP_esq` int(11) DEFAULT NULL,
  `Quadril` int(11) DEFAULT NULL,
  `Cervical` int(11) DEFAULT NULL,
  `Maca_Sobre_Rodas` int(11) DEFAULT NULL,
  `Maca_Rigida` int(11) DEFAULT NULL,
  `Ponte` int(11) DEFAULT NULL,
  `Retirado_Capacete` int(11) DEFAULT NULL,
  `RCP` int(11) DEFAULT NULL,
  `Rolamento_90` int(11) DEFAULT NULL,
  `Rolamento_180` int(11) DEFAULT NULL,
  `Tomada_Decisao` int(11) DEFAULT NULL,
  `Tratado_Choque` int(11) DEFAULT NULL,
  `Uso_de_Canula` int(11) DEFAULT NULL,
  `Uso_Colar` int(11) DEFAULT NULL,
  `tamColar` varchar(10) DEFAULT NULL,
  `Uso_KED` int(11) DEFAULT NULL,
  `Uso_TTF` int(11) DEFAULT NULL,
  `Ventilacao_Suporte` int(11) DEFAULT NULL,
  `Oxigenioterapia` int(11) DEFAULT NULL,
  `Oxigenioterapia_LPM` varchar(10) DEFAULT NULL,
  `Reanimador` int(11) DEFAULT NULL,
  `Reanimador_LPM` varchar(10) DEFAULT NULL,
  `Meios_Auxiliares` int(11) DEFAULT NULL,
  `Celesc` int(11) DEFAULT NULL,
  `Def_Civil` int(11) DEFAULT NULL,
  `IGP_PC` int(11) DEFAULT NULL,
  `Policia` int(11) DEFAULT NULL,
  `Policia_Value` varchar(7) DEFAULT NULL,
  `Samu` int(11) DEFAULT NULL,
  `Samu_Value` varchar(3) DEFAULT NULL,
  `CIT` int(11) DEFAULT NULL,
  `OutrosMeios` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `procedimentos_efetuados`
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
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_e_sintomas`
--

CREATE TABLE `sinais_e_sintomas` (
  `idSinais_e_Sintomas` int(11) NOT NULL,
  `abdomen_sensivel_rigido` int(11) DEFAULT NULL,
  `afundamento_cranio` int(11) DEFAULT NULL,
  `agitacao` int(11) DEFAULT NULL,
  `amnesia` int(11) DEFAULT NULL,
  `angna_peito` int(11) DEFAULT NULL,
  `apneia` int(11) DEFAULT NULL,
  `bradicardia` int(11) DEFAULT NULL,
  `bradipneia` int(11) DEFAULT NULL,
  `bronco_aspiracao` int(11) DEFAULT NULL,
  `cefaleia` int(11) DEFAULT NULL,
  `cianose_labios` int(11) NOT NULL,
  `cianose_extremidade` int(11) NOT NULL,
  `convulsao` int(11) DEFAULT NULL,
  `decorticacao` int(11) DEFAULT NULL,
  `deformidade` int(11) DEFAULT NULL,
  `descerebracao` int(11) DEFAULT NULL,
  `desmaio` int(11) DEFAULT NULL,
  `desvio_traqueia` int(11) DEFAULT NULL,
  `despineia` int(11) DEFAULT NULL,
  `dor_local` int(11) DEFAULT NULL,
  `edema_generalizado` int(11) NOT NULL,
  `edema_localizado` int(11) NOT NULL,
  `enfisema_subcutaneo` int(11) DEFAULT NULL,
  `extase_jugular` int(11) DEFAULT NULL,
  `face_palida` int(11) DEFAULT NULL,
  `hemorragia_interna` int(11) NOT NULL,
  `hemorragia_externa` int(11) NOT NULL,
  `hipertensao` int(11) DEFAULT NULL,
  `hipotensao` int(11) DEFAULT NULL,
  `nauseas_vomitos` int(11) DEFAULT NULL,
  `nasoragia` int(11) DEFAULT NULL,
  `obito` int(11) DEFAULT NULL,
  `otorreia` int(11) DEFAULT NULL,
  `otorragia` int(11) DEFAULT NULL,
  `ovace` int(11) DEFAULT NULL,
  `parada_cardiaca` int(11) NOT NULL,
  `parada_respiratoria` int(11) NOT NULL,
  `priaprismo` int(11) DEFAULT NULL,
  `prurido_pele` int(11) DEFAULT NULL,
  `pupilas_anisocoria` int(11) DEFAULT NULL,
  `pupilas_isocoria` int(11) DEFAULT NULL,
  `pupilas_midriase` int(11) DEFAULT NULL,
  `pupilas_miose` int(11) DEFAULT NULL,
  `pupilas_reagente` int(11) DEFAULT NULL,
  `pupilas_nao_reagente` int(11) DEFAULT NULL,
  `sede` int(11) DEFAULT NULL,
  `sinal_battle` int(11) DEFAULT NULL,
  `sinal_guaxinim` int(11) DEFAULT NULL,
  `sudorese` int(11) DEFAULT NULL,
  `taquipneia` int(11) DEFAULT NULL,
  `taquicardia` int(11) DEFAULT NULL,
  `tontura` int(11) DEFAULT NULL,
  `observacoes` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sinais_e_sintomas`
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
(248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_vitais`
--

CREATE TABLE `sinais_vitais` (
  `idSinais_Vitais` int(11) NOT NULL,
  `pressao_arterial0` varchar(45) DEFAULT NULL,
  `pressao_arterial1` varchar(45) NOT NULL,
  `pulso` varchar(45) NOT NULL,
  `respiracao` varchar(45) DEFAULT NULL,
  `saturacao` varchar(45) DEFAULT NULL,
  `temperatura` varchar(45) DEFAULT NULL,
  `perfusao` varchar(45) DEFAULT NULL,
  `HGT` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sinais_vitais`
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
(307, '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_de_ocorrencia`
--

CREATE TABLE `tipo_de_ocorrencia` (
  `idTipo_de_Ocorrencia` int(11) NOT NULL,
  `Causado_Por_Animais` int(11) DEFAULT NULL,
  `Com_Meio_De_Transporte` int(11) DEFAULT NULL,
  `Desmoronamento_Deslizamento` int(11) DEFAULT NULL,
  `Emergencia_Medica` int(11) DEFAULT NULL,
  `Queda_De_Altura_2M` int(11) DEFAULT NULL,
  `Tentativa_De_Suicidio` int(11) DEFAULT NULL,
  `Queda_Propria_Altura` int(11) DEFAULT NULL,
  `Afogamento` int(11) DEFAULT NULL,
  `Agressao` int(11) DEFAULT NULL,
  `Atropelamento` int(11) DEFAULT NULL,
  `Choque_Eletrico` int(11) DEFAULT NULL,
  `Desabamento` int(11) DEFAULT NULL,
  `Domestico` int(11) DEFAULT NULL,
  `Esportivo` int(11) DEFAULT NULL,
  `Intoxicacao` int(11) DEFAULT NULL,
  `Queda_Bicicleta` int(11) DEFAULT NULL,
  `Queda_Moto` int(11) DEFAULT NULL,
  `Queda_Nivel_2M` int(11) DEFAULT NULL,
  `Trabalho` int(11) DEFAULT NULL,
  `Transferencia` int(11) DEFAULT NULL,
  `Outro_Campo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tipo_de_ocorrencia`
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
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte_decisao_transporte`
--

CREATE TABLE `transporte_decisao_transporte` (
  `idDecisao_Transporte` int(11) NOT NULL,
  `decisao_transporte` varchar(33) NOT NULL,
  `M` varchar(99) NOT NULL,
  `S1` varchar(99) NOT NULL,
  `S2` varchar(99) NOT NULL,
  `S3` varchar(99) NOT NULL,
  `Demandante` varchar(99) NOT NULL,
  `Equipe` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `transporte_decisao_transporte`
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
(198, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte_detalhes_viagem`
--

CREATE TABLE `transporte_detalhes_viagem` (
  `idDetalhes_Viagem` int(11) NOT NULL,
  `NumeroUSB` varchar(255) DEFAULT NULL,
  `CodigoIR` varchar(255) DEFAULT NULL,
  `NumeroOcorrencia` varchar(255) DEFAULT NULL,
  `CodigoPS` varchar(255) DEFAULT NULL,
  `Desp` varchar(255) DEFAULT NULL,
  `HCH` varchar(255) DEFAULT NULL,
  `KMFinal` varchar(255) DEFAULT NULL,
  `CodigoSIASUS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `transporte_detalhes_viagem`
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
(117, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte_forma_de_conducao`
--

CREATE TABLE `transporte_forma_de_conducao` (
  `idForma_de_Conducao` int(11) NOT NULL,
  `forma_conducao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `transporte_forma_de_conducao`
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
(329, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte_vitima_era`
--

CREATE TABLE `transporte_vitima_era` (
  `idTransporte_Vitima_Era` int(11) NOT NULL,
  `vitima_era` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `transporte_vitima_era`
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
(249, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `permissao` varchar(5) NOT NULL DEFAULT 'user',
  `id_fichas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='User data.';

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `cpf`, `senha`, `permissao`, `id_fichas`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin', NULL),
(15, 'vinicius', 'vini@gmail.com', '12312312312', '123', 'admin', NULL),
(16, 'vinicius2', 'vini3@gmail.com', '32132132132', '123', 'user', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `anamnese_emergencia_medica`
--
ALTER TABLE `anamnese_emergencia_medica`
  ADD PRIMARY KEY (`idAnamnese_Emergencia_Medica`),
  ADD UNIQUE KEY `idAnamnese_Emergência_Médica_UNIQUE` (`idAnamnese_Emergencia_Medica`);

--
-- Índices de tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  ADD PRIMARY KEY (`idAnamnese_Gestacional`);

--
-- Índices de tabela `avaliacao_cinematica`
--
ALTER TABLE `avaliacao_cinematica`
  ADD PRIMARY KEY (`idAvaliacao_Cinematica`);

--
-- Índices de tabela `avaliacao_glasgow`
--
ALTER TABLE `avaliacao_glasgow`
  ADD PRIMARY KEY (`idAvaliacao_Glasgow`),
  ADD UNIQUE KEY `idAvaliacao_Glasgow_UNIQUE` (`idAvaliacao_Glasgow`);

--
-- Índices de tabela `fichas`
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
-- Índices de tabela `localizacao_dos_traumas`
--
ALTER TABLE `localizacao_dos_traumas`
  ADD PRIMARY KEY (`idLocalizacao_dos_Traumas`);

--
-- Índices de tabela `materiais_utilizados_deixados`
--
ALTER TABLE `materiais_utilizados_deixados`
  ADD PRIMARY KEY (`idMateriais_Utilizados_Deixados`),
  ADD UNIQUE KEY `idMateriais_Utilizados_Deixados_UNIQUE` (`idMateriais_Utilizados_Deixados`);

--
-- Índices de tabela `materiais_utilizados_descartavel`
--
ALTER TABLE `materiais_utilizados_descartavel`
  ADD PRIMARY KEY (`idMateriais_Utilizados_Descartavel`),
  ADD UNIQUE KEY `idMateriais_Utilizados_Descartavel_UNIQUE` (`idMateriais_Utilizados_Descartavel`);

--
-- Índices de tabela `objetos_recolhidos`
--
ALTER TABLE `objetos_recolhidos`
  ADD PRIMARY KEY (`idObjetos_Recolhidos`);

--
-- Índices de tabela `observacoes_importantes`
--
ALTER TABLE `observacoes_importantes`
  ADD PRIMARY KEY (`idObservacoes_Importantes`),
  ADD UNIQUE KEY `idObservacoes_Importantes_UNIQUE` (`idObservacoes_Importantes`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD UNIQUE KEY `idReports_Patient_UNIQUE` (`idPaciente`);

--
-- Índices de tabela `problemas_encontrados`
--
ALTER TABLE `problemas_encontrados`
  ADD PRIMARY KEY (`idProblemas_Encontrados`),
  ADD UNIQUE KEY `idProblemas_Encontrados_UNIQUE` (`idProblemas_Encontrados`);

--
-- Índices de tabela `procedimentos_efetuados`
--
ALTER TABLE `procedimentos_efetuados`
  ADD PRIMARY KEY (`idProcedimentos_Efetuados`),
  ADD UNIQUE KEY `idProcedimentos_Efetuados_UNIQUE` (`idProcedimentos_Efetuados`);

--
-- Índices de tabela `sinais_e_sintomas`
--
ALTER TABLE `sinais_e_sintomas`
  ADD PRIMARY KEY (`idSinais_e_Sintomas`),
  ADD UNIQUE KEY `idSinais_e_Sintomas_UNIQUE` (`idSinais_e_Sintomas`);

--
-- Índices de tabela `sinais_vitais`
--
ALTER TABLE `sinais_vitais`
  ADD PRIMARY KEY (`idSinais_Vitais`),
  ADD UNIQUE KEY `idSinais_Vitais_UNIQUE` (`idSinais_Vitais`);

--
-- Índices de tabela `tipo_de_ocorrencia`
--
ALTER TABLE `tipo_de_ocorrencia`
  ADD PRIMARY KEY (`idTipo_de_Ocorrencia`),
  ADD UNIQUE KEY `idTipo_de_Ocorrencia_UNIQUE` (`idTipo_de_Ocorrencia`);

--
-- Índices de tabela `transporte_decisao_transporte`
--
ALTER TABLE `transporte_decisao_transporte`
  ADD PRIMARY KEY (`idDecisao_Transporte`),
  ADD UNIQUE KEY `idDecisao_Transporte_UNIQUE` (`idDecisao_Transporte`);

--
-- Índices de tabela `transporte_detalhes_viagem`
--
ALTER TABLE `transporte_detalhes_viagem`
  ADD PRIMARY KEY (`idDetalhes_Viagem`);

--
-- Índices de tabela `transporte_forma_de_conducao`
--
ALTER TABLE `transporte_forma_de_conducao`
  ADD PRIMARY KEY (`idForma_de_Conducao`),
  ADD UNIQUE KEY `idForma_de_Conducao_UNIQUE` (`idForma_de_Conducao`);

--
-- Índices de tabela `transporte_vitima_era`
--
ALTER TABLE `transporte_vitima_era`
  ADD PRIMARY KEY (`idTransporte_Vitima_Era`),
  ADD UNIQUE KEY `idTransporte_Vitima_Era_UNIQUE` (`idTransporte_Vitima_Era`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `idUser_UNIQUE` (`id_usuario`),
  ADD UNIQUE KEY `Email_UNIQUE` (`email`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `Reports_UNIQUE` (`id_fichas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anamnese_emergencia_medica`
--
ALTER TABLE `anamnese_emergencia_medica`
  MODIFY `idAnamnese_Emergencia_Medica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  MODIFY `idAnamnese_Gestacional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de tabela `avaliacao_cinematica`
--
ALTER TABLE `avaliacao_cinematica`
  MODIFY `idAvaliacao_Cinematica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de tabela `avaliacao_glasgow`
--
ALTER TABLE `avaliacao_glasgow`
  MODIFY `idAvaliacao_Glasgow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT de tabela `fichas`
--
ALTER TABLE `fichas`
  MODIFY `id_fichas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `materiais_utilizados_deixados`
--
ALTER TABLE `materiais_utilizados_deixados`
  MODIFY `idMateriais_Utilizados_Deixados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `materiais_utilizados_descartavel`
--
ALTER TABLE `materiais_utilizados_descartavel`
  MODIFY `idMateriais_Utilizados_Descartavel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `objetos_recolhidos`
--
ALTER TABLE `objetos_recolhidos`
  MODIFY `idObjetos_Recolhidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de tabela `observacoes_importantes`
--
ALTER TABLE `observacoes_importantes`
  MODIFY `idObservacoes_Importantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT de tabela `problemas_encontrados`
--
ALTER TABLE `problemas_encontrados`
  MODIFY `idProblemas_Encontrados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de tabela `procedimentos_efetuados`
--
ALTER TABLE `procedimentos_efetuados`
  MODIFY `idProcedimentos_Efetuados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT de tabela `sinais_e_sintomas`
--
ALTER TABLE `sinais_e_sintomas`
  MODIFY `idSinais_e_Sintomas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de tabela `sinais_vitais`
--
ALTER TABLE `sinais_vitais`
  MODIFY `idSinais_Vitais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT de tabela `tipo_de_ocorrencia`
--
ALTER TABLE `tipo_de_ocorrencia`
  MODIFY `idTipo_de_Ocorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT de tabela `transporte_decisao_transporte`
--
ALTER TABLE `transporte_decisao_transporte`
  MODIFY `idDecisao_Transporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de tabela `transporte_detalhes_viagem`
--
ALTER TABLE `transporte_detalhes_viagem`
  MODIFY `idDetalhes_Viagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `transporte_forma_de_conducao`
--
ALTER TABLE `transporte_forma_de_conducao`
  MODIFY `idForma_de_Conducao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT de tabela `transporte_vitima_era`
--
ALTER TABLE `transporte_vitima_era`
  MODIFY `idTransporte_Vitima_Era` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `fichas`
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
  ADD CONSTRAINT `idSinais_Vitais` FOREIGN KEY (`idSinais_Vitais`) REFERENCES `sinais_vitais` (`idSinais_Vitais`),
  ADD CONSTRAINT `idSinais_e_Sintomas` FOREIGN KEY (`idSinais_e_Sintomas`) REFERENCES `sinais_e_sintomas` (`idSinais_e_Sintomas`),
  ADD CONSTRAINT `idTipo_de_Ocorrencia` FOREIGN KEY (`idTipo_de_Ocorrencia`) REFERENCES `tipo_de_ocorrencia` (`idTipo_de_Ocorrencia`),
  ADD CONSTRAINT `idTransporte_Vitima_Era` FOREIGN KEY (`idTransporte_Vitima_Era`) REFERENCES `transporte_vitima_era` (`idTransporte_Vitima_Era`);

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `id_fichas` FOREIGN KEY (`id_fichas`) REFERENCES `fichas` (`id_fichas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
