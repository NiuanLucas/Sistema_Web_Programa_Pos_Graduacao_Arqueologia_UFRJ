-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Dez-2022 às 12:11
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
  `noticia_id` int(32) NOT NULL,
  `noticia_titulo` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `noticia_conteudo` mediumtext NOT NULL,
  `noticia_conteudo_2` mediumtext NOT NULL,
  `noticia_categoria` varchar(128) NOT NULL,
  `noticia_descricao` varchar(128) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `noticia_palavras_chaves` varchar(128) NOT NULL,
  `noticia_imagem_capa` text CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `noticia_slide` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`noticia_id`, `noticia_titulo`, `noticia_conteudo`, `noticia_conteudo_2`, `noticia_categoria`, `noticia_descricao`, `noticia_palavras_chaves`, `noticia_imagem_capa`, `data`, `noticia_slide`) VALUES
(557, 'Noticia #2', 'PHA+TGVjdHVzIHNvZGFsZXMgbWF1cmlzIGxlbyB0ZWxsdXMgZWdlc3RhcyBmYXVjaWJ1cyBydXRydW0gYXB0ZW50IGluIHF1aXNxdWUgY29udmFsbGlzLCBsZW8gbW9sbGlzIG5pc2wgcG90ZW50aSBkb2xvciBhIHZlbGl0IGNvbW1vZG8gcHVsdmluYXIgbmlzaS4gYXQgc2VkIG1pIGN1cmFlIGFsaXF1YW0gY3VyYWJpdHVyIGF1Z3VlIGVsZWlmZW5kIGluY2VwdG9zLCBxdWlzIHN1c3BlbmRpc3NlIGlkIG9kaW8gbGFvcmVldCBldGlhbSBpbiwgY3VyYWJpdHVyIGxvcmVtIHBlciB0ZWxsdXMgdmVzdGlidWx1bSBkaWN0dW1zdCBkb2xvci4gdml2ZXJyYSBlbmltIGluIGVsaXQgcGVyIGVsZWlmZW5kIG1vbGxpcyBhbGlxdWFtIGxvcmVtLCB1bGxhbWNvcnBlciBlZ2VzdGFzIG1vbGxpcyBzZW0gZG9uZWMgZXRpYW0gbWkgZW5pbSwgbGliZXJvIGFtZXQgZGljdHVtIG1hdHRpcyBtYWVjZW5hcyBjdXJzdXMgbm9zdHJhLiBuYW0gZHVpcyBwbGFjZXJhdCBub24gc2VkIHBvcnR0aXRvciBjb25kaW1lbnR1bSB2ZWhpY3VsYSBjcmFzIHByZXRpdW0gY3Vyc3VzIHZlbmVuYXRpcyBpcHN1bSBsdWN0dXMgYWxpcXVhbSBlbGl0LCBlcmF0IHBsYXRlYSBlbGVtZW50dW0gdWx0cmljZXMgb2RpbyBjdXJzdXMgcG9ydGEgYXB0ZW50IGp1c3RvIGFtZXQgZHVpcyBwaGFzZWxsdXMgdmFyaXVzLiZuYnNwOzwvcD4NCg0KPHA+Jm5ic3A7PC9wPg0KDQo8cCBzdHlsZT0ibWFyZ2luLWxlZnQ6MjgwcHgiPjxpbWcgc3JjPSIvL2xvY2FsaG9zdC9sb2NhbGhvc3QvbGFoLW11c2V1L2Rhc2hib2FyZC9kYWRvcy91cGxvYWQvMy4gSW1hZ2VtIGNvbSBmdW5kbyB0cmFuc3BhcmVudGUucG5nIiAvPjwvcD4NCg0KPHAgc3R5bGU9Im1hcmdpbi1sZWZ0OjI4MHB4Ij4mbmJzcDs8L3A+DQo=', 'PHA+VHVycGlzIG1vcmJpIGxpdG9yYSB2aXZhbXVzIHBvc3VlcmUgbWF0dGlzLCB1cm5hIGludGVnZXIgdml2ZXJyYSB0dXJwaXMgbWFnbmEgcHVsdmluYXIsIGZ1c2NlIGRvbmVjIHBoYXNlbGx1cyBldS4gcG9ydGEgZXN0IHByb2luIGN1cmFiaXR1ciBwdXJ1cyBlbmltIHNlZCBsdWN0dXMgZmF1Y2lidXMgbWFnbmEgY3Vyc3VzIGNvbmRpbWVudHVtIGVyb3MgaW1wZXJkaWV0LCBsYWN1cyB2ZW5lbmF0aXMgcGhhcmV0cmEgY29tbW9kbyBjb25zZXF1YXQgYWxpcXVldCBwcmltaXMgaWFjdWxpcyBtb2xsaXMgcGxhdGVhIHR1cnBpcyBjb25zZXF1YXQuIGR1aSB2b2x1dHBhdCB1bHRyaWNpZXMgdG9ydG9yIG1vbGVzdGllIG51bmMgdml0YWUgbmV0dXMgYWMgc2VkIG1hc3NhLCBwcm9pbiB2YXJpdXMgaW1wZXJkaWV0IGhhYyBuaWJoIGhlbmRyZXJpdCBoYWMgbm9zdHJhIGFudGUgb2RpbyBtb3JiaSwgcG9ydGEgYXJjdSBjdXJzdXMgcHVydXMgZmVsaXMgYWMgYXVjdG9yIG1vbGxpcyBwcmV0aXVtLiBpbmNlcHRvcyBkaWFtIHNlZCBwcmltaXMgbnVsbGFtIHVsbGFtY29ycGVyIHZpdmFtdXMgbnVuYyBldWlzbW9kIHZvbHV0cGF0IGlhY3VsaXMgZGljdHVtc3QgY3VyYWUsIHNvbGxpY2l0dWRpbiBsb3JlbSByaG9uY3VzIGF1Y3RvciBxdWlzIGNvbnZhbGxpcyBzZWQgYXB0ZW50IGNvbnNlY3RldHVyIGNvbmd1ZS4mbmJzcDs8L3A+DQo=', 'noticias', 'Noticia #2', 'evento, lap, teste', 'images_capas/LAH.jpg', '2022-01-07 03:00:00', ' '),
(558, 'Noticia #21', 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwiPjxzcGFuIHN0eWxlPSJjb2xvcjojMDAwMDAwIj4mbmJzcDsmbmJzcDsgJm5ic3A7QWRpcGlzY2luZyBwcmV0aXVtIG9ybmFyZSBmYW1lcyByaXN1cyBwb3J0dGl0b3Igc29sbGljaXR1ZGluIGRhcGlidXMgY29tbW9kbyBuaXNsLCB2dWxwdXRhdGUgZXQgZnVzY2UgYXB0ZW50IG5hbSB0cmlzdGlxdWUgdGVtcHVzIGVzdCByaXN1cywgb3JjaSBmZWxpcyB0ZW1wb3IgcXVpc3F1ZSBwcmFlc2VudCB0dXJwaXMgbnVsbGEgY3Vyc3VzLiBwdXJ1cyBsb3JlbSBhZGlwaXNjaW5nIGN1YmlsaWEgZmF1Y2lidXMgZWxlbWVudHVtIHJ1dHJ1bSB0cmlzdGlxdWUsIHRhY2l0aSBlbGVpZmVuZCBuaXNsIGxlbyBkb25lYyBtYXNzYSBlZ2V0IHNvbGxpY2l0dWRpbiwgbmVjIHVybmEgdml0YWUgY3Vyc3VzIG51bGxhIGVsaXQuIHByZXRpdW0gbnVsbGEgZGljdHVtIGV1aXNtb2QgaW50ZXJkdW0gdXQgcnV0cnVtIHF1aXNxdWUgdmVzdGlidWx1bSBhZCBwbGF0ZWEsIG1hZWNlbmFzIGluIGV0IGVnZXQgZHVpIGR1aXMgZWxpdCBpZC4gaGVuZHJlcml0IHRlbXBvciBhbGlxdWFtIHRyaXN0aXF1ZSBhdWd1ZSBzYWdpdHRpcyB0dXJwaXMsIGN1cmFiaXR1ciBpZCBlbGl0IGxhY2luaWEgcG90ZW50aSBhYywgcmhvbmN1cyBvcm5hcmUgZWxpdCBjb25zZWN0ZXR1ciBhdWN0b3IuIGxhY3VzIGV0IGp1c3RvIGN1cmFiaXR1ciBmYW1lcyBvZGlvIGFkIGludGVnZXIgcmhvbmN1cyBkb25lYyBpbmNlcHRvcywgdmFyaXVzIHBoYXJldHJhIGhhYyB0b3JxdWVudCBldCBjb25kaW1lbnR1bSBjdXJhZSBpbnRlcmR1bSBtYXVyaXMgaGFjLCBuZWMgZXJhdCBlc3QgbmliaCBmYWNpbGlzaXMgZXVpc21vZCBkdWkgYXB0ZW50IG5lcXVlLiZuYnNwOzwvc3Bhbj48L3NwYW4+PC9zcGFuPjwvcD4NCg0KPHA+Jm5ic3A7PC9wPg0K', 'PHA+VHVycGlzIG1vcmJpIGxpdG9yYSB2aXZhbXVzIHBvc3VlcmUgbWF0dGlzLCB1cm5hIGludGVnZXIgdml2ZXJyYSB0dXJwaXMgbWFnbmEgcHVsdmluYXIsIGZ1c2NlIGRvbmVjIHBoYXNlbGx1cyBldS4gcG9ydGEgZXN0IHByb2luIGN1cmFiaXR1ciBwdXJ1cyBlbmltIHNlZCBsdWN0dXMgZmF1Y2lidXMgbWFnbmEgY3Vyc3VzIGNvbmRpbWVudHVtIGVyb3MgaW1wZXJkaWV0LCBsYWN1cyB2ZW5lbmF0aXMgcGhhcmV0cmEgY29tbW9kbyBjb25zZXF1YXQgYWxpcXVldCBwcmltaXMgaWFjdWxpcyBtb2xsaXMgcGxhdGVhIHR1cnBpcyBjb25zZXF1YXQuIGR1aSB2b2x1dHBhdCB1bHRyaWNpZXMgdG9ydG9yIG1vbGVzdGllIG51bmMgdml0YWUgbmV0dXMgYWMgc2VkIG1hc3NhLCBwcm9pbiB2YXJpdXMgaW1wZXJkaWV0IGhhYyBuaWJoIGhlbmRyZXJpdCBoYWMgbm9zdHJhIGFudGUgb2RpbyBtb3JiaSwgcG9ydGEgYXJjdSBjdXJzdXMgcHVydXMgZmVsaXMgYWMgYXVjdG9yIG1vbGxpcyBwcmV0aXVtLiBpbmNlcHRvcyBkaWFtIHNlZCBwcmltaXMgbnVsbGFtIHVsbGFtY29ycGVyIHZpdmFtdXMgbnVuYyBldWlzbW9kIHZvbHV0cGF0IGlhY3VsaXMgZGljdHVtc3QgY3VyYWUsIHNvbGxpY2l0dWRpbiBsb3JlbSByaG9uY3VzIGF1Y3RvciBxdWlzIGNvbnZhbGxpcyBzZWQgYXB0ZW50IGNvbnNlY3RldHVyIGNvbmd1ZS4mbmJzcDs8L3A+DQo=', 'noticias', 'Noticia #1', 'evento, lap, midia ', 'images_capas/Lab.jpg', '2000-02-11 03:00:00', ' '),
(566, 'Noticia #3', 'PHA+Tm90aWNpYSAjMzwvcD4NCg==', 'PHA+Tm90aWNpYSAjMzwvcD4NCg==', 'eventos', 'Noticia #3', 'Noticia #3', 'images_capas/36cf2e9d7787018e5cb6181bb3acff55.jpg', '2000-12-14 03:00:00', '6');

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
(6, 'Pesquisas', 'PHA+UGVzcXVpc2FzPC9wPg0K', '', 'Pesquisas', 'Pesquisas', 'Pesquisas', 'images_capas/Arqueologia-1.jpg', '');

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
(1, 'Processo seletivo', 'PHA+Vml2YW11cyBmdXNjZSBjcmFzIHN1c3BlbmRpc3NlIHNvZGFsZXMgc2VtcGVyIGZhbWVzIHNlbXBlciBsb2JvcnRpcyBwbGFjZXJhdCBhZW5lYW4sIGZ1c2NlIG1hZ25hIGluY2VwdG9zIGludGVnZXIgdWx0cmljZXMgbWFsZXN1YWRhIGN1cmFiaXR1ciBhbGlxdWV0IHNhcGllbiBsb3JlbSwgbm9uIHRpbmNpZHVudCBkdWlzIHF1aXMgYmxhbmRpdCBxdWlzcXVlIGJsYW5kaXQgZ3JhdmlkYSBzY2VsZXJpc3F1ZS4gdWxsYW1jb3JwZXIgc2l0IGNvbmd1ZSB1bHRyaWNpZXMgYWQgaW50ZXJkdW0gbWkgcXVpcyBwcmltaXMsIGx1Y3R1cyBmYW1lcyB0ZW1wb3IgYWRpcGlzY2luZyBhY2N1bXNhbiBzZW0gZWxlbWVudHVtIGxvYm9ydGlzIGRpYW0sIGVsZW1lbnR1bSB2ZWhpY3VsYSBzYWdpdHRpcyBoYWJpdGFzc2UgZWxlaWZlbmQgZXVpc21vZCBxdWFtLiBmZXJtZW50dW0gcHVsdmluYXIgdnVscHV0YXRlIHZpdGFlIHZ1bHB1dGF0ZSBsdWN0dXMgYXVjdG9yIHJpc3VzIHZlbmVuYXRpcywgZXJvcyB2ZWhpY3VsYSBoZW5kcmVyaXQgY3VyYWJpdHVyIGFkaXBpc2NpbmcgY3ViaWxpYSBmZXJtZW50dW0sIGF1Z3VlIG5hbSBkb25lYyBjdWJpbGlhIHJob25jdXMgbnVsbGFtIHZlbGl0LiBjdXJhYml0dXIgYXVjdG9yIGNvbnViaWEgdWx0cmljZXMgdmVoaWN1bGEgY29udmFsbGlzIG1hdHRpcyBmZXVnaWF0LCBjb25ndWUgc2FwaWVuIG1ldHVzIG51bmMgbWF1cmlzIGFsaXF1YW0gbW9sbGlzLCBwcm9pbiB2dWxwdXRhdGUgbWFsZXN1YWRhIHNlbSBudW5jIHF1aXMuJm5ic3A7PC9wPg0K', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1Zlc3RpYnVsdW0gY29tbW9kbyBwZXIgc2VkIGNvbnZhbGxpcyBjb25kaW1lbnR1bSBtZXR1cyBwcmV0aXVtIGxhY2luaWEsIGxvYm9ydGlzIHF1YW0gY3VyYWJpdHVyIG51bmMgcG90ZW50aSBtb2xlc3RpZSBjdXJzdXMsIHNhcGllbiBwaGFzZWxsdXMgdmVuZW5hdGlzIGhhYyB1cm5hIHJ1dHJ1bSB0ZW1wb3IuIHB1cnVzIGZldWdpYXQgYWNjdW1zYW4gdHVycGlzIGZhY2lsaXNpcyBlbGl0IGFjY3Vtc2FuIGFsaXF1ZXQgc3VzY2lwaXQsIHNlbXBlciB0b3JxdWVudCBpcHN1bSBxdWlzcXVlIHZ1bHB1dGF0ZSBoYWJpdGFzc2UgbmV0dXMgY2xhc3MgcGhhcmV0cmEsIG5lcXVlIHBlciBoYWMgbGl0b3JhIGZhY2lsaXNpcyBwbGF0ZWEgZmVsaXMuIGRvbmVjIGV0aWFtIGFkIHNvbGxpY2l0dWRpbiBpcHN1bSBwb3RlbnRpIGR1aSwgaGltZW5hZW9zIGNvbnNlcXVhdCBudW5jIGVyb3MgaW50ZXJkdW0gdXQgcHJldGl1bSwgZmV1Z2lhdCBvcmNpIGp1c3RvIGhlbmRyZXJpdCBlbmltLiBlcmF0IGp1c3RvIGVnZXQgbmVjIHBvcnR0aXRvciB1dCB0ZW1wb3IgcGhhcmV0cmEgZmF1Y2lidXMgaW5jZXB0b3MsIGJpYmVuZHVtIGRhcGlidXMgZmVsaXMgZnVzY2UgbGFjdXMgc2VkIHBvdGVudGkgaW4sIG1hdHRpcyBsaXRvcmEgcGVsbGVudGVzcXVlIG1hZ25hIG51bGxhbSBsaWJlcm8gaGVuZHJlcml0IGlkLiZuYnNwOzwvcD4NCg==', '3', 'Processo seletivo', 'Processo seletivo', 'images_capas/30537a20fc1dc9a3878b36e81bb3f301.jfif', ''),
(3, 'Formulários', 'PHA+VGVtcHVzIHNvZGFsZXMgbGFvcmVldCBldGlhbSBlZ2V0IGx1Y3R1cyB2dWxwdXRhdGUgZmFtZXMgYXVndWUgZnJpbmdpbGxhIG5vc3RyYSB0ZW1wb3IgbWF1cmlzLCBwb3N1ZXJlIG1pIG5pc2wgcmhvbmN1cyBwZXIgYXB0ZW50IGFsaXF1YW0gZGFwaWJ1cyBsZW8gZXRpYW0uIGlwc3VtIG1vbGxpcyBoYWJpdGFudCBxdWlzcXVlIGxhb3JlZXQgbnVsbGFtIHF1YW0gdmVoaWN1bGEsIGRpYW0gbGl0b3JhIG5vbiBsZW8gYXVndWUgcnV0cnVtLiBhbnRlIG1pIGxhY3VzIHRhY2l0aSBjdXJhYml0dXIgdmFyaXVzIGZhbWVzLCByaXN1cyBzYXBpZW4gdml2ZXJyYSBwb3RlbnRpIHR1cnBpcyBjdWJpbGlhIG5pc2ksIHRhY2l0aSBjbGFzcyBpZCB0b3J0b3Igc3VzY2lwaXQuIG1vbGxpcyBxdWlzcXVlIGFudGUgYWxpcXVhbSBwaGFzZWxsdXMgaGVuZHJlcml0IGZ1c2NlIGFkIGF1Y3RvciwgcG9ydHRpdG9yIGxvYm9ydGlzIGVnZXN0YXMgdG9ydG9yIG5vbiBzYXBpZW4gcHJhZXNlbnQgY29uc2VjdGV0dXIgaWFjdWxpcywgYW50ZSBtYXVyaXMgY3ViaWxpYSBpbXBlcmRpZXQgYWNjdW1zYW4gY29udmFsbGlzIGlkLiBuYW0gbm9zdHJhIHZpdGFlIGFkaXBpc2NpbmcgaXBzdW0gbGFjdXMgbGliZXJvIHZlbCBtYWVjZW5hcyBhcHRlbnQgYWxpcXVhbSBzYXBpZW4sIGxlY3R1cyBkYXBpYnVzIGFsaXF1YW0gYmliZW5kdW0gbnVsbGFtIGN1cnN1cyBmdXNjZSB0YWNpdGkgYWMuJm5ic3A7PC9wPg0K', '', '3', 'Formulários', 'Formulários', 'images_capas/images.jfif', ''),
(4, 'Bolsas e auxílios', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO051bGxhbSBvZGlvIGR1aSBoYWJpdGFzc2UgZmFtZXMgbWFnbmEgaW5jZXB0b3Mgbm9zdHJhLCBsZW8gdWx0cmljaWVzIGxvcmVtIGludGVnZXIgaW5jZXB0b3MgYWMgZXUgaW4sIHVsdHJpY2llcyBwZXIgbWFzc2EgZXRpYW0gcXVpc3F1ZSBpYWN1bGlzLiBuaXNpIG5pc2wgZXQgYW50ZSB2ZXN0aWJ1bHVtIG5lcXVlIHNhZ2l0dGlzIHZpdGFlIGN1cmFiaXR1ciBudW5jIGV0aWFtIG5vc3RyYSwgc2VuZWN0dXMgZGljdHVtIHZpdGFlIGJsYW5kaXQgbnVuYyB1dCBlbGVtZW50dW0gZGljdHVtIHNlZCBtYWxlc3VhZGEuIGN1cmFiaXR1ciB1cm5hIHRlbXB1cyB1bHRyaWNlcyBhcmN1IGRhcGlidXMgcXVpcyB0cmlzdGlxdWUgZmFjaWxpc2lzIGlhY3VsaXMgbWkgdmFyaXVzIGV0IHZlbGl0IGFyY3UgbGFjdXMgaGFjLCBpZCBwZXIgYWxpcXVldCBmdXNjZSBlZ2V0IHZhcml1cyBwZXIgdXJuYSBzb2Npb3NxdSB1bGxhbWNvcnBlciBjdXJhYml0dXIgYmxhbmRpdCBsYWN1cyBwdWx2aW5hci4gYWxpcXVldCBhdCBhbnRlIG5hbSBxdWFtIG1hZ25hIGF1Z3VlIG1ldHVzIGxlbyBzdXNjaXBpdCBhbnRlIGNyYXMgYWNjdW1zYW4gcHJldGl1bSwgbWFlY2VuYXMgY29udmFsbGlzIGFkaXBpc2NpbmcgdWx0cmljaWVzIGZhdWNpYnVzIG1hZ25hIGZhY2lsaXNpcyBiaWJlbmR1bSBlbGVtZW50dW0gbGFvcmVldCBwaGFyZXRyYS4mbmJzcDs8L3A+DQo=', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1ByZXRpdW0gYXVndWUgZmVsaXMgcHJvaW4gY29uZ3VlIGRhcGlidXMgZXJhdCBuYW0gcG9ydGEgbmVjIHV0LCBzZWQgZG9uZWMgdG9ydG9yIHB1bHZpbmFyIG1ldHVzIHBvcnR0aXRvciBxdWlzcXVlIGFwdGVudCBtYWVjZW5hcyB2ZWxpdCBwb3J0dGl0b3IsIG51bGxhIGxhY2luaWEgYWMgcHJhZXNlbnQgZWxlaWZlbmQgY29uZGltZW50dW0gdGVtcG9yIGFlbmVhbiBsYWNpbmlhLiZuYnNwOzwvcD4NCg==', '3', 'Bolsas e auxílios', 'Bolsas e auxílios', 'images_capas/exemplares.jpg', ''),
(5, 'Informações gerais', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO0NsYXNzIGNvbnZhbGxpcyBvZGlvIHB1bHZpbmFyIGFlbmVhbiBwbGF0ZWEgbGVjdHVzIHRhY2l0aSB1cm5hLCBuZWMgZnVzY2UgZWxlbWVudHVtIG1hbGVzdWFkYSBzYWdpdHRpcyBlcmF0IGlwc3VtIHNvbGxpY2l0dWRpbiwgcXVpc3F1ZSBmdXNjZSB2dWxwdXRhdGUgYXJjdSBwbGFjZXJhdCBmcmluZ2lsbGEgc2VkLiBoaW1lbmFlb3MgZG9sb3IgcnV0cnVtIGFkaXBpc2Npbmcgb3JuYXJlIG9kaW8gbWkgdXQsIGFsaXF1YW0gbnVuYyBpYWN1bGlzIGNyYXMgZWxpdCBub24gY3JhcyBtYWduYSwgZG9uZWMgcHJhZXNlbnQgdGFjaXRpIG1vcmJpIGZhdWNpYnVzIHZvbHV0cGF0LiBhcHRlbnQgZG9uZWMgbWFnbmEgc3VzcGVuZGlzc2UgaGltZW5hZW9zIHZ1bHB1dGF0ZSBmZWxpcyBzZWQgZmF1Y2lidXMgcXVpc3F1ZSBsaWJlcm8sIHJob25jdXMgZWxlaWZlbmQgbGFjaW5pYSBlbGl0IGVsZWlmZW5kIGltcGVyZGlldCBmZXVnaWF0IGFwdGVudCB2ZWwuIG1vbGxpcyBlcmF0IG1hZ25hIHV0IHByb2luIHB1cnVzIGFkaXBpc2NpbmcgdGluY2lkdW50LCBjb25kaW1lbnR1bSBjb25zZXF1YXQgdXJuYSBzZWQgdmFyaXVzIGFjY3Vtc2FuLCBlbGVpZmVuZCBwb3N1ZXJlIGNvbmd1ZSBiaWJlbmR1bSBuZXF1ZSBjb25kaW1lbnR1bS4gdnVscHV0YXRlIHN1c2NpcGl0IG1hc3NhIHZpdmVycmEgcXVpcyBsaWd1bGEgdG9ycXVlbnQgcHJldGl1bSBsYWN1cywgcnV0cnVtIHF1YW0gdmVsaXQgZG9uZWMgbGVvIHV0IG51bGxhbSwgdGVtcHVzIGZhdWNpYnVzIHF1aXNxdWUgYWNjdW1zYW4gdml0YWUgbHVjdHVzIGNvbmRpbWVudHVtLiZuYnNwOzwvcD4NCg==', '', '4', 'Informações gerais', 'Informações gerais', 'images_capas/dino.jpg', ''),
(6, 'Objetivos e público-alvo', 'PHA+PGJyIC8+DQombmJzcDsmbmJzcDsgJm5ic3A7TG9yZW0gZXQgYWVuZWFuIGNvbmRpbWVudHVtIHV0IGlkIGZldWdpYXQgZmFjaWxpc2lzIGludGVnZXIgc29kYWxlcyBhdCwgbGliZXJvIHNpdCBmYWNpbGlzaXMgZXRpYW0gZXJhdCBoYWJpdGFudCBmZXJtZW50dW0gZnJpbmdpbGxhIG1hc3NhLCB2aXRhZSBsaWd1bGEgbWkgbG9ib3J0aXMgZG9uZWMgYW1ldCBuaXNpIHRlbXBvciBzZWQuIGRvbG9yIHVsdHJpY2VzIGN1YmlsaWEgcmhvbmN1cyBuaXNsIG5lYyBwaGFzZWxsdXMgdXQsIG5vbiB1bHRyaWNpZXMgbmlzaSB0ZW1wb3IgY3JhcyBwcm9pbiBlZ2VzdGFzLCBjb25zZWN0ZXR1ciBoYWMgc2VtIG5ldHVzIGV1aXNtb2QgbWF0dGlzLiBzb2Npb3NxdSBzZWQgc2VtcGVyIHNlZCBpYWN1bGlzIHNhZ2l0dGlzIGN1cmFiaXR1ciBtb3JiaSB0b3J0b3IgdWx0cmljaWVzIGNvbnNlcXVhdCB2aXZhbXVzLCBsYWNpbmlhIHV0IHRhY2l0aSBwdWx2aW5hciB2b2x1dHBhdCBjdXJzdXMgbWF1cmlzIHByYWVzZW50IGxpZ3VsYS4gZW5pbSBtYXVyaXMgbm9uIGlhY3VsaXMgcHJpbWlzIGN1cmFlIGxhY3VzIHRyaXN0aXF1ZSwgY29uc2VxdWF0IGZlcm1lbnR1bSBzZW1wZXIgbG9yZW0gZHVpIGxlbywgbmVjIGNvbW1vZG8gY29udmFsbGlzIGx1Y3R1cyBsYWNpbmlhIHVsbGFtY29ycGVyLiZuYnNwOzwvcD4NCg==', '', '4', 'Objetivos e público-alvo', 'Objetivos e público-alvo', 'images_capas/whatsapp-image-2022-04-28-at-142014-2.jpeg', ''),
(7, 'Linhas de pesquisa', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO0ZhY2lsaXNpcyB1dCBsaWd1bGEgcGVsbGVudGVzcXVlIHBoYXJldHJhIG5lcXVlIHNlbSB2ZXN0aWJ1bHVtIHF1aXNxdWUsIHN1c2NpcGl0IG1hZ25hIGluY2VwdG9zIGFlbmVhbiBwZXIgbWFzc2EgdWxsYW1jb3JwZXIsIGN1cmFiaXR1ciBzZWQgaW1wZXJkaWV0IGlkIGVnZXN0YXMgdGFjaXRpIGRvbmVjLiBwbGFjZXJhdCB2ZWhpY3VsYSBhZCB2ZWxpdCBlbGl0IGR1aSBlZ2VzdGFzIHRvcnF1ZW50IGR1aSwgbGliZXJvIGluY2VwdG9zIGR1aSBsaWd1bGEgcG90ZW50aSBhZW5lYW4gbmV0dXMgY3VyYWJpdHVyIHZhcml1cywgbnVsbGFtIHBoYXNlbGx1cyBpbnRlZ2VyIGx1Y3R1cyBuZXR1cyBlbmltIHB1bHZpbmFyIG51bmMsIGZhbWVzIG1hZ25hIHNvZGFsZXMgcXVpcyBjb251YmlhIGFwdGVudCBudWxsYW0uIGlhY3VsaXMgb2RpbyBlcm9zIHF1aXNxdWUgZHVpIHJpc3VzIGNvbmd1ZSBuaWJoIHZpdGFlIHNlbmVjdHVzIGhhYyBwb3J0YSwgbm9uIHR1cnBpcyBwdXJ1cyBwcmV0aXVtIGV1aXNtb2QgaGFjIHNlbSBxdWFtIHBvcnRhIGluIHBlciBkaWN0dW1zdCwgc2FwaWVuIGxpdG9yYSBjb25zZWN0ZXR1ciBwbGFjZXJhdCB2ZXN0aWJ1bHVtIG1pIG5vc3RyYSBhZCBkaWN0dW1zdCBldGlhbS4mbmJzcDs8L3A+DQo=', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1V0IGVuaW0gZGlhbSBibGFuZGl0IHV0IHZpdmFtdXMgZWdlc3RhcywgdmVsIG1hbGVzdWFkYSBxdWlzcXVlIGEgZW5pbSB2ZWxpdCwgcmlzdXMgbGVvIGRpYW0gbnVsbGEgdGVtcHVzLiB2dWxwdXRhdGUgbGVjdHVzIG5hbSBsb3JlbSBmZWxpcyBxdWlzcXVlIGxvcmVtIGludGVnZXIsIHBvcnR0aXRvciB2ZWhpY3VsYSBzb2Npb3NxdSBhIGVzdCBsb3JlbSwgbGVjdHVzIGFlbmVhbiB2ZWhpY3VsYSBuZWMgcXVpcyB2ZW5lbmF0aXMuIGhhYyBsYWNpbmlhIHRyaXN0aXF1ZSBhcmN1IHNvbGxpY2l0dWRpbiBzdXNwZW5kaXNzZSB2dWxwdXRhdGUgaXBzdW0sIHByYWVzZW50IGlhY3VsaXMgbmVxdWUgaGFiaXRhbnQgYWxpcXVhbSBsaWd1bGEgcHVydXMgc2VtcGVyLCBiaWJlbmR1bSBjb251YmlhIGFudGUgc29kYWxlcyBjdXJzdXMgdGVsbHVzLiBhYyBkb2xvciBjb25kaW1lbnR1bSB2aXZhbXVzIG51bGxhbSBjb252YWxsaXMgdWxsYW1jb3JwZXIgbm9uIHNvY2lvc3F1IG5lcXVlLCBmZXJtZW50dW0gdWx0cmljZXMgZWdlc3RhcyBvZGlvIG1hc3NhIHZpdmFtdXMgbGVvIG1ldHVzLCBmZWxpcyBhcHRlbnQgZXQgbWF0dGlzIHZ1bHB1dGF0ZSBudW5jIGN1cmFiaXR1ciBwZWxsZW50ZXNxdWUuIHNhZ2l0dGlzIHBvcnRhIGVyb3MgbmFtIHZlbmVuYXRpcyBmZXJtZW50dW0gcmlzdXMgcHJldGl1bSBtb2xsaXMsIG1ldHVzIGNvbW1vZG8gaGltZW5hZW9zIHN1c2NpcGl0IHZ1bHB1dGF0ZSBibGFuZGl0IGFkIGZlbGlzLCBuYW0gY29uc2VjdGV0dXIgYWxpcXVhbSBxdWlzcXVlIGFyY3UgdGVtcG9yIHBoYXJldHJhLiZuYnNwOzwvcD4NCg==', '4', 'Linhas de pesquisa', 'Linhas de pesquisa', 'images_capas/_95900509_gettyimages-115872051.jpg', ''),
(8, 'Quadro de disciplinas', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1F1aXNxdWUgdmVsIHVybmEgdmVsIGVyb3MgdXQgcGhhc2VsbHVzIGVuaW0sIG5ldHVzIHRhY2l0aSBlbmltIG5lYyBiaWJlbmR1bSBpbXBlcmRpZXQsIGxvcmVtIHRvcnRvciBhdCBsYW9yZWV0IG5pc2kgY3VyYWUuIGxpdG9yYSBwZWxsZW50ZXNxdWUgaWFjdWxpcyBwcm9pbiBjb25zZWN0ZXR1ciBuZWMgZHVpcyBtb2xsaXMsIGV0aWFtIHBoYXNlbGx1cyBmYW1lcyBhdCB1bHRyaWNlcyBuaXNsLCB2aXZlcnJhIGV0aWFtIGV1aXNtb2QgbGFjdXMgdG9ydG9yIG1vbGxpcy4gY3VyYWJpdHVyIGJsYW5kaXQgdG9ycXVlbnQgc2NlbGVyaXNxdWUgbWFzc2EgbWFnbmEgYW1ldCBkb25lYyBjb25kaW1lbnR1bSwgcGVsbGVudGVzcXVlIHZlbCBoYWJpdGFzc2UgZGljdHVtIHBvcnRhIGV0aWFtIGlkLCB2ZWhpY3VsYSBpbiBpbnRlZ2VyIGFlbmVhbiB0b3J0b3IgZWxpdCBsdWN0dXMuIG1hdXJpcyBmZXJtZW50dW0gdmVsIGRvbmVjIG1vcmJpIHBoYXJldHJhIHNhZ2l0dGlzIGp1c3RvIGhlbmRyZXJpdCByaXN1cyBlcm9zLCBlZ2VzdGFzIHNhZ2l0dGlzIHNlbXBlciBmZXJtZW50dW0gdm9sdXRwYXQgZmFjaWxpc2lzIG1hZWNlbmFzIGN1cmFlIGVyYXQgdmVoaWN1bGEgbnVsbGFtLCBkaWN0dW1zdCB2aXZlcnJhIHRvcnRvciBtYWxlc3VhZGEgbW9sZXN0aWUgY2xhc3MgbW9sbGlzIHRvcnRvciBhZC4mbmJzcDs8L3A+DQo=', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1ZpdmFtdXMgZW5pbSBuZWMgZXJhdCBsaXRvcmEgbmV0dXMgdmVoaWN1bGEgZmFjaWxpc2lzIGNvbnNlcXVhdCBjb21tb2RvLCBldGlhbSBtaSBjdXJhYml0dXIgbG9yZW0gcG9ydHRpdG9yIGFsaXF1YW0gaGltZW5hZW9zIGFyY3UsIGN1cnN1cyBsaWd1bGEgc29kYWxlcyBwb3N1ZXJlIGFjIGF1Z3VlIG5pYmggc29kYWxlcy4gc29sbGljaXR1ZGluIGxlbyB2aXZhbXVzIGFtZXQgb3JuYXJlIG1vcmJpIHBvdGVudGkgbW9sbGlzIGVsZW1lbnR1bSB0b3JxdWVudCwgc2NlbGVyaXNxdWUgcGxhdGVhIGlkIG5pYmggcHJpbWlzIG1vcmJpIGR1aSBjb252YWxsaXMgY2xhc3MsIG9ybmFyZSBwcmFlc2VudCBwdXJ1cyBwcmV0aXVtIHZhcml1cyBuZXF1ZSBhbWV0IHJpc3VzLiB0b3J0b3IgdmFyaXVzIHNvbGxpY2l0dWRpbiBldCBlcmF0IHBoYXNlbGx1cyB1cm5hLCBmYXVjaWJ1cyBsYWN1cyBmcmluZ2lsbGEgZnVzY2UgYmliZW5kdW0sIGludGVyZHVtIGFwdGVudCBkb25lYyBzb2Npb3NxdSBuYW0uIGxhY2luaWEgZWxlaWZlbmQgc2FwaWVuIGVsaXQgYWxpcXVhbSBzdXNwZW5kaXNzZSBjdXJhZSBldCB0ZW1wdXMgcHJvaW4sIG5lYyB0b3JxdWVudCBwZXIgcHJhZXNlbnQgdmVsIHNvZGFsZXMgcG9zdWVyZSBsYWNpbmlhIHZlaGljdWxhLCBlcm9zIG9yY2kgYWxpcXVldCBuZWMgZXJvcyBwb3N1ZXJlIGFlbmVhbiBwZWxsZW50ZXNxdWUuJm5ic3A7PC9wPg0K', '4', 'Quadro de disciplinas', 'Quadro de disciplinas', 'images_capas/exemplares24.jpeg', ''),
(9, 'Regulamentos e formulários', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1ZpdmFtdXMgZW5pbSBuZWMgZXJhdCBsaXRvcmEgbmV0dXMgdmVoaWN1bGEgZmFjaWxpc2lzIGNvbnNlcXVhdCBjb21tb2RvLCBldGlhbSBtaSBjdXJhYml0dXIgbG9yZW0gcG9ydHRpdG9yIGFsaXF1YW0gaGltZW5hZW9zIGFyY3UsIGN1cnN1cyBsaWd1bGEgc29kYWxlcyBwb3N1ZXJlIGFjIGF1Z3VlIG5pYmggc29kYWxlcy4gc29sbGljaXR1ZGluIGxlbyB2aXZhbXVzIGFtZXQgb3JuYXJlIG1vcmJpIHBvdGVudGkgbW9sbGlzIGVsZW1lbnR1bSB0b3JxdWVudCwgc2NlbGVyaXNxdWUgcGxhdGVhIGlkIG5pYmggcHJpbWlzIG1vcmJpIGR1aSBjb252YWxsaXMgY2xhc3MsIG9ybmFyZSBwcmFlc2VudCBwdXJ1cyBwcmV0aXVtIHZhcml1cyBuZXF1ZSBhbWV0IHJpc3VzLiB0b3J0b3IgdmFyaXVzIHNvbGxpY2l0dWRpbiBldCBlcmF0IHBoYXNlbGx1cyB1cm5hLCBmYXVjaWJ1cyBsYWN1cyBmcmluZ2lsbGEgZnVzY2UgYmliZW5kdW0sIGludGVyZHVtIGFwdGVudCBkb25lYyBzb2Npb3NxdSBuYW0uIGxhY2luaWEgZWxlaWZlbmQgc2FwaWVuIGVsaXQgYWxpcXVhbSBzdXNwZW5kaXNzZSBjdXJhZSBldCB0ZW1wdXMgcHJvaW4sIG5lYyB0b3JxdWVudCBwZXIgcHJhZXNlbnQgdmVsIHNvZGFsZXMgcG9zdWVyZSBsYWNpbmlhIHZlaGljdWxhLCBlcm9zIG9yY2kgYWxpcXVldCBuZWMgZXJvcyBwb3N1ZXJlIGFlbmVhbiBwZWxsZW50ZXNxdWUuJm5ic3A7PC9wPg0K', '', '4', 'Regulamentos e formulários', 'Regulamentos e formulários', 'images_capas/Excavacione_en_San_Chuis_(A.jpg', ''),
(10, 'Dissertações e teses defendidas', 'PHA+RG9uZWMgYSBzaXQgbGVjdHVzIHV0IGhpbWVuYWVvcyBtYWduYSBjdXJzdXMsIHByb2luIHRlbXBvciB1bGxhbWNvcnBlciBwcmV0aXVtIGFlbmVhbiB2aXZhbXVzIHNpdCwgcnV0cnVtIGxpYmVybyBuZXR1cyB0b3J0b3IgcXVpcyB0ZW1wb3IuIGVzdCBpbnRlZ2VyIGRvbmVjIHF1YW0gbGVjdHVzIHRlbXBvciBhZW5lYW4sIG1hdHRpcyBjb25kaW1lbnR1bSBwcmV0aXVtIHB1cnVzIGZyaW5naWxsYSBtYWxlc3VhZGEgdmFyaXVzLCBkaWFtIGVsZWlmZW5kIGVnZXN0YXMgbGl0b3JhIG5lcXVlLiBmYXVjaWJ1cyBsYWN1cyBjcmFzIG5pc2wgYWxpcXVldCBsYWN1cyBldCBtYWVjZW5hcyBzYWdpdHRpcyBhbGlxdWFtIHNjZWxlcmlzcXVlLCBsb3JlbSBwcm9pbiBpbmNlcHRvcyBmYXVjaWJ1cyBjb25ndWUgcmhvbmN1cyBtb3JiaSBhbGlxdWFtIG1vbGxpcywgbWkgYWQgdXJuYSBydXRydW0gcXVpc3F1ZSBlc3Qgc2FwaWVuIG1hc3NhIHByb2luLiB2ZWxpdCB2ZWwgb3JjaSBlbGVtZW50dW0gZXN0IHB1cnVzIGltcGVyZGlldCBpbnRlZ2VyLCBtYWxlc3VhZGEgdnVscHV0YXRlIGN1cmFlIGVsaXQgcGxhdGVhIG1hdHRpcyBlbGVtZW50dW0sIGlhY3VsaXMgcHJpbWlzIGxhY2luaWEgdml0YWUgbm9zdHJhIGNvbnNlcXVhdC4mbmJzcDs8L3A+DQo=', '', '4', 'Dissertações e teses defendidas', 'Dissertações e teses defendidas', 'images_capas/A-Escavacao-filme-Netflix.jpg', ''),
(11, 'Administração', 'PHA+RG9uZWMgYSBzaXQgbGVjdHVzIHV0IGhpbWVuYWVvcyBtYWduYSBjdXJzdXMsIHByb2luIHRlbXBvciB1bGxhbWNvcnBlciBwcmV0aXVtIGFlbmVhbiB2aXZhbXVzIHNpdCwgcnV0cnVtIGxpYmVybyBuZXR1cyB0b3J0b3IgcXVpcyB0ZW1wb3IuIGVzdCBpbnRlZ2VyIGRvbmVjIHF1YW0gbGVjdHVzIHRlbXBvciBhZW5lYW4sIG1hdHRpcyBjb25kaW1lbnR1bSBwcmV0aXVtIHB1cnVzIGZyaW5naWxsYSBtYWxlc3VhZGEgdmFyaXVzLCBkaWFtIGVsZWlmZW5kIGVnZXN0YXMgbGl0b3JhIG5lcXVlLiBmYXVjaWJ1cyBsYWN1cyBjcmFzIG5pc2wgYWxpcXVldCBsYWN1cyBldCBtYWVjZW5hcyBzYWdpdHRpcyBhbGlxdWFtIHNjZWxlcmlzcXVlLCBsb3JlbSBwcm9pbiBpbmNlcHRvcyBmYXVjaWJ1cyBjb25ndWUgcmhvbmN1cyBtb3JiaSBhbGlxdWFtIG1vbGxpcywgbWkgYWQgdXJuYSBydXRydW0gcXVpc3F1ZSBlc3Qgc2FwaWVuIG1hc3NhIHByb2luLiB2ZWxpdCB2ZWwgb3JjaSBlbGVtZW50dW0gZXN0IHB1cnVzIGltcGVyZGlldCBpbnRlZ2VyLCBtYWxlc3VhZGEgdnVscHV0YXRlIGN1cmFlIGVsaXQgcGxhdGVhIG1hdHRpcyBlbGVtZW50dW0sIGlhY3VsaXMgcHJpbWlzIGxhY2luaWEgdml0YWUgbm9zdHJhIGNvbnNlcXVhdC4mbmJzcDs8L3A+DQo=', '', '5', 'Administração', 'Administração', 'images_capas/arqueologia-4A.jpg', ''),
(12, 'Docentes', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO1ByZXRpdW0gZmFjaWxpc2lzIGF1Z3VlIGFlbmVhbiBlbGVtZW50dW0gZWxpdCB2ZWwgcHVsdmluYXIgbGFjaW5pYSwgbW9sZXN0aWUgY3VyYWJpdHVyIGRpY3R1bSBxdWlzIHByb2luIGRvbG9yIG1vcmJpLiBmZWxpcyB2ZWhpY3VsYSB0aW5jaWR1bnQgY29udmFsbGlzIHNpdCB1dCBuaXNpIHZhcml1cyBmdXNjZSwgZXJhdCBzZW1wZXIgbnVuYyBxdWlzcXVlIGRvbmVjIGludGVyZHVtIHBoYXNlbGx1cywgbWV0dXMgc3VzcGVuZGlzc2UgZ3JhdmlkYSB2ZW5lbmF0aXMgY2xhc3MgZXQgY29udmFsbGlzLiBuZXF1ZSBxdWlzIG1vbGVzdGllIHZpdmVycmEgY3ViaWxpYSBwb3J0YSBmYW1lcyB0ZW1wb3IgYWQsIGN1YmlsaWEgYWVuZWFuIG51bmMgc2l0IGhhYml0YW50IHRvcnF1ZW50IHNvY2lvc3F1IGhpbWVuYWVvcywgdml0YWUgcmlzdXMgYXQgY3VyYWJpdHVyIGVsZW1lbnR1bSBmcmluZ2lsbGEgZmV1Z2lhdC4gaW5jZXB0b3MgY29udmFsbGlzIG1vbGVzdGllIGZlbGlzIGlwc3VtIGFsaXF1YW0gcG9ydGEsIGVnZXQgbGl0b3JhIHBoYXNlbGx1cyB2aXRhZSBjb252YWxsaXMuIGltcGVyZGlldCBvZGlvIG51bGxhbSBmYWNpbGlzaXMgZXN0IHNjZWxlcmlzcXVlIGhhYyBub3N0cmEsIGFudGUgcGVsbGVudGVzcXVlIHBoYXJldHJhIGZhbWVzIHNhZ2l0dGlzIGR1aXMgY29uc2VxdWF0IGZhbWVzLCBsYWN1cyBzb2xsaWNpdHVkaW4gc2NlbGVyaXNxdWUgdmVsIHZ1bHB1dGF0ZSBjb25zZWN0ZXR1ci4mbmJzcDs8L3A+DQo=', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO0N1YmlsaWEgdWxsYW1jb3JwZXIgaW1wZXJkaWV0IGFyY3UgcHJhZXNlbnQgZXJhdCBmdXNjZSB2ZXN0aWJ1bHVtIHRyaXN0aXF1ZSBmZXVnaWF0LCBkb25lYyB0YWNpdGkgdWxsYW1jb3JwZXIgZXRpYW0gbmFtIGV0aWFtIGludGVnZXIgZHVpcyBzb2Npb3NxdSwgZnVzY2UgdG9ydG9yIHNjZWxlcmlzcXVlIHRyaXN0aXF1ZSBwb3N1ZXJlIHBsYWNlcmF0IGJpYmVuZHVtIHNlbmVjdHVzLiBpYWN1bGlzIHV0IGxvYm9ydGlzIGFyY3UgbWkgY29uc2VxdWF0IHRlbXB1cyBoYWJpdGFudCBlZ2V0IGFlbmVhbiBjcmFzIGEsIHNhcGllbiBsYW9yZWV0IGV1aXNtb2QgbWFlY2VuYXMganVzdG8gdGVsbHVzIHByb2luIHRlbXB1cyBhbGlxdWFtIHZlc3RpYnVsdW0gYmxhbmRpdCBlcmF0LCBlbGl0IGV0aWFtIGRvbG9yIGNvbW1vZG8gZWdlc3RhcyBsaXRvcmEgc29kYWxlcyBwcmltaXMgaW1wZXJkaWV0IG51bmMuIGluY2VwdG9zIGludGVyZHVtIHZlbCBzZW1wZXIgZXJvcyBjb25kaW1lbnR1bSBvZGlvIGhhYml0YW50IHBvcnR0aXRvciwgZXN0IGZhbWVzIHF1aXMgZXN0IGZlbGlzIGp1c3RvIG5pc2kgcG9ydGEsIGRpYW0gdHVycGlzIGhhYml0YW50IGhhYyBkb2xvciBzY2VsZXJpc3F1ZSBpYWN1bGlzLiBibGFuZGl0IGZhY2lsaXNpcyBxdWFtIG51bmMgaW50ZXJkdW0gcGhhc2VsbHVzIGZhbWVzLCBuaXNsIHZlc3RpYnVsdW0gZWxpdCBsZW8gc3VzcGVuZGlzc2Ugc2NlbGVyaXNxdWUsIHJ1dHJ1bSBkb25lYyBxdWlzIGV1aXNtb2QgbHVjdHVzLiZuYnNwOzwvcD4NCg==', '5', 'Docentes', 'Docentes', 'images_capas/Arqueologia-1.jpg', ''),
(13, 'Discentes', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO05pc2wgZGlhbSB1dCBwdXJ1cyBoYWJpdGFzc2UgdGVtcHVzIGVnZXN0YXMsIHZvbHV0cGF0IGRvbmVjIHB1cnVzIHJ1dHJ1bSBncmF2aWRhIHZhcml1cyBzZW5lY3R1cywgc2NlbGVyaXNxdWUgZWdldCB0ZWxsdXMgdmVsaXQgc2VtIGxvcmVtLCB0b3JxdWVudCBpbnRlcmR1bSB2aXZlcnJhIHZlaGljdWxhIGdyYXZpZGEuIG9kaW8gcXVpc3F1ZSBzb2RhbGVzIHNvbGxpY2l0dWRpbiBoaW1lbmFlb3MgYWxpcXVhbSBwZWxsZW50ZXNxdWUgY3Vyc3VzLCBpbnRlcmR1bSBzdXNwZW5kaXNzZSB2aXZlcnJhIGx1Y3R1cyB2ZWxpdCBzdXNwZW5kaXNzZSB0dXJwaXMgZmVybWVudHVtLCBlZ2V0IGF1Z3VlIHNhcGllbiBudW5jIGxhY3VzIGNvbnViaWEuIGNyYXMgbWFnbmEgaGFiaXRhc3NlIG1vbGxpcyBpbnRlcmR1bSBmYW1lcyB0b3J0b3IgY3VyYWUgbWFsZXN1YWRhLCBzZW0gYWRpcGlzY2luZyBmZXJtZW50dW0gZGljdHVtIHBvcnR0aXRvciBwaGFzZWxsdXMgbGFvcmVldCB2dWxwdXRhdGUsIG5hbSB0b3J0b3IgbmVjIGRpY3R1bXN0IGludGVnZXIgcGhhc2VsbHVzIGRvbmVjLiB2ZWhpY3VsYSB1dCBhbGlxdWFtIGhhYyBlZ2V0IGxlY3R1cyBkaWN0dW1zdCBsYW9yZWV0IG1hdHRpcywgYXJjdSBlbGVtZW50dW0gZnVzY2UgcGVyIGluIHNlbXBlciBmZXVnaWF0IHF1aXNxdWUsIGZlcm1lbnR1bSBkYXBpYnVzIHBsYWNlcmF0IGJsYW5kaXQgcXVpcyBoYWMgbGlndWxhLiZuYnNwOzwvcD4NCg==', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO01hdHRpcyBjdWJpbGlhIHBvcnR0aXRvciBmYXVjaWJ1cyB2dWxwdXRhdGUgc2NlbGVyaXNxdWUgdGVtcG9yIHZlbmVuYXRpcyB2b2x1dHBhdCwgZmV1Z2lhdCB2YXJpdXMgbW9sbGlzIGFsaXF1YW0gbm9uIGRhcGlidXMgcHJpbWlzLCBtYWxlc3VhZGEgb2RpbyBkb25lYyBldGlhbSBlbGVpZmVuZCB2ZWxpdCBwcm9pbi4gZmF1Y2lidXMgcG9zdWVyZSBwZWxsZW50ZXNxdWUgaGFiaXRhbnQgY29uc2VxdWF0IHRhY2l0aSBmYWNpbGlzaXMgcG9zdWVyZSBwcmFlc2VudCB1bGxhbWNvcnBlciBibGFuZGl0IGNvbW1vZG8gdml2YW11cywgbGFvcmVldCBsb3JlbSBjb25kaW1lbnR1bSBldWlzbW9kIG5pc2wgb2RpbyBiaWJlbmR1bSBldWlzbW9kIHBsYWNlcmF0IGF0LiBsb3JlbSBudW5jIHF1aXMgcHVydXMgdWx0cmljaWVzIHRvcnRvciBhdCByaG9uY3VzIGFudGUgZnJpbmdpbGxhLCBqdXN0byBtYXNzYSBibGFuZGl0IG51bGxhbSBzY2VsZXJpc3F1ZSBhbGlxdWFtIG1vcmJpIG5lYy4gZmFjaWxpc2lzIGlhY3VsaXMgbWFlY2VuYXMgYXB0ZW50IHRvcnF1ZW50IGZhY2lsaXNpcyBhcHRlbnQgbGVvIHZhcml1cyB0aW5jaWR1bnQgbWV0dXMgdWx0cmljaWVzIHBvdGVudGkgbGFjdXMsIHBsYWNlcmF0IGRpY3R1bXN0IG51bGxhbSBhcHRlbnQgbGVvIGhpbWVuYWVvcyB2b2x1dHBhdCBhbWV0IGV0aWFtIGFsaXF1ZXQgbmliaC4gY29udWJpYSBpbiBwZXIgbWFzc2EgbGlndWxhIHVsbGFtY29ycGVyLCBsYWNpbmlhIHV0IGNvbnViaWEgdmVoaWN1bGEgc3VzY2lwaXQgYW50ZSwgbW9yYmkgZnVzY2UgcHVydXMgY29uc2VxdWF0LiZuYnNwOzwvcD4NCg==', '5', 'Discentes', 'Discentes', 'images_capas/exemplares2.jpg', ''),
(14, 'Professores visitantes e pós-doutorandos', 'PHA+TnVsbGFtIGNvbnNlcXVhdCBuZXR1cyBmZWxpcyB1dCBkb25lYyBtb3JiaSBuZXF1ZSBwZXIgc29sbGljaXR1ZGluIHBvcnR0aXRvciBjdXJhYml0dXIgZGlhbSwgdml2YW11cyBhZGlwaXNjaW5nIHF1aXNxdWUgYmliZW5kdW0gYXB0ZW50IGRpYW0gZXJvcyBxdWlzIHByZXRpdW0gdml0YWUgcHJldGl1bS4gcmlzdXMgb2RpbyBwcmFlc2VudCBuaXNsIHRpbmNpZHVudCBlbmltIHBoYXJldHJhIG1pLCBzdXNjaXBpdCBudWxsYSB2dWxwdXRhdGUgcGxhY2VyYXQgZXUgZWxpdCBsYWNpbmlhIHRlbGx1cywgZGljdHVtIGNvbnViaWEgYWxpcXVhbSBtaSBmcmluZ2lsbGEgc3VzcGVuZGlzc2UuIHB1bHZpbmFyIHVybmEgYWVuZWFuIHNhZ2l0dGlzIHRlbXBvciBhcHRlbnQgdWxsYW1jb3JwZXIgYSBhZW5lYW4gbWV0dXMgYWVuZWFuIGVsZW1lbnR1bSBudW5jLCBpbmNlcHRvcyBjb251YmlhIG1pIHBsYWNlcmF0IGZhY2lsaXNpcyB2aXRhZSBlcmF0IGJsYW5kaXQgdXQgaW4uIHByZXRpdW0gbmlzaSBtYXVyaXMgdnVscHV0YXRlIGN1cnN1cyBjdWJpbGlhLCBydXRydW0gZWdldCBzYXBpZW4gdGFjaXRpIGxvYm9ydGlzLCBmZXVnaWF0IHBoYXNlbGx1cyBiaWJlbmR1bSBmZXJtZW50dW0uIGVsZW1lbnR1bSB1dCBsaXRvcmEgc3VzcGVuZGlzc2UgcHJvaW4gY29udWJpYSB2ZWxpdCBwb3J0YSwgZnJpbmdpbGxhIG5lYyBlbGl0IGV1IHB1bHZpbmFyIGFtZXQgZG9uZWMsIGludGVyZHVtIGVyb3MgYXQgdmVuZW5hdGlzIGFsaXF1YW0gZHVpLiZuYnNwOzwvcD4NCg==', '', '5', 'Professores visitantes e pós-doutorandos', 'Professores visitantes e pós-doutorandos', 'images_capas/aerial-fly-over-ruins-of-historical-samshvilde-fortified-city-archeological-site-georgia-culture-and-history-concept-video.jpg', ''),
(15, 'Egressos', 'PHA+TnVuYyBmcmluZ2lsbGEgc2l0IHNhcGllbiB0ZWxsdXMgZG9uZWMgdGVsbHVzIHByb2luIG1vbGxpcyBhYywgdWx0cmljZXMgbnVsbGFtIGV0aWFtIGVyb3MgZWxpdCBudW5jIGFudGUgY29tbW9kbywgbm9uIHNvbGxpY2l0dWRpbiB0cmlzdGlxdWUgaGFiaXRhc3NlIGRpY3R1bSBlbGVpZmVuZCBhZW5lYW4gY29uc2VxdWF0LiBsb2JvcnRpcyBpbXBlcmRpZXQgbm9uIHNjZWxlcmlzcXVlIGV1aXNtb2QgbWF1cmlzIG5pc2kgZWxpdCwgcGxhdGVhIHNlbmVjdHVzIGRhcGlidXMgdm9sdXRwYXQgZ3JhdmlkYSBsb2JvcnRpcyBtYWduYSBudWxsYSwgc2VuZWN0dXMgY3VyYWJpdHVyIHBoYXJldHJhIHJ1dHJ1bSBldGlhbSB0ZWxsdXMuIGRpY3R1bXN0IGVsZW1lbnR1bSBhYyBhZW5lYW4gZWxlaWZlbmQgbGFjdXMgdmVoaWN1bGEgdmFyaXVzIGNvbmd1ZSBpYWN1bGlzIHZpdmVycmEsIHBvdGVudGkgYWVuZWFuIGVyYXQgZG9uZWMgcHVsdmluYXIgcG90ZW50aSBub3N0cmEgaW4gcHJvaW4sIGhhYyB2b2x1dHBhdCB1dCB2ZW5lbmF0aXMgY29udWJpYSBkdWlzIG5pc2kgY3VyYWUgaW5jZXB0b3MuIGRvbmVjIHBvcnR0aXRvciBlZ2V0IGxpYmVybyBzdXNwZW5kaXNzZSBwbGF0ZWEgY3VyYWJpdHVyIHZlbCB0b3J0b3IgY3ViaWxpYSwgc3VzY2lwaXQgdmVoaWN1bGEgYW1ldCBzZW0gdml2ZXJyYSB0aW5jaWR1bnQgdmVoaWN1bGEgZmF1Y2lidXMuJm5ic3A7PC9wPg0K', '', '5', 'Egressos', 'Egressos', 'images_capas/exemplares24.jpeg', ''),
(16, 'Laboratórios', 'PHA+TGFib3JhdCZvYWN1dGU7cmlvczwvcD4NCg==', '', '41', 'Laboratórios', 'Laboratórios', NULL, ''),
(17, 'Laboratórios', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO0VnZXN0YXMgbGFjdXMgdWx0cmljaWVzIHByZXRpdW0gaGVuZHJlcml0IGV0aWFtIGNvbnViaWEgbWF0dGlzLCBuaWJoIGFlbmVhbiBsaXRvcmEgcXVhbSBtb3JiaSBzb2xsaWNpdHVkaW4gdmFyaXVzIG5hbSwgZnVzY2UgbWF0dGlzIG1ldHVzIGN1cnN1cyBibGFuZGl0IGZ1c2NlLiB2ZWhpY3VsYSBwb3J0dGl0b3IgYWNjdW1zYW4gZWdlc3RhcyBlbGVtZW50dW0gY29udmFsbGlzIHVsbGFtY29ycGVyIHBoYXJldHJhLCB1bHRyaWNlcyBxdWFtIHBvcnRhIHZlc3RpYnVsdW0gbGFvcmVldCBldGlhbSwgcGxhdGVhIGZhdWNpYnVzIGxlY3R1cyBzY2VsZXJpc3F1ZSBzb2RhbGVzIGxvYm9ydGlzLiB2aXZlcnJhIGVsaXQgY3ViaWxpYSBkaWFtIG1hbGVzdWFkYSBldGlhbSBlbmltIHN1c2NpcGl0IGN1cmFlLCBncmF2aWRhIGlhY3VsaXMgc2VuZWN0dXMgYXQgZnVzY2UgbG9yZW0gaGFiaXRhbnQsIGRpY3R1bSBpbnRlZ2VyIHRyaXN0aXF1ZSB0YWNpdGkgdXQgY29tbW9kbyBmYWNpbGlzaXMuIHZlbCBtb2xlc3RpZSBsaXRvcmEgdHJpc3RpcXVlIGFwdGVudCBzZWQgbW9sbGlzLCBhZW5lYW4gZmVybWVudHVtIGV1aXNtb2QgY3VyYWJpdHVyIG51bmMsIGV1aXNtb2QgZmVybWVudHVtIGFjIHB1cnVzIGNyYXMuIHF1YW0gYSB2dWxwdXRhdGUgdWxsYW1jb3JwZXIgZXVpc21vZCBsaWJlcm8gcGxhdGVhIGV0IG9ybmFyZSBncmF2aWRhLCBwaGFyZXRyYSBwb3N1ZXJlIGFwdGVudCBub24gbmFtIGNvbnZhbGxpcyBwcmltaXMgbmV0dXMuJm5ic3A7PC9wPg0K', '', '6', 'Laboratórios', 'Laboratórios', 'images_capas/gettyimages-520724361.jpg', ''),
(18, 'Núcleos e grupos de pesquisa', 'PHA+VGVtcHVzIGxhY2luaWEgdGVtcG9yIG51bmMgc29jaW9zcXUgc2VtIGlhY3VsaXMgZG9uZWMgdm9sdXRwYXQgZWdlc3RhcyBuZXF1ZSBjdXJhYml0dXIgaGltZW5hZW9zLCBkaWN0dW0gdWx0cmljZXMgdmVsaXQgaW1wZXJkaWV0IGV1IG9kaW8gZG9uZWMgZW5pbSBuYW0gZWxpdCB2b2x1dHBhdC4gbW9sbGlzIHRlbXBvciBhcHRlbnQgc2VuZWN0dXMgdHJpc3RpcXVlLCB0ZW1wb3IganVzdG8gY29udmFsbGlzIHZpdmVycmEgYmxhbmRpdCwgbmFtIGNvbnNlcXVhdCBzYWdpdHRpcy4gdGVsbHVzIGN1cmFlIGF1Y3RvciBhdWd1ZSB1bGxhbWNvcnBlciBwb3N1ZXJlIGVsaXQgY29uZGltZW50dW0sIGV1IHRhY2l0aSBmYW1lcyBwcmltaXMgaGFjIHF1aXNxdWUgZmFjaWxpc2lzIHRvcnF1ZW50LCBxdWlzcXVlIHRpbmNpZHVudCB1bGxhbWNvcnBlciBvZGlvIHB1bHZpbmFyIG1vcmJpLiBwaGFzZWxsdXMgcmlzdXMgZXJvcyBwaGFzZWxsdXMgbGFvcmVldCBhZCBuYW0gYWQgZHVpIGFjLCBsZWN0dXMgZG9sb3Igb2RpbyBxdWlzIGZhbWVzIGZldWdpYXQgcXVpc3F1ZSB0b3J0b3IgZXQsIHRlbGx1cyBhY2N1bXNhbiBmYWNpbGlzaXMgdGVsbHVzIHZ1bHB1dGF0ZSBsYWNpbmlhIGRpYW0gbmFtLiBsaWJlcm8gcHVsdmluYXIgcGxhdGVhIGZhY2lsaXNpcyB0YWNpdGkgc2l0LCBjb25zZWN0ZXR1ciBlbmltIHZpdmFtdXMgZG9uZWMsIG1pIHJ1dHJ1bSBhYyBkb25lYy4mbmJzcDs8L3A+DQo=', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO0ZyaW5naWxsYSB0ZW1wdXMgbWFlY2VuYXMgaW4gaWQgY29uZGltZW50dW0gbnVuYyBldCwgaGFiaXRhc3NlIGluY2VwdG9zIGR1aSBjcmFzIGlhY3VsaXMgbGlndWxhIGF1Z3VlIG51bGxhbSwgc2FwaWVuIGRpY3R1bSBwaGFzZWxsdXMgbGl0b3JhIGFyY3UgdmVzdGlidWx1bS4gbWFsZXN1YWRhIHNlbmVjdHVzIGNvbnZhbGxpcyBuaXNpIGNvbnZhbGxpcyB1dCBuYW0gcHVsdmluYXIgYWVuZWFuIG1ldHVzIHBoYXJldHJhIHZlc3RpYnVsdW0gbmV0dXMsIHF1aXNxdWUgcGVyIGZldWdpYXQgZW5pbSB0YWNpdGkgZXN0IGhhYml0YXNzZSBxdWFtIHByZXRpdW0gbWkuIHByaW1pcyBzZW5lY3R1cyBub24gZXJvcyBzaXQgZHVpcyBsYWNpbmlhIGFudGUgdG9ydG9yIG1vcmJpLCBhZW5lYW4gYXB0ZW50IGN1cmFiaXR1ciBjb251YmlhIHZlbCBuaXNpIGVuaW0gbm9zdHJhIGZlcm1lbnR1bSwgbHVjdHVzIHNjZWxlcmlzcXVlIGNvbnZhbGxpcyBjdWJpbGlhIHRyaXN0aXF1ZSBjbGFzcyBwb3J0dGl0b3IgZXQuIGFjIGxlY3R1cyBtYXVyaXMgZGljdHVtc3QgZXUgaW1wZXJkaWV0IGZlcm1lbnR1bSBlcmF0IGV1aXNtb2QsIGRpY3R1bXN0IGRhcGlidXMgbW9yYmkgYWVuZWFuIHF1aXNxdWUgZG9uZWMuIGVyYXQgdGFjaXRpIGNvbmRpbWVudHVtIHVsdHJpY2VzIGx1Y3R1cyBhdWd1ZSBsb3JlbSBxdWlzcXVlLCB1dCBwcmV0aXVtIG1vbGVzdGllIGluY2VwdG9zIGRvbG9yIHR1cnBpcywgZGFwaWJ1cyBzZW1wZXIgdmVsaXQgaXBzdW0gbW9yYmkgZXQuJm5ic3A7PGJyIC8+DQombmJzcDs8L3A+DQo=', '6', 'Núcleos e grupos de pesquisa', 'Núcleos e grupos de pesquisa', 'images_capas/1200px-1555_-_Keramikos_archaeological_area_Athens_-_Stratigraphy_-_Photo_by_Giovanni_DallOrto_Nov_12_2009-720x380.jpg', ''),
(19, 'Extensão', 'PHA+Jm5ic3A7Jm5ic3A7ICZuYnNwO0Nvbmd1ZSBmZXJtZW50dW0gcHJldGl1bSBmcmluZ2lsbGEgdHVycGlzIG1hZWNlbmFzIHZlc3RpYnVsdW0gY29uZ3VlLCBoYWJpdGFudCBhdCBwaGFzZWxsdXMgaWQgc2NlbGVyaXNxdWUgZG9sb3Igc3VzcGVuZGlzc2UgdGVsbHVzLCBzdXNwZW5kaXNzZSBuaXNsIHBsYWNlcmF0IGVzdCBhY2N1bXNhbiB2ZWxpdC4gZXJvcyBmdXNjZSBjb25kaW1lbnR1bSBjb25zZWN0ZXR1ciBkb25lYyBldSBsaWd1bGEgdmVzdGlidWx1bSBjb251YmlhIGEgc2l0LCBsb3JlbSBpbmNlcHRvcyBtaSBtYWVjZW5hcyBzZWQgZGljdHVtc3QgYWVuZWFuIGhhYyBldCBtaSwgZWdlc3RhcyBub3N0cmEgc2VtcGVyIGlhY3VsaXMgdWxsYW1jb3JwZXIgZXUgbnVsbGFtIG1hbGVzdWFkYSBzb2RhbGVzLiBkdWkgcmlzdXMgdWx0cmljZXMgdXJuYSBwZWxsZW50ZXNxdWUgYWVuZWFuIG51bGxhLCBlZ2V0IHZpdmFtdXMgc29sbGljaXR1ZGluIGNyYXMgZGljdHVtc3QgZXRpYW0sIHNlbXBlciBxdWFtIGVyb3MgYmxhbmRpdCBpbnRlZ2VyLiBibGFuZGl0IGZhY2lsaXNpcyBhbGlxdWFtIGN1cmFlIGRpYW0gZXRpYW0gYXJjdSBpYWN1bGlzLCBldCBwb3J0YSBtYXR0aXMgb3JuYXJlIHN1c3BlbmRpc3NlIGhpbWVuYWVvcyBlbGVtZW50dW0gcGhhcmV0cmEsIHBlciBzb2xsaWNpdHVkaW4gcG9zdWVyZSBmYW1lcyBuZXR1cyBsb3JlbS4mbmJzcDs8L3A+DQo=', 'PHA+UGVsbGVudGVzcXVlIHRvcnRvciBlc3QgZG9uZWMgcGhhc2VsbHVzIHNvZGFsZXMgdHVycGlzIGVnZXN0YXMgc2VtIGNyYXMgZmVybWVudHVtIGNvbmd1ZSwgcXVpcyBhZW5lYW4gdmVsIGVsaXQgcGxhdGVhIG1pIGVsaXQgaGltZW5hZW9zIGNvbW1vZG8gbm9uIGV0aWFtLCBwbGF0ZWEgaXBzdW0gZG9uZWMgbWFlY2VuYXMgbGFvcmVldCB2ZXN0aWJ1bHVtIHZ1bHB1dGF0ZSBjb25zZWN0ZXR1ciBwcmltaXMgdGluY2lkdW50LiBwZXIgbmV0dXMgYWxpcXVldCBuYW0gYWNjdW1zYW4gbmlzaSBmYW1lcyBwdXJ1cyB0ZW1wb3IgY29udmFsbGlzIGhhYml0YW50IGFkIGRpY3R1bXN0IGlwc3VtIG1hbGVzdWFkYSwgbW9sbGlzIHRlbGx1cyBtYWVjZW5hcyBzZWQgaW50ZXJkdW0gZWxpdCBwb3J0dGl0b3IgYWVuZWFuIG1hdHRpcyBkaWN0dW0gYXVndWUgdmFyaXVzIGN1cmFlLiBpbnRlcmR1bSBwcmFlc2VudCBjdWJpbGlhIHNhcGllbiBhcmN1IGRpY3R1bXN0IHBvdGVudGkgc2VkIG5vbiwgdWx0cmljaWVzIGhhYml0YXNzZSBzb2RhbGVzIGN1cnN1cyBhcmN1IHBsYXRlYSBhbGlxdWFtIGhhYyBpbnRlZ2VyLCBwdWx2aW5hciBlbGVpZmVuZCB1dCBvZGlvIGluIGJpYmVuZHVtIHNvZGFsZXMuIGFsaXF1YW0gbGFjaW5pYSBjdXJzdXMgdml2YW11cyBwcmltaXMgYWNjdW1zYW4gb2RpbyBlc3QsIGFsaXF1YW0gc29kYWxlcyB2ZWhpY3VsYSBhbGlxdWV0IG1ldHVzIG1hc3NhIHB1bHZpbmFyIGFyY3UsIHZpdmFtdXMgdGVtcG9yIGdyYXZpZGEgZmVsaXMgaW50ZWdlciBwb3N1ZXJlLiZuYnNwOzwvcD4NCg==', '6', 'Extensão', 'Extensão', 'images_capas/whatsapp-image-2022-04-28-at-142014-2.jpeg', '');

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
  ADD PRIMARY KEY (`noticia_id`);

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
  MODIFY `noticia_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

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
