CREATE DATABASE `instatche`;

use `instatche`;

CREATE TABLE `foto`(
    `id` int  PRIMARY KEY,
    `arquivo` varchar(250),
    `formato` varchar(50));

CREATE TABLE `usuario`(
    `id` int PRIMARY KEY,
    `nome` varchar(100),
    `idade` int,
    `sexo` varchar(20),
    `cidade` varchar(100),
    `ctg_preferido` varchar(150),
    `foto_id` int NOT NULL,
    FOREIGN KEY (`foto_id`) REFERENCES `foto`(`id`));

CREATE TABLE `avalia`(
    `avaliador_id` int,
    `avaliado_id` int,
    `avaliacao` int,
    CONSTRAINT `avalia` PRIMARY KEY (`avaliador_id`, `avaliado_id`),
    FOREIGN KEY (`avaliador_id`) REFERENCES `usuario`(`id`),
    FOREIGN KEY (`avaliado_id`) REFERENCES `usuario`(`id`));