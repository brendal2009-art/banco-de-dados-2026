CREATE DATABASE `trabalho_escolar`;

use `trabalhos_escolares`;

CREATE TABLE `disciplina`(
    `id` int PRIMARY KEY,
    `nome` varchar(250),
    `ano/semestre` int,
    `carga horaria` int);

create table `autor`(
    `matricula` int PRIMARY KEY,
    `nome` varchar(250),
    `email` varchar(250));

create TABLE `trabalho`(
    `id` int primary key,
    `titulo` varchar(250),
    `arquivo` text,
    `data_entrega` date,
    `nota` float,
    `id_disciplina` int,
    FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina`(`id`));

create table `autor_trabalho`(
    `id_autor` int,
    `id_trabalho` int,
    CONSTRAINT `autor_trabalho` PRIMARY KEY (`id_autor`, `id_trabalho`),
    FOREIGN KEY (`id_autor`) REFERENCES `autor`(`matricula`),
    FOREIGN KEY (`id_trabalho`) REFERENCES `trabalho` (`id`));