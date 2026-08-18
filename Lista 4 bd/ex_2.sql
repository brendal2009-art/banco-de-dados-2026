CREATE DATABASE `musica_lancamento`;

use `musica_lancamento`;

CREATE TABLE `musica`(
    `id` int PRIMARY KEY,
    `titulo` text,
    `letra` text);

CREATE TABLE `cantor`(
    `id`int PRIMARY KEY,
    `nome` varchar(100));

CREATE TABLE `gravacao`(
    `id` int PRIMARY KEY,
    `duracao` int,
    `id_cantor` int,
    `id_musica` int,
    FOREIGN KEY (`id_cantor`) REFERENCES `cantor`(`id`),
    FOREIGN KEY (`id_musica`) REFERENCES `musica`(`id`));

CREATE TABLE `compositor`(
    `cpf` VARCHAR(14) PRIMARY KEY,
    `nome` varchar(100));
    
CREATE TABLE `musica_compositor` (
    `cpf_compositor` VARCHAR(14),
    `id_musica` int,
    CONSTRAINT `musica_compositor`PRIMARY KEY (`cpf_compositor`, `id_musica`),
    FOREIGN KEY (`cpf_compositor`) REFERENCES `compositor`(`cpf`),
    FOREIGN KEY (`id_musica`) REFERENCES `musica` (`id`));