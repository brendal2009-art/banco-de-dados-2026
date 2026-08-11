CREATE DATABASE `grupo_whatsapp`;

use `grupo_whatsapp`;

CREATE TABLE `grupo`(
    `id` int PRIMARY KEY,
    `nome` varchar(100),
    `grau_de_importancia` int );

CREATE TABLE `contato`(
    `id` int PRIMARY KEY,
    `nome` varchar(100),
    `ocupacao` varchar(50),
    `endereco` varchar(500),
    `email` text,
    `id_grupo`int,
    FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id`));

CREATE TABLE `telefone`(
    `id`int PRIMARY KEY,
    `rotulo` text,
    `numero`int,
    `id_contato` int,
    FOREIGN KEY (`id_contato`) REFERENCES `contato`(`id`));