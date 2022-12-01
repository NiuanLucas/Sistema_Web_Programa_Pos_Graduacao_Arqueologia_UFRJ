-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2022 às 05:54
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ppgarq_museu_ufrj`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cards`
--

CREATE TABLE `cards` (
  `card_id` int(11) NOT NULL,
  `card_nome` varchar(256) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `card_descricao` text NOT NULL,
  `card_url_externa` text NOT NULL,
  `card_categoria` varchar(128) NOT NULL,
  `card_image` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `card_pagina_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cards`
--

INSERT INTO `cards` (`card_id`, `card_nome`, `card_descricao`, `card_url_externa`, `card_categoria`, `card_image`, `card_pagina_id`) VALUES
(1, 'Noticia 01: Arqueologia ', 'A arqueologia feita no Brasil é essencialmente uma ar- queologia de sociedades indígenas extintas que vi- veram em um passado distante, deixando como testemunho de sua existência somente restos ma- teriais.', 'https://pt.wikipedia.org/wiki/Hist%C3%B3ria_do_Brasil', 'Notícias', 'images_capas/image (1).jpg', 0),
(2, 'Noticia 02: Historia do Brasil', 'A História do Brasil começa com a chegada dos primeiros humanos na América do Sul há pelo menos 22 000 anos AP.', '0', 'Pesquisa', 'images_capas/image (9).jpg', 558),
(3, 'Noticia 03: Descoberta', 'Embora ainda estejamos no primeiro semestre de 2021, arqueólogos estão a todo o vapor em suas escavações ao redor do mundo. Especialmente no Egito, — onde uma das mais importantes civilizações da antiguidade floresceram', 'ttt', 'Projeto', 'images_capas/Espaço, gênero e controle social.JPEG', 557),
(4, 'Noticia 04: Pesquisa', 'A arqueologia é uma área científica que se preocupa em compreender o passado das sociedades humanas por meio de registros e evidências antigas. ', '0', 'Mundo', 'images_capas/Uma arqueologia da paisagem da cidade de Teresina.jpg', 565);

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id_contato` int(32) NOT NULL DEFAULT 0,
  `nome_completo_contato` varchar(256) NOT NULL,
  `email_contato` varchar(256) NOT NULL,
  `assunto_contato` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `mensagem_contato` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `configuracoes`
--

INSERT INTO `configuracoes` (`id_contato`, `nome_completo_contato`, `email_contato`, `assunto_contato`, `mensagem_contato`) VALUES
(1, 'Niuan Lucas', 'niuanlucas@gmail.com', 'Assunto Teste', 'Mensagem BlaBlabla'),
(28, 'Niuan Lucas', 'niuanlucasnicolau@gmail.com', 'Teste LAH', 'Teste LAH\r\nTeste LAH\r\nTeste LAH\r\nTeste LAH'),
(29, 'Niuan Lucas', 'niuanlucasnicolau@gmail.com', 'Teste LAH', 'Teste LAH\r\nTeste LAH\r\nTeste LAH\r\nTeste LAH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id_contato` int(32) NOT NULL,
  `nome_completo_contato` varchar(256) NOT NULL,
  `email_contato` varchar(256) NOT NULL,
  `assunto_contato` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `mensagem_contato` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id_contato`, `nome_completo_contato`, `email_contato`, `assunto_contato`, `mensagem_contato`) VALUES
(1, 'Niuan Lucas', 'niuanlucas@gmail.com', 'Assunto Teste', 'Mensagem BlaBlabla'),
(28, 'Niuan Lucas', 'niuanlucasnicolau@gmail.com', 'Teste LAH', 'Teste LAH\r\nTeste LAH\r\nTeste LAH\r\nTeste LAH'),
(29, 'Niuan Lucas', 'niuanlucasnicolau@gmail.com', 'Teste LAH', 'Teste LAH\r\nTeste LAH\r\nTeste LAH\r\nTeste LAH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `pagina_modular_id` int(32) NOT NULL,
  `pagina_modular_titulo` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pagina_modular_conteudo` mediumtext NOT NULL,
  `pagina_modular_conteudo_2` mediumtext NOT NULL,
  `pagina_modular_categoria` varchar(128) NOT NULL,
  `pagina_modular_descricao` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pagina_modular_palavras_chaves` varchar(128) NOT NULL,
  `pagina_modular_imagem_capa` text CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `pagina_modular_slide` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`pagina_modular_id`, `pagina_modular_titulo`, `pagina_modular_conteudo`, `pagina_modular_conteudo_2`, `pagina_modular_categoria`, `pagina_modular_descricao`, `pagina_modular_palavras_chaves`, `pagina_modular_imagem_capa`, `data`, `pagina_modular_slide`) VALUES
(557, 'Noticia #2', 'PHA+TGVjdHVzIHNvZGFsZXMgbWF1cmlzIGxlbyB0ZWxsdXMgZWdlc3RhcyBmYXVjaWJ1cyBydXRydW0gYXB0ZW50IGluIHF1aXNxdWUgY29udmFsbGlzLCBsZW8gbW9sbGlzIG5pc2wgcG90ZW50aSBkb2xvciBhIHZlbGl0IGNvbW1vZG8gcHVsdmluYXIgbmlzaS4gYXQgc2VkIG1pIGN1cmFlIGFsaXF1YW0gY3VyYWJpdHVyIGF1Z3VlIGVsZWlmZW5kIGluY2VwdG9zLCBxdWlzIHN1c3BlbmRpc3NlIGlkIG9kaW8gbGFvcmVldCBldGlhbSBpbiwgY3VyYWJpdHVyIGxvcmVtIHBlciB0ZWxsdXMgdmVzdGlidWx1bSBkaWN0dW1zdCBkb2xvci4gdml2ZXJyYSBlbmltIGluIGVsaXQgcGVyIGVsZWlmZW5kIG1vbGxpcyBhbGlxdWFtIGxvcmVtLCB1bGxhbWNvcnBlciBlZ2VzdGFzIG1vbGxpcyBzZW0gZG9uZWMgZXRpYW0gbWkgZW5pbSwgbGliZXJvIGFtZXQgZGljdHVtIG1hdHRpcyBtYWVjZW5hcyBjdXJzdXMgbm9zdHJhLiBuYW0gZHVpcyBwbGFjZXJhdCBub24gc2VkIHBvcnR0aXRvciBjb25kaW1lbnR1bSB2ZWhpY3VsYSBjcmFzIHByZXRpdW0gY3Vyc3VzIHZlbmVuYXRpcyBpcHN1bSBsdWN0dXMgYWxpcXVhbSBlbGl0LCBlcmF0IHBsYXRlYSBlbGVtZW50dW0gdWx0cmljZXMgb2RpbyBjdXJzdXMgcG9ydGEgYXB0ZW50IGp1c3RvIGFtZXQgZHVpcyBwaGFzZWxsdXMgdmFyaXVzLiZuYnNwOzwvcD4NCg0KPHA+Jm5ic3A7PC9wPg0KDQo8cCBzdHlsZT0ibWFyZ2luLWxlZnQ6MjgwcHgiPjxpbWcgc3JjPSIvL2xvY2FsaG9zdC9sb2NhbGhvc3QvbGFoLW11c2V1L2Rhc2hib2FyZC9kYWRvcy91cGxvYWQvMy4gSW1hZ2VtIGNvbSBmdW5kbyB0cmFuc3BhcmVudGUucG5nIiAvPjwvcD4NCg0KPHAgc3R5bGU9Im1hcmdpbi1sZWZ0OjI4MHB4Ij4mbmJzcDs8L3A+DQo=', 'PHA+VHVycGlzIG1vcmJpIGxpdG9yYSB2aXZhbXVzIHBvc3VlcmUgbWF0dGlzLCB1cm5hIGludGVnZXIgdml2ZXJyYSB0dXJwaXMgbWFnbmEgcHVsdmluYXIsIGZ1c2NlIGRvbmVjIHBoYXNlbGx1cyBldS4gcG9ydGEgZXN0IHByb2luIGN1cmFiaXR1ciBwdXJ1cyBlbmltIHNlZCBsdWN0dXMgZmF1Y2lidXMgbWFnbmEgY3Vyc3VzIGNvbmRpbWVudHVtIGVyb3MgaW1wZXJkaWV0LCBsYWN1cyB2ZW5lbmF0aXMgcGhhcmV0cmEgY29tbW9kbyBjb25zZXF1YXQgYWxpcXVldCBwcmltaXMgaWFjdWxpcyBtb2xsaXMgcGxhdGVhIHR1cnBpcyBjb25zZXF1YXQuIGR1aSB2b2x1dHBhdCB1bHRyaWNpZXMgdG9ydG9yIG1vbGVzdGllIG51bmMgdml0YWUgbmV0dXMgYWMgc2VkIG1hc3NhLCBwcm9pbiB2YXJpdXMgaW1wZXJkaWV0IGhhYyBuaWJoIGhlbmRyZXJpdCBoYWMgbm9zdHJhIGFudGUgb2RpbyBtb3JiaSwgcG9ydGEgYXJjdSBjdXJzdXMgcHVydXMgZmVsaXMgYWMgYXVjdG9yIG1vbGxpcyBwcmV0aXVtLiBpbmNlcHRvcyBkaWFtIHNlZCBwcmltaXMgbnVsbGFtIHVsbGFtY29ycGVyIHZpdmFtdXMgbnVuYyBldWlzbW9kIHZvbHV0cGF0IGlhY3VsaXMgZGljdHVtc3QgY3VyYWUsIHNvbGxpY2l0dWRpbiBsb3JlbSByaG9uY3VzIGF1Y3RvciBxdWlzIGNvbnZhbGxpcyBzZWQgYXB0ZW50IGNvbnNlY3RldHVyIGNvbmd1ZS4mbmJzcDs8L3A+DQo=', 'noticias', 'Noticia #2', 'evento, lap, teste', 'images_capas/LAH.jpg', '2022-01-07 03:00:00', ' '),
(558, 'Noticia #1', 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwiPjxzcGFuIHN0eWxlPSJjb2xvcjojMDAwMDAwIj4mbmJzcDsmbmJzcDsgJm5ic3A7QWRpcGlzY2luZyBwcmV0aXVtIG9ybmFyZSBmYW1lcyByaXN1cyBwb3J0dGl0b3Igc29sbGljaXR1ZGluIGRhcGlidXMgY29tbW9kbyBuaXNsLCB2dWxwdXRhdGUgZXQgZnVzY2UgYXB0ZW50IG5hbSB0cmlzdGlxdWUgdGVtcHVzIGVzdCByaXN1cywgb3JjaSBmZWxpcyB0ZW1wb3IgcXVpc3F1ZSBwcmFlc2VudCB0dXJwaXMgbnVsbGEgY3Vyc3VzLiBwdXJ1cyBsb3JlbSBhZGlwaXNjaW5nIGN1YmlsaWEgZmF1Y2lidXMgZWxlbWVudHVtIHJ1dHJ1bSB0cmlzdGlxdWUsIHRhY2l0aSBlbGVpZmVuZCBuaXNsIGxlbyBkb25lYyBtYXNzYSBlZ2V0IHNvbGxpY2l0dWRpbiwgbmVjIHVybmEgdml0YWUgY3Vyc3VzIG51bGxhIGVsaXQuIHByZXRpdW0gbnVsbGEgZGljdHVtIGV1aXNtb2QgaW50ZXJkdW0gdXQgcnV0cnVtIHF1aXNxdWUgdmVzdGlidWx1bSBhZCBwbGF0ZWEsIG1hZWNlbmFzIGluIGV0IGVnZXQgZHVpIGR1aXMgZWxpdCBpZC4gaGVuZHJlcml0IHRlbXBvciBhbGlxdWFtIHRyaXN0aXF1ZSBhdWd1ZSBzYWdpdHRpcyB0dXJwaXMsIGN1cmFiaXR1ciBpZCBlbGl0IGxhY2luaWEgcG90ZW50aSBhYywgcmhvbmN1cyBvcm5hcmUgZWxpdCBjb25zZWN0ZXR1ciBhdWN0b3IuIGxhY3VzIGV0IGp1c3RvIGN1cmFiaXR1ciBmYW1lcyBvZGlvIGFkIGludGVnZXIgcmhvbmN1cyBkb25lYyBpbmNlcHRvcywgdmFyaXVzIHBoYXJldHJhIGhhYyB0b3JxdWVudCBldCBjb25kaW1lbnR1bSBjdXJhZSBpbnRlcmR1bSBtYXVyaXMgaGFjLCBuZWMgZXJhdCBlc3QgbmliaCBmYWNpbGlzaXMgZXVpc21vZCBkdWkgYXB0ZW50IG5lcXVlLiZuYnNwOzwvc3Bhbj48L3NwYW4+PC9zcGFuPjwvcD4NCg0KPHA+Jm5ic3A7PC9wPg0K', 'PHA+VHVycGlzIG1vcmJpIGxpdG9yYSB2aXZhbXVzIHBvc3VlcmUgbWF0dGlzLCB1cm5hIGludGVnZXIgdml2ZXJyYSB0dXJwaXMgbWFnbmEgcHVsdmluYXIsIGZ1c2NlIGRvbmVjIHBoYXNlbGx1cyBldS4gcG9ydGEgZXN0IHByb2luIGN1cmFiaXR1ciBwdXJ1cyBlbmltIHNlZCBsdWN0dXMgZmF1Y2lidXMgbWFnbmEgY3Vyc3VzIGNvbmRpbWVudHVtIGVyb3MgaW1wZXJkaWV0LCBsYWN1cyB2ZW5lbmF0aXMgcGhhcmV0cmEgY29tbW9kbyBjb25zZXF1YXQgYWxpcXVldCBwcmltaXMgaWFjdWxpcyBtb2xsaXMgcGxhdGVhIHR1cnBpcyBjb25zZXF1YXQuIGR1aSB2b2x1dHBhdCB1bHRyaWNpZXMgdG9ydG9yIG1vbGVzdGllIG51bmMgdml0YWUgbmV0dXMgYWMgc2VkIG1hc3NhLCBwcm9pbiB2YXJpdXMgaW1wZXJkaWV0IGhhYyBuaWJoIGhlbmRyZXJpdCBoYWMgbm9zdHJhIGFudGUgb2RpbyBtb3JiaSwgcG9ydGEgYXJjdSBjdXJzdXMgcHVydXMgZmVsaXMgYWMgYXVjdG9yIG1vbGxpcyBwcmV0aXVtLiBpbmNlcHRvcyBkaWFtIHNlZCBwcmltaXMgbnVsbGFtIHVsbGFtY29ycGVyIHZpdmFtdXMgbnVuYyBldWlzbW9kIHZvbHV0cGF0IGlhY3VsaXMgZGljdHVtc3QgY3VyYWUsIHNvbGxpY2l0dWRpbiBsb3JlbSByaG9uY3VzIGF1Y3RvciBxdWlzIGNvbnZhbGxpcyBzZWQgYXB0ZW50IGNvbnNlY3RldHVyIGNvbmd1ZS4mbmJzcDs8L3A+DQo=', 'noticias', 'Noticia #1', 'evento, lap, midia ', 'images_capas/Lab.jpg', '2021-12-28 03:00:00', ' '),
(565, 'Noticia #3', 'PHA+VHVycGlzIG1vcmJpIGxpdG9yYSB2aXZhbXVzIHBvc3VlcmUgbWF0dGlzLCB1cm5hIGludGVnZXIgdml2ZXJyYSB0dXJwaXMgbWFnbmEgcHVsdmluYXIsIGZ1c2NlIGRvbmVjIHBoYXNlbGx1cyBldS4gcG9ydGEgZXN0IHByb2luIGN1cmFiaXR1ciBwdXJ1cyBlbmltIHNlZCBsdWN0dXMgZmF1Y2lidXMgbWFnbmEgY3Vyc3VzIGNvbmRpbWVudHVtIGVyb3MgaW1wZXJkaWV0LCBsYWN1cyB2ZW5lbmF0aXMgcGhhcmV0cmEgY29tbW9kbyBjb25zZXF1YXQgYWxpcXVldCBwcmltaXMgaWFjdWxpcyBtb2xsaXMgcGxhdGVhIHR1cnBpcyBjb25zZXF1YXQuIGR1aSB2b2x1dHBhdCB1bHRyaWNpZXMgdG9ydG9yIG1vbGVzdGllIG51bmMgdml0YWUgbmV0dXMgYWMgc2VkIG1hc3NhLCBwcm9pbiB2YXJpdXMgaW1wZXJkaWV0IGhhYyBuaWJoIGhlbmRyZXJpdCBoYWMgbm9zdHJhIGFudGUgb2RpbyBtb3JiaSwgcG9ydGEgYXJjdSBjdXJzdXMgcHVydXMgZmVsaXMgYWMgYXVjdG9yIG1vbGxpcyBwcmV0aXVtLiBpbmNlcHRvcyBkaWFtIHNlZCBwcmltaXMgbnVsbGFtIHVsbGFtY29ycGVyIHZpdmFtdXMgbnVuYyBldWlzbW9kIHZvbHV0cGF0IGlhY3VsaXMgZGljdHVtc3QgY3VyYWUsIHNvbGxpY2l0dWRpbiBsb3JlbSByaG9uY3VzIGF1Y3RvciBxdWlzIGNvbnZhbGxpcyBzZWQgYXB0ZW50IGNvbnNlY3RldHVyIGNvbmd1ZS4mbmJzcDs8L3A+DQo=', 'PHA+VHVycGlzIG1vcmJpIGxpdG9yYSB2aXZhbXVzIHBvc3VlcmUgbWF0dGlzLCB1cm5hIGludGVnZXIgdml2ZXJyYSB0dXJwaXMgbWFnbmEgcHVsdmluYXIsIGZ1c2NlIGRvbmVjIHBoYXNlbGx1cyBldS4gcG9ydGEgZXN0IHByb2luIGN1cmFiaXR1ciBwdXJ1cyBlbmltIHNlZCBsdWN0dXMgZmF1Y2lidXMgbWFnbmEgY3Vyc3VzIGNvbmRpbWVudHVtIGVyb3MgaW1wZXJkaWV0LCBsYWN1cyB2ZW5lbmF0aXMgcGhhcmV0cmEgY29tbW9kbyBjb25zZXF1YXQgYWxpcXVldCBwcmltaXMgaWFjdWxpcyBtb2xsaXMgcGxhdGVhIHR1cnBpcyBjb25zZXF1YXQuIGR1aSB2b2x1dHBhdCB1bHRyaWNpZXMgdG9ydG9yIG1vbGVzdGllIG51bmMgdml0YWUgbmV0dXMgYWMgc2VkIG1hc3NhLCBwcm9pbiB2YXJpdXMgaW1wZXJkaWV0IGhhYyBuaWJoIGhlbmRyZXJpdCBoYWMgbm9zdHJhIGFudGUgb2RpbyBtb3JiaSwgcG9ydGEgYXJjdSBjdXJzdXMgcHVydXMgZmVsaXMgYWMgYXVjdG9yIG1vbGxpcyBwcmV0aXVtLiBpbmNlcHRvcyBkaWFtIHNlZCBwcmltaXMgbnVsbGFtIHVsbGFtY29ycGVyIHZpdmFtdXMgbnVuYyBldWlzbW9kIHZvbHV0cGF0IGlhY3VsaXMgZGljdHVtc3QgY3VyYWUsIHNvbGxpY2l0dWRpbiBsb3JlbSByaG9uY3VzIGF1Y3RvciBxdWlzIGNvbnZhbGxpcyBzZWQgYXB0ZW50IGNvbnNlY3RldHVyIGNvbmd1ZS4mbmJzcDs8L3A+DQo=', 'noticias', 'Noticia #3', 'Noticia #3', 'images_capas/Foto_Vidros do Rio de Janeiro.jpg', '2022-01-18 03:00:00', ' ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

CREATE TABLE `paginas` (
  `pagina_id` int(32) NOT NULL,
  `pagina_titulo` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pagina_conteudo` mediumtext NOT NULL,
  `pagina_conteudo_2` text NOT NULL,
  `pagina_categoria` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pagina_descricao` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pagina_palavras_chaves` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pagina_imagem_capa` varchar(255) DEFAULT NULL,
  `pagina_slide` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`pagina_id`, `pagina_titulo`, `pagina_conteudo`, `pagina_conteudo_2`, `pagina_categoria`, `pagina_descricao`, `pagina_palavras_chaves`, `pagina_imagem_capa`, `pagina_slide`) VALUES
(2, 'Inicio', 'TyBMYWJvcmF0Jm9hY3V0ZTtyaW8gZGUgQXJxdWVvbG9naWEgSGlzdCZvYWN1dGU7cmljYSBkbyBNdXNldSBOYWNpb25hbC8gVUZSSiBmb2kgY3JpYWRvIGVtIDIwMTggY29tbyB1bSBlc3BhJmNjZWRpbDtvIGRlIGludGVyYSZjY2VkaWw7JmF0aWxkZTtvIGFjYWQmZWNpcmM7bWljYSBlIGRlc2Vudm9sdmltZW50byBkZSBwZXNxdWlzYXMgdm9sdGFkYXMgcGFyYSBvIHBlciZpYWN1dGU7b2RvIGhpc3Qmb2FjdXRlO3JpY28gcG9yIHVtYSBwZXJzcGVjdGl2YSBhcnF1ZW9sJm9hY3V0ZTtnaWNhLCBkYW5kbyBjb250aW51aWRhZGUgYSB1bWEgbG9uZ2EgZSBpbXBvcnRhbnRlIHRyYWpldCZvYWN1dGU7cmlhIGRvIE11c2V1IE5hY2lvbmFsIG5lc3NlIGNhbXBvIGRlIGF0dWEmY2NlZGlsOyZhdGlsZGU7by4gU3VhcyBwcmluY2lwYWlzIGF0aXZpZGFkZXMgaW5jbHVlbSBvIGZvbWVudG8gYSBkZXNlbnZvbHZpbWVudG9zIG1ldG9kb2wmb2FjdXRlO2dpY29zIG5vIGNhbXBvIGRhIGFycXVlb2xvZ2lhIGhpc3Qmb2FjdXRlO3JpY2EgZSBhIGlkZW50aWZpY2EmY2NlZGlsOyZhdGlsZGU7bywgYW4mYWFjdXRlO2xpc2UgZSBpbnRlcnByZXRhJmNjZWRpbDsmYXRpbGRlO28gZGUgYXJ0ZWZhdG9zIGFycXVlb2wmb2FjdXRlO2dpY29zIGhpc3Qmb2FjdXRlO3JpY29zLiBBcyBwZXNxdWlzYXMgZGVzZW52b2x2aWRhcyBubyBMQUggY29icmVtIHVtIGFtcGxvIGVzcGVjdHJvIGRlIHBlciZpYWN1dGU7b2RvcyBlIHRlbWFzLCBpbmNsdWluZG8sIGVudHJlIG91dHJvcywgYXJxdWVvbG9naWEgZGEgRGkmYWFjdXRlO3Nwb3JhIEFmcmljYW5hLCBhcnF1ZW9sb2dpYSBkb3MgZ3J1cG9zIGluZCZpYWN1dGU7Z2VuYXMsIGFycXVlb2xvZ2lhIHVyYmFuYSwgYXJxdWVvbG9naWEgZG9zIHMmaWFjdXRlO3Rpb3MgcnVyYWlzLCBjb2xvbmlhbGlzbW8sIGcmZWNpcmM7bmVybyBlIGFycXVlb2xvZ2lhIHAmdWFjdXRlO2JsaWNhLiBPIExBSCB0ZW0gc2UgZGVkaWNhZG8gdGFtYiZlYWN1dGU7bSBhIGF0aXZpZGFkZXMgZGUgZW5zaW5vLCBhdHVhbmRvIG5vIFByb2dyYW1hIGRlIFAmb2FjdXRlO3MtR3JhZHVhJmNjZWRpbDsmYXRpbGRlO28gZW0gQXJxdWVvbG9naWEgKFBQR0FycSkgZG8gTXVzZXUgTmFjaW9uYWwgZSByZWNlYmVuZG8gYWx1bm9zIGRlIGluaWNpYSZjY2VkaWw7JmF0aWxkZTtvIGNpZW50JmlhY3V0ZTtmaWNhIGRlIG91dHJhcyBpbnN0aXR1aSZjY2VkaWw7Jm90aWxkZTtlcy4NCg==', '', 'Inicio', 'Informações básicas sobre o laboratório, vínculo com o DA e PPGArq, redes sociais', 'Inicio', 'images_capas/image (1).jpg', '6'),
(3, 'Ingresso', 'PHA+SW5ncmVzc288L3A+DQo=', 'PHA+SW5ncmVzc288L3A+DQo=', 'Ingresso', 'Ingresso', 'Ingresso', 'images_capas/image (2).jpg', '17'),
(4, 'O Programa', 'TyBQcm9ncmFtYQ==', 'TyBQcm9ncmFtYQ==', 'O Programa', 'O Programa', 'O Programa', 'images_capas/image (3).jpg', ' '),
(5, 'Pessoas', 'PHA+UGVzc29hczwvcD4NCg==', 'PHA+UGVzc29hczwvcD4NCg==', 'Pessoas', 'Pessoas', 'Pessoas', 'images_capas/image (4).jpg', ' '),
(7, 'Instalações', 'PHA+SW5zdGFsYSZjY2VkaWw7Jm90aWxkZTtlczwvcD4NCg==', 'PHA+SW5zdGFsYSZjY2VkaWw7Jm90aWxkZTtlczwvcD4NCg0KPHA+Jm5ic3A7PC9wPg0K', 'Instalações', 'Instalações', 'Instalações', 'images_capas/image (5).jpg', ' '),
(8, 'Contatos', 'PHA+Q29udGF0b3M8L3A+DQo=', 'PHA+Q29udGF0b3M8L3A+DQo=', 'Contatos', 'Contatos', 'Contatos', 'images_capas/image (6).jpg', ' '),
(6, 'Pesquisas', 'PHA+UGVzcXVpc2FzPC9wPg0K', '', '', 'Pesquisas', 'Pesquisas', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) NOT NULL,
  `slide_tamanho` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slide_descricao` text CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `slide_1` text NOT NULL,
  `slide_2` text NOT NULL,
  `slide_3` text NOT NULL,
  `slide_4` text NOT NULL,
  `slide_5` varchar(200) DEFAULT NULL,
  `slide_6` varchar(200) DEFAULT NULL,
  `slide_7` varchar(200) DEFAULT NULL,
  `slide_8` varchar(200) DEFAULT NULL,
  `slide_9` varchar(200) DEFAULT NULL,
  `slide_10` varchar(200) DEFAULT NULL,
  `slide_11` varchar(200) DEFAULT NULL,
  `slide_12` varchar(200) DEFAULT NULL,
  `slide_13` varchar(200) DEFAULT NULL,
  `slide_14` varchar(200) DEFAULT NULL,
  `slide_15` varchar(200) DEFAULT NULL,
  `legenda_1` varchar(200) DEFAULT NULL,
  `legenda_2` varchar(200) DEFAULT NULL,
  `legenda_3` varchar(200) DEFAULT NULL,
  `legenda_4` varchar(200) DEFAULT NULL,
  `legenda_5` varchar(200) DEFAULT NULL,
  `legenda_6` varchar(200) DEFAULT NULL,
  `legenda_7` varchar(200) DEFAULT NULL,
  `legenda_8` varchar(200) DEFAULT NULL,
  `legenda_9` varchar(200) DEFAULT NULL,
  `legenda_10` varchar(200) DEFAULT NULL,
  `legenda_11` varchar(200) DEFAULT NULL,
  `legenda_12` varchar(200) DEFAULT NULL,
  `legenda_13` varchar(200) DEFAULT NULL,
  `legenda_14` varchar(200) DEFAULT NULL,
  `legenda_15` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_tamanho`, `slide_descricao`, `slide_1`, `slide_2`, `slide_3`, `slide_4`, `slide_5`, `slide_6`, `slide_7`, `slide_8`, `slide_9`, `slide_10`, `slide_11`, `slide_12`, `slide_13`, `slide_14`, `slide_15`, `legenda_1`, `legenda_2`, `legenda_3`, `legenda_4`, `legenda_5`, `legenda_6`, `legenda_7`, `legenda_8`, `legenda_9`, `legenda_10`, `legenda_11`, `legenda_12`, `legenda_13`, `legenda_14`, `legenda_15`) VALUES
(6, '4', 'Slide Inicio ', 'images_capas/Desenho de peças arqueológicas.jpg', 'images_capas/Escavação arqueológica.JPG', 'images_capas/Sondagem arqueológica.JPG', 'images_capas/WhatsApp Image 2022-01-07 at 12.09.37 (1).jpeg', 'images_capas/5-20191113_14294408.jpg', 'images_capas/6-215235_364469126986367_1523760652_n.jpg', 'images_capas/7-DSC08837.JPG', 'images_capas/8-DSC07535.JPG', 'images_capas/9-393533_10150473743219078_486353333_n.jpg', 'images_capas/10-DSC01013.JPG', 'images_capas/11-1a equipe.JPG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '4', ' Arqueologia Arqueologia Historica ', 'images_capas/Fragmento arqueológico.jpeg', 'images_capas/Lab.jpg', 'images_capas/Moeda.jpg', 'images_capas/Ruina.jpg', 'images_capas/5-DSC00564.JPG', 'images_capas/6-DSC00652.JPG', 'images_capas/7-DSC00811.JPG', 'images_capas/8-DSC00713.JPG', '', '', '', '', '', '', '', 'PHA+TGVnZW5kYSBUZXN0ZSAxPC9wPg0K', 'PHA+TGVnZW5kYSBUZXN0ZSAyPC9wPg0K', '', '', '', '', 'PHA+TGVnZW5kYSBUZXN0ZSA3PC9wPg0K', '', '', '', '', '', '', '', ''),
(22, '3', 'Slide Infraestrutura', 'images_capas/Artefatos históricos.jpeg', 'images_capas/LAB.jpg', 'images_capas/LAH.jpg', 'images_capas/sernambetiba.jpg', 'images_capas/17-pães-e-pizzas.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '10', 'Slide Pesquisas', 'images_capas/Análise do acervo do Cais do Valongo  Cais da Imperatriz.jpg', 'images_capas/Arqueologia Histórica no Rio de Janeiro.jpeg', 'images_capas/Espaço, gênero e controle social.JPEG', 'images_capas/Fluxo de mercadorias e práticas de consumo na Fazenda São Sebastião.jpg', 'images_capas/Foto_Vidros do Rio de Janeiro.jpg', 'images_capas/Ilha do Governador.JPG', 'images_capas/Projeto de monitoramento, prospecção e resgate arqueológico das obras de restauração do Palácio de São Cristóváo.JPG', 'images_capas/UMMAPE~1.JPG', 'images_capas/Uma arqueologia da paisagem da cidade de Teresina.jpg', 'images_capas/Vidros Reciclados.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '3', 'Slide Noticias', 'images_capas/slideAF (1).JPG', 'images_capas/slideAF (2).jpg', 'images_capas/slideAF (3).jpg', 'images_capas/slideAF (4).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subpaginas`
--

CREATE TABLE `subpaginas` (
  `subpagina_id` int(32) NOT NULL,
  `subpagina_titulo` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `subpagina_conteudo` mediumtext NOT NULL,
  `subpagina_conteudo_2` text NOT NULL,
  `subpagina_categoria` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `subpagina_descricao` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `subpagina_palavras_chaves` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `subpagina_imagem_capa` varchar(255) DEFAULT NULL,
  `subpagina_slide` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `subpaginas`
--

INSERT INTO `subpaginas` (`subpagina_id`, `subpagina_titulo`, `subpagina_conteudo`, `subpagina_conteudo_2`, `subpagina_categoria`, `subpagina_descricao`, `subpagina_palavras_chaves`, `subpagina_imagem_capa`, `subpagina_slide`) VALUES
(1, 'Processo seletivo', 'PHA+UHJvY2Vzc28gc2VsZXRpdm88L3A+DQo=', '', '3', 'Processo seletivo', 'Processo seletivo', NULL, ''),
(3, 'Formulários', 'PHA+Rm9ybXVsJmFhY3V0ZTtyaW9zPC9wPg0K', '', '3', 'Formulários', 'Formulários', NULL, ''),
(4, 'Bolsas e auxílios', 'PHA+Qm9sc2FzIGUgYXV4JmlhY3V0ZTtsaW9zPC9wPg0K', '', '3', 'Bolsas e auxílios', 'Bolsas e auxílios', NULL, ''),
(5, 'Informações gerais', 'PHA+SW5mb3JtYSZjY2VkaWw7Jm90aWxkZTtlcyBnZXJhaXM8L3A+DQo=', '', '4', 'Informações gerais', 'Informações gerais', NULL, ''),
(6, 'Objetivos e público-alvo', 'PHA+T2JqZXRpdm9zIGUgcCZ1YWN1dGU7YmxpY28tYWx2bzwvcD4NCg==', '', '4', 'Objetivos e público-alvo', 'Objetivos e público-alvo', NULL, ''),
(7, 'Linhas de pesquisa', 'PHA+TGluaGFzIGRlIHBlc3F1aXNhPC9wPg0K', '', '4', 'Linhas de pesquisa', 'Linhas de pesquisa', NULL, ''),
(8, 'Quadro de disciplinas', 'PHA+UXVhZHJvIGRlIGRpc2NpcGxpbmFzPC9wPg0K', '', '4', 'Quadro de disciplinas', 'Quadro de disciplinas', NULL, ''),
(9, 'Regulamentos e formulários', 'PHA+UmVndWxhbWVudG9zIGUgZm9ybXVsJmFhY3V0ZTtyaW9zPC9wPg0K', '', '4', 'Regulamentos e formulários', 'Regulamentos e formulários', NULL, ''),
(10, 'Dissertações e teses defendidas', 'PHA+RGlzc2VydGEmY2NlZGlsOyZvdGlsZGU7ZXMgZSB0ZXNlcyBkZWZlbmRpZGFzPC9wPg0K', '', '4', 'Dissertações e teses defendidas', 'Dissertações e teses defendidas', NULL, ''),
(11, 'Administração', 'PHA+QWRtaW5pc3RyYSZjY2VkaWw7JmF0aWxkZTtvPC9wPg0K', '', '5', 'Administração', 'Administração', NULL, ''),
(12, 'Docentes', 'PHA+RG9jZW50ZXM8L3A+DQo=', '', '5', 'Docentes', 'Docentes', NULL, ''),
(13, 'Discentes', 'PHA+RGlzY2VudGVzPC9wPg0K', '', '5', 'Discentes', 'Discentes', NULL, ''),
(14, 'Professores visitantes e pós-doutorandos', 'PHA+UHJvZmVzc29yZXMgdmlzaXRhbnRlcyBlIHAmb2FjdXRlO3MtZG91dG9yYW5kb3M8L3A+DQo=', '', '5', 'Professores visitantes e pós-doutorandos', 'Professores visitantes e pós-doutorandos', NULL, ''),
(15, 'Egressos', 'PHA+RWdyZXNzb3M8L3A+DQo=', '', '5', 'Egressos', 'Egressos', NULL, ''),
(16, 'Laboratórios', 'PHA+TGFib3JhdCZvYWN1dGU7cmlvczwvcD4NCg==', '', '41', 'Laboratórios', 'Laboratórios', NULL, ''),
(17, 'Laboratórios', 'PHA+TGFib3JhdCZvYWN1dGU7cmlvczwvcD4NCg==', '', '6', 'Laboratórios', 'Laboratórios', NULL, ''),
(18, 'Núcleos e grupos de pesquisa', 'PHA+TiZ1YWN1dGU7Y2xlb3MgZSBncnVwb3MgZGUgcGVzcXVpc2E8L3A+DQo=', '', '6', 'Núcleos e grupos de pesquisa', 'Núcleos e grupos de pesquisa', NULL, ''),
(19, 'Extensão', 'PHA+RXh0ZW5zJmF0aWxkZTtvPC9wPg0K', '', '6', 'Extensão', 'Extensão', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(32) NOT NULL,
  `usuario_email` varchar(128) NOT NULL,
  `usuario_senha` varchar(128) NOT NULL,
  `usuario_nome` varchar(128) NOT NULL,
  `usuario_sobrenome` varchar(128) NOT NULL,
  `usuario_telefone` varchar(64) NOT NULL,
  `usuario_data_nascimento` date NOT NULL,
  `usuario_nivel` varchar(64) NOT NULL,
  `usuario_cargo` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario_email`, `usuario_senha`, `usuario_nome`, `usuario_sobrenome`, `usuario_telefone`, `usuario_data_nascimento`, `usuario_nivel`, `usuario_cargo`) VALUES
(2, 'niuanlucas@hotmail.com', 'nauim159', 'Niuan', 'Lucas', '21966195175', '2000-11-01', 'ADMIN', 'Programador');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`pagina_modular_id`);

--
-- Índices para tabela `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`pagina_id`);

--
-- Índices para tabela `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Índices para tabela `subpaginas`
--
ALTER TABLE `subpaginas`
  ADD PRIMARY KEY (`subpagina_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id_contato` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `pagina_modular_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT de tabela `paginas`
--
ALTER TABLE `paginas`
  MODIFY `pagina_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `subpaginas`
--
ALTER TABLE `subpaginas`
  MODIFY `subpagina_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
