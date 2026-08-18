-- Questão 1:
INSERT INTO cliente (`cpf`, `nome`, `telefone`) 
    VALUES ('111.111.111-11', 'João da Silva', 48991234567);

-- Questão 2:
INSERT INTO cliente (`cpf`, `nome`, `telefone`) 
    VALUES ('222.222.222-22', 'Maria Oliveira', 48997654321);

-- Questão 3:
INSERT INTO empregado (`cpf`, `nome`, `cargo`) 
    VALUES ('333.333.333-33', 'Carlos Pereira', 'Analista de Sistemas');

-- Questão 4:
INSERT INTO empregado (`cpf`, `nome`, `cargo`) 
    VALUES ('444.444.444-44', 'Ana Souza', 'Gerente de Projetos');

-- Questão 5:
INSERT INTO projeto (`nome`, `descricao`, `preco`, `dtFim`, `dtEstimada`, `dtSolicitacao`, `cpfGerente`, `cpfCliente`) 
    VALUES ('Sistema de Vendas', 'Plataforma para e-commerce', '15000.00', '2025-12-01', '2025-11-15', '2025-09-10', '444.444.444-44', '111.111.111-11');

-- Questão 6:
INSERT INTO projeto (`nome`, `descricao`, `preco`, `dtFim`, `dtEstimada`, `dtSolicitacao`, `cpfGerente`, `cpfCliente`) 
	VALUES('Aplicativo Financeiro', 'Gestão de despesas pessoais', '12000.00', '2025-10-30', '2025-10-20', '2025-09-12', '444.444.444-44', '222.222.222-22');