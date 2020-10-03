-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 08-Out-2013 às 15:55
-- Versão do servidor: 5.1.44
-- versão do PHP: 5.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `frameWork`
--
--drop database frameWork;
CREATE DATABASE IF NOT EXISTS `frameWork` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `frameWork`;


CREATE TABLE IF NOT EXISTS `prefixoLogradouro_tela` (
  `idPrefixoLogradouro` int(10) NOT NULL AUTO_INCREMENT COMMENT 'chave primaria',
  `descricao` varchar(100) NOT NULL COMMENT 'descrição do registro',
  `idUsuarioFK` int(10) NOT NULL COMMENT 'chave primaria do colaborador que realizou o cadastro ou ultima atualização do registro',
  `dataCadastro` datetime NOT NULL COMMENT 'data de cadastro do registro',
  `dataUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'data da ultima atualizacao do registro',
  `versao` int(10) NOT NULL COMMENT 'usado para mater a integridade quando feitas alterações simultâneas',
  `ativo` char(1) NOT NULL COMMENT 'se o registro esta ativo ou nao',
  PRIMARY KEY (`idPrefixoLogradouro`),
  KEY `descricao` (`descricao`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;


CREATE TABLE IF NOT EXISTS `pais_tela` (
  `idPais` int(10) NOT NULL AUTO_INCREMENT COMMENT 'chave primaria',
  `descricao` varchar(50) NOT NULL COMMENT 'descrição do registro',
  `codigoBacen` varchar(5) DEFAULT NULL COMMENT 'codigo nacional',
  `dataCadastro` datetime NOT NULL COMMENT 'data de cadastro do registro',
  `idUsuarioFK` int(10) NOT NULL COMMENT 'chave primaria do colaborador que realizou o cadastrou ou ultima atualização',
  `dataUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'data da ultima atualizacao do registro',
  `ativo` char(1) NOT NULL COMMENT 'se o registro esta ativo ou nao',
  `versao` int(10) NOT NULL COMMENT 'usado para mater a integridade quando feitas alterações simultâneas.',
  PRIMARY KEY (`idPais`),
  KEY `descricao` (`descricao`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=248 ;


--
-- Extraindo dados da tabela `prefixoLogradouro_tela`
--




INSERT INTO `pais_tela` (`idPais`, `descricao`, `codigoBacen`, `dataCadastro`, `idUsuarioFK`, `dataUpdate`, `ativo`, `versao`) VALUES
(1, 'AFEGANISTAO', '00132', '2013-05-05 13:50:00', 1, '2013-05-06 03:33:17', '1', 3),
(2, 'ALBANIA, REPUBLICA DA', '00175', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(3, 'ALEMANHA', '00230', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(4, 'BURKINA FASO', '00310', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(5, 'ANDORRA', '00370', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(6, 'ANGOLA', '00400', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(7, 'ANGUILLA', '00418', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(8, 'ANTIGUA E BARBUDA', '00434', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(9, 'ANTILHAS HOLANDESAS', '00477', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(10, 'ARABIA SAUDITA', '00531', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(11, 'ARGELIA', '00590', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(12, 'ARGENTINA', '00639', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(13, 'ARMENIA, REPUBLICA DA', '00647', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(14, 'ARUBA', '00655', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(15, 'AUSTRALIA', '00698', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(16, 'AUSTRIA', '00728', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(17, 'AZERBAIJAO, REPUBLICA DO', '00736', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(18, 'BAHAMAS, ILHAS', '00779', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(19, 'BAHREIN, ILHAS', '00809', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(20, 'BANGLADESH', '00817', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(21, 'BARBADOS', '00833', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(22, 'BELARUS, REPUBLICA DA', '00850', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(23, 'BELGICA', '00876', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(24, 'BELIZE', '00884', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(25, 'BERMUDAS', '00906', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(26, 'MIANMAR (BIRMANIA)', '00930', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(27, 'BOLIVIA', '00973', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(28, 'BOSNIA-HERZEGOVINA (REPUBLICA DA)', '00981', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(29, 'BOTSUANA', '01015', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(30, 'BRASIL', '01058', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(31, 'BRUNEI', '01082', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(32, 'BULGARIA, REPUBLICA DA', '01112', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(33, 'BURUNDI', '01155', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(34, 'BUTAO', '01198', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(35, 'CABO VERDE, REPUBLICA DE', '01279', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(36, 'CAYMAN, ILHAS', '01376', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(37, 'CAMBOJA', '01414', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(38, 'CAMAROES', '01457', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(39, 'CANADA', '01490', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(40, 'GUERNSEY, ILHA DO CANAL (INCLUI ALDERNEY E SARK) ', '01504', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(41, 'JERSEY, ILHA DO CANAL', '01508', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(42, 'CANARIAS, ILHAS', '01511', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(43, 'CAZAQUISTAO, REPUBLICA DO', '01538', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(44, 'CATAR', '01546', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(45, 'CHILE', '01589', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(46, 'CHINA, REPUBLICA POPULAR', '01600', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(47, 'FORMOSA (TAIWAN)', '01619', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(48, 'CHIPRE', '01635', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(49, 'COCOS(KEELING),ILHAS', '01651', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(50, 'COLOMBIA', '01694', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(51, 'COMORES, ILHAS', '01732', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(52, 'CONGO', '01775', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(53, 'COOK, ILHAS', '01830', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(54, 'COREIA, REP.POP.DEMOCRATICA', '01872', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(55, 'COREIA, REPUBLICA DA', '01902', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(56, 'COSTA DO MARFIM', '01937', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(57, 'CROACIA (REPUBLICA DA)   ', '01953', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(58, 'COSTA RICA', '01961', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(59, 'COVEITE', '01988', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(60, 'CUBA', '01996', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(61, 'BENIN', '02291', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(62, 'DINAMARCA', '02321', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(63, 'DOMINICA,ILHA', '02356', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(64, 'EQUADOR', '02399', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(65, 'EGITO', '02402', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(66, 'ERITREIA', '02437', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(67, 'EMIRADOS ARABES UNIDOS', '02445', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(68, 'ESPANHA', '02453', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(69, 'ESLOVENIA, REPUBLICA DA ', '02461', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(70, 'ESLOVACA, REPUBLICA', '02470', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(71, 'ESTADOS UNIDOS', '02496', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(72, 'ESTONIA, REPUBLICA DA', '02518', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(73, 'ETIOPIA', '02534', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(74, 'FALKLAND (ILHAS MALVINAS)', '02550', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(75, 'FEROE, ILHAS', '02593', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(76, 'FILIPINAS', '02674', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(77, 'FINLANDIA', '02712', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(78, 'FRANCA', '02755', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(79, 'GABAO', '02810', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(80, 'GAMBIA', '02852', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(81, 'GANA', '02895', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(82, 'GEORGIA, REPUBLICA DA', '02917', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(83, 'GIBRALTAR', '02933', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(84, 'GRANADA', '02976', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(85, 'GRECIA', '03018', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(86, 'GROENLANDIA', '03050', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(87, 'GUADALUPE', '03093', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(88, 'GUAM', '03131', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(89, 'GUATEMALA', '03174', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(90, 'GUIANA FRANCESA', '03255', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(91, 'GUINE', '03298', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(92, 'GUINE-EQUATORIAL', '03310', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(93, 'GUINE-BISSAU', '03344', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(94, 'GUIANA', '03379', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(95, 'HAITI', '03417', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(96, 'HONDURAS', '03450', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(97, 'HONG KONG', '03514', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(98, 'HUNGRIA, REPUBLICA DA', '03557', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(99, 'IEMEN', '03573', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(100, 'MAN, ILHA DE', '03595', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(101, 'INDIA', '03611', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(102, 'INDONESIA', '03654', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(103, 'IRAQUE', '03697', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(104, 'IRA, REPUBLICA ISLAMICA DO', '03727', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(105, 'IRLANDA', '03751', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(106, 'ISLANDIA', '03794', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(107, 'ISRAEL', '03832', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(108, 'ITALIA', '03867', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(109, 'JAMAICA', '03913', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(110, 'JOHNSTON, ILHAS', '03964', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(111, 'JAPAO', '03999', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(112, 'JORDANIA', '04030', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(113, 'KIRIBATI', '04111', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(114, 'LAOS, REP.POP.DEMOCR.DO', '04200', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(115, 'LESOTO', '04260', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(116, 'LETONIA, REPUBLICA DA', '04278', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(117, 'LIBANO', '04316', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(118, 'LIBERIA', '04340', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(119, 'LIBIA', '04383', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(120, 'LIECHTENSTEIN', '04405', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(121, 'LITUANIA, REPUBLICA DA', '04421', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(122, 'LUXEMBURGO', '04456', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(123, 'MACAU', '04472', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(124, 'MACEDONIA, ANT.REP.IUGOSLAVA', '04499', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(125, 'MADAGASCAR', '04502', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(126, 'MADEIRA, ILHA DA', '04525', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(127, 'MALASIA', '04553', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(128, 'MALAVI', '04588', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(129, 'MALDIVAS', '04618', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(130, 'MALI', '04642', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(131, 'MALTA', '04677', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(132, 'MARIANAS DO NORTE', '04723', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(133, 'MARROCOS', '04740', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(134, 'MARSHALL,ILHAS', '04766', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(135, 'MARTINICA', '04774', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(136, 'MAURICIO', '04855', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(137, 'MAURITANIA', '04880', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(138, 'MIDWAY, ILHAS', '04901', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(139, 'MEXICO', '04936', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(140, 'MOLDAVIA, REPUBLICA DA', '04944', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(141, 'MONACO', '04952', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(142, 'MONGOLIA', '04979', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(143, 'MONTENEGRO', '04985', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(144, 'MICRONESIA', '04995', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(145, 'MONTSERRAT,ILHAS', '05010', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(146, 'MOCAMBIQUE', '05053', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(147, 'NAMIBIA', '05070', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(148, 'NAURU', '05088', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(149, 'CHRISTMAS,ILHA (NAVIDAD)', '05118', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(150, 'NEPAL', '05177', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(151, 'NICARAGUA', '05215', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(152, 'NIGER', '05258', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(153, 'NIGERIA', '05282', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(154, 'NIUE,ILHA', '05312', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(155, 'NORFOLK,ILHA', '05355', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(156, 'NORUEGA', '05380', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(157, 'NOVA CALEDONIA', '05428', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(158, 'PAPUA NOVA GUINE', '05452', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(159, 'NOVA ZELANDIA', '05487', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(160, 'VANUATU', '05517', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(161, 'OMA', '05568', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(162, 'PACIFICO,ILHAS DO (POSSESSAO DOS EUA)', '05665', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(163, 'PAISES BAIXOS (HOLANDA)', '05738', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(164, 'PALAU', '05754', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(165, 'PAQUISTAO', '05762', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(166, 'PANAMA', '05800', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(167, 'PARAGUAI', '05860', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(168, 'PERU', '05894', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(169, 'PITCAIRN,ILHA', '05932', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(170, 'POLINESIA FRANCESA', '05991', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(171, 'POLONIA, REPUBLICA DA', '06033', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(172, 'PORTUGAL', '06076', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(173, 'PORTO RICO', '06114', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(174, 'QUENIA', '06238', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(175, 'QUIRGUIZ, REPUBLICA', '06254', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(176, 'REINO UNIDO', '06289', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(177, 'REPUBLICA CENTRO-AFRICANA', '06408', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(178, 'REPUBLICA DOMINICANA', '06475', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(179, 'REUNIAO, ILHA', '06602', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(180, 'ZIMBABUE', '06653', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(181, 'ROMENIA', '06700', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(182, 'RUANDA', '06750', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(183, 'RUSSIA, FEDERACAO DA', '06769', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(184, 'SALOMAO, ILHAS', '06777', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(185, 'SAINT KITTS E NEVIS', '06781', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(186, 'SAARA OCIDENTAL', '06858', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(187, 'EL SALVADOR', '06874', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(188, 'SAMOA', '06904', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(189, 'SAMOA AMERICANA', '06912', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(190, 'SAO CRISTOVAO E NEVES,ILHAS', '06955', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(191, 'SAN MARINO', '06971', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(192, 'SAO PEDRO E MIQUELON', '07005', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(193, 'SAO VICENTE E GRANADINAS', '07056', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(194, 'SANTA HELENA', '07102', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(195, 'SANTA LUCIA', '07153', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(196, 'SAO TOME E PRINCIPE, ILHAS', '07200', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(197, 'SENEGAL', '07285', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(198, 'SEYCHELLES', '07315', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(199, 'SERRA LEOA', '07358', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(200, 'SERVIA', '07370', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(201, 'CINGAPURA', '07412', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(202, 'SIRIA, REPUBLICA ARABE DA', '07447', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(203, 'SOMALIA', '07480', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(204, 'SRI LANKA', '07501', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(205, 'SUAZILANDIA', '07544', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(206, 'AFRICA DO SUL', '07560', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(207, 'SUDAO', '07595', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(208, 'SUECIA', '07641', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(209, 'SUICA', '07676', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(210, 'SURINAME', '07706', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(211, 'TADJIQUISTAO, REPUBLICA DO', '07722', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(212, 'TAILANDIA', '07765', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(213, 'TANZANIA, REP.UNIDA DA', '07803', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(214, 'TERRITORIO BRIT.OC.INDICO', '07820', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(215, 'DJIBUTI', '07838', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(216, 'CHADE', '07889', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(217, 'TCHECA, REPUBLICA', '07919', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(218, 'TIMOR LESTE', '07951', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(219, 'TOGO', '08001', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(220, 'TOQUELAU,ILHAS', '08052', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(221, 'TONGA', '08109', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(222, 'TRINIDAD E TOBAGO', '08150', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(223, 'TUNISIA', '08206', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(224, 'TURCAS E CAICOS,ILHAS', '08230', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(225, 'TURCOMENISTAO, REPUBLICA DO', '08249', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(226, 'TURQUIA', '08273', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(227, 'TUVALU', '08281', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(228, 'UCRANIA', '08311', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(229, 'UGANDA', '08338', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(230, 'URUGUAI', '08451', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(231, 'UZBEQUISTAO, REPUBLICA DO', '08478', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(232, 'VATICANO, EST.DA CIDADE DO', '08486', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(233, 'VENEZUELA', '08508', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(234, 'VIETNA', '08583', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(235, 'VIRGENS,ILHAS (BRITANICAS)', '08630', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(236, 'VIRGENS,ILHAS (E.U.A.)', '08664', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(237, 'FIJI', '08702', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(238, 'WAKE, ILHA', '08737', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(239, 'CONGO, REPUBLICA DEMOCRATICA DO ', '08885', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(240, 'ZAMBIA', '08907', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(241, 'ZONA DO CANAL DO PANAMA', '08958', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(242, 'PROVISAO DE NAVIOS E AERONAVES', '09903', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(243, 'A DESIGNAR', '09946', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(244, 'BANCOS CENTRAIS', '09950', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(245, 'ORGANIZACOES INTERNACIONAIS', '09970', '2013-05-05 13:50:00', 1, '2013-05-05 19:38:45', '1', 1),
(247, 'Pais de teste', '1', '2013-06-14 19:32:18', 1, '2013-06-14 22:32:18', '1', 1);



INSERT INTO `prefixoLogradouro_tela` (`idPrefixoLogradouro`, `descricao`, `idUsuarioFK`, `dataCadastro`, `dataUpdate`, `versao`, `ativo`) VALUES
(1, 'R.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(2, 'Tv.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(3, 'Pc.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(4, 'Av.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(5, 'Lrg.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1');
INSERT INTO `prefixoLogradouro_tela` (`idPrefixoLogradouro`, `descricao`, `idUsuarioFK`, `dataCadastro`, `dataUpdate`, `versao`, `ativo`) VALUES
(6, 'Esp.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(7, 'Prq.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(8, 'Vd.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(9, 'Jd.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(10, 'Gal.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(11, 'Bc.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(12, 'Ia.', 1, '2009-09-14 16:45:30', '2009-09-14 19:45:30', 1, '1'),
(13, 'Est.', 1, '2009-09-14 16:45:31', '2009-09-14 19:45:31', 1, '1'),
(14, 'Ac.', 1, '2009-09-14 16:45:31', '2009-09-14 19:45:31', 1, '1'),
(15, 'Rot.', 1, '2009-09-14 16:45:31', '2009-09-14 19:45:31', 1, '1');
INSERT INTO `prefixoLogradouro_tela` (`idPrefixoLogradouro`, `descricao`, `idUsuarioFK`, `dataCadastro`, `dataUpdate`, `versao`, `ativo`) VALUES
(16, 'Al.', 1, '2009-09-14 16:45:31', '2009-09-14 19:45:31', 1, '1'),
(17, 'Vla.', 1, '2009-09-14 16:45:31', '2009-09-14 19:45:31', 1, '1'),
(18, 'Belv', 1, '2009-09-14 16:45:32', '2009-09-14 19:45:32', 1, '1'),
(19, 'V.', 1, '2009-09-14 16:45:33', '2009-09-14 19:45:33', 1, '1'),
(20, 'Psg.', 1, '2009-09-14 16:45:34', '2009-09-14 19:45:34', 1, '1'),
(21, 'Ret.', 1, '2009-09-14 16:45:35', '2009-09-14 19:45:35', 1, '1'),
(22, 'Rod.', 1, '2009-09-14 16:45:37', '2009-09-14 19:45:37', 1, '1'),
(23, 'Pas.', 1, '2009-09-14 16:45:37', '2009-09-14 19:45:37', 1, '1'),
(24, 'Evd.', 1, '2009-09-14 16:45:37', '2009-09-14 19:45:37', 1, '1'),
(25, 'Psa.', 1, '2009-09-14 16:45:37', '2009-09-14 19:45:37', 1, '1'),
(26, 'Dt.', 1, '2009-09-14 16:45:39', '2009-09-14 19:45:39', 1, '1'),
(27, 'Lot.', 1, '2009-09-14 16:45:39', '2009-09-14 19:45:39', 1, '1'),
(28, 'Vl.', 1, '2009-09-14 16:45:39', '2009-09-14 19:45:39', 1, '1'),
(29, 'RSR.', 1, '2009-09-14 16:45:41', '2009-09-14 19:45:41', 1, '1'),
(30, 'RSEs', 1, '2009-09-14 16:45:41', '2009-09-14 19:45:41', 1, '1');
INSERT INTO `prefixoLogradouro_tela` (`idPrefixoLogradouro`, `descricao`, `idUsuarioFK`, `dataCadastro`, `dataUpdate`, `versao`, `ativo`) VALUES
(31, 'Cor.', 1, '2009-09-14 16:45:44', '2009-09-14 19:45:44', 1, '1'),
(32, 'Sit.', 1, '2009-09-14 16:45:44', '2009-09-14 19:45:44', 1, '1'),
(33, 'Pto.', 1, '2009-09-14 16:45:45', '2009-09-14 19:45:45', 1, '1'),
(34, 'Q.', 1, '2009-09-14 16:45:46', '2009-09-14 19:45:46', 1, '1'),
(35, 'Cam.', 1, '2009-09-14 16:45:46', '2009-09-14 19:45:46', 1, '1'),
(36, 'yj', 1, '2013-05-12 00:47:04', '2013-05-16 00:30:08', 1, '0'),
(37, '45', 1, '2013-05-21 09:44:58', '2013-05-21 12:45:08', 1, '1');
update prefixoLogradouro_tela set descricao='teste' WHERE idPrefixoLogradouro=37;







/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;