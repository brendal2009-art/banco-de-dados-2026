CREATE DATABASE `empresa.`;

use `empresa.`;

CREATE TABLE `empregado`(
    `rg` int PRIMARY KEY,
    `nome` varchar (250),
    `sexo` text,
    `data_nascimento` date,
    `salario` float,
    `id_departamento` int,
    `data_inicio` date,