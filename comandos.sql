/* 
BIGINT = Serve para armazenar números inteiros muito grandes que
 ultrapassam o limite do tipo padrão INT. Ex: `telefone` BIGINT NOT NULL;

CHAR = Tem tamanho fixo, se você definir 10 letras e usar apenas 3,
ele preenche o resto com espaços. O VARCHAR tem tamanho variável: ele
usa apenas o espaço do texto que você digitar. Ex: `cpf` CHAR(14) PRIMARY KEY
------------------------------------------------------------------------------------------------------------------------------------------
    INSERT INTO <nome_tabela> [(<coluna1>,<coluna2>,...)] 
	VALUES (<valor1>, <valor2>,...)
Ex:

*Inserção simples*

    INSERT INTO cliente (`cpf`, `nome`, `telefone`)
    VALUES ('123.456.789-00', 'João da Silva', 48991234567);

*Inserindo vários registros de uma vez*

    INSERT INTO cliente (`cpf`, `nome`, `telefone`)
    VALUES 
        ('987.654.321-11', 'Maria Oliveira', 47999887766),
        ('111.222.333-44', 'Carlos Pereira', 48999112233);

*Usando INSERT com colunas em ordem diferente*

    INSERT INTO cliente (`telefone`, `nome`, `cpf`)
    VALUES (48997776655, 'Ana Souza', '222.333.444-55');

-----------------------------------------------------------------------------------------------------------------------------------------
DELETE ->

*O Comando Perigoso - Deletar TUDO*

    DELETE FROM `cliente`;

*Deletar um cliente específico pelo CPF*

    DELETE FROM `cliente`
    WHERE cpf = '222.222.222-22'; 
("Apague da tabela cliente o cliente cujo CPF seja 222.222.222-22. Somente se o CPF for exatamente 222.222.222-22."")

*Deletar todos os clientes com um nome específico*

    DELETE FROM `cliente`
    WHERE nome LIKE 'Ana %';
("Quero excluir apenas os registros que atendam a uma condição relacionada à coluna nome.")
(O LIKE é usado para fazer comparações com padrões de texto.)
( % = Funciona como um curinga que representa qualquer sequência de caracteres. Ex: Ana Silvia, Ana Souza, Ana Maria, Ana Paula)
*/