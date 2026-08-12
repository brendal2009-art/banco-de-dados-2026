CREATE DATABASE `empresa`;

use `empresa`;

CREATE TABLE `departamento`(
    `numero` INT PRIMARY KEY,
    `nome` VARCHAR(100));

CREATE TABLE `endereco`(
    `id` INT PRIMARY KEY,
    `cep` VARCHAR(10),
    `cidade` VARCHAR(100),
    `numero`  INT,
    `logradouro` VARCHAR(100),
    `bairro` VARCHAR(100),
    `complemento` VARCHAR(100));

CREATE TABLE `empregado`(
    `rg` VARCHAR(20) PRIMARY KEY,
    `nome` VARCHAR(250),
    `sexo` VARCHAR(20),
    `data_de_nascimento_` DATE,
    `salario` FLOAT,
    `departamento_numero` INT NOT NULL,
    FOREIGN KEY (`departamento_numero`) REFERENCES `departamento`(`numero`));

CREATE TABLE `dependente`(
    `id` INT PRIMARY KEY,
    `data_nascimento` DATE,
    `sexo` VARCHAR(20),
    `nome` VARCHAR(250),
    `grau_de_parentesco` VARCHAR(100),
    `empregado_rg` VARCHAR(20),
    FOREIGN KEY (`empregado_rg`) REFERENCES `empregado`(`rg`));
