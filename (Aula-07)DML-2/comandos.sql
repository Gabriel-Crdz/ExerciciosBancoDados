/* Select, Update, Delete */
/* Comandos Select */

SELECT * FROM aluno; -- Forma basica de visualização (todos os campos da tabela)

SELECT id_aluno, nome, data_nascimento FROM aluno; -- Visualização de colunas especificas (apenas as colunas chamadas)

---------------------------------------------------------------------------------------
-- Trocando o nome da coluna visualizada:
SELECT id_aluno AS id, nome, data_nascimento AS data_nasc FROM aluno; -- Forma antiga

SELECT id_aluno id, nome, data_nascimento data_nasc FROM aluno; -- Forma nova (AS não obrigatorio desde 2005)

---------------------------------------------------------------------------------------
-- Estrutura com Indentação:
SELECT 
    id_aluno AS id, 
    nome, data_nascimento AS data_nasc 
FROM aluno 

---------------------------------------------------------------------------------------
-- WHERE(quando), validação que limita a busca:
SELECT 
    id_aluno AS id, 
    nome, data_nascimento AS data_nasc 
FROM aluno 
WHERE
    id_aluno <= 20; -- Mostra todos os alunos com id menor ou igual a 20

SELECT 
    id_aluno AS id, 
    nome, data_nascimento AS data_nasc 
FROM aluno 
WHERE
    data_nascimento <= '31-12-2015'; -- Mostra os alunos que nasceram antes de 2015 (tipo DATE converte para AAAA-MM-DD)

---------------------------------------------------------------------------------------
-- Operadores Relacionais(NOT, AND, OR):
SELECT 
    id_aluno AS id, 
    nome, data_nascimento AS data_nasc 
FROM aluno 
WHERE
    data_nascimento >= '2014-05-01' AND data_nascimento <= '2014-05-31'; -- Mostra os alunos que nasceram no mês de maio de 2014

---------------------------------------------------------------------------------------
-- Ordenação dos dados:
SELECT 
    id_aluno AS id, 
    nome, data_nascimento AS data_nasc 
FROM aluno 
WHERE
    data_nascimento >= '2014-05-01'
ORDER BY nome ASC; -- Mostra os alunos que nasceram antes de 2015 em ordem -- ASC: ascendente

SELECT 
    id_aluno AS id, 
    nome, data_nascimento AS data_nasc 
FROM aluno 
WHERE
    data_nascimento >= '2014-05-01'
ORDER BY data_nascimento DESC; -- Mostra os alunos que nasceram antes de 2015 em ordem de data -- DESC: descendente

---------------------------------------------------------------------------------------
-- Limitação de visualização dos dados:
SELECT * from aluno LIMIT 10; -- Mostra apenas os 10 primeiros alunos

SELECT * from aluno ORDER BY nome ASC LIMIT 10; -- Mostra apenas os 10 primeiros alunos em ordem ascendente

SELECT * from aluno ORDER BY nome ASC LIMIT 10 OFFSET 10; -- Mostra os proximos 10 alunos

---------------------------------------------------------------------------------------
-- Operador Like/Iilike(como, tipo):
-- like(CASE SENSINTIVE)
SELECT * FROM responsavel WHERE nome LIKE 'Jo%'; -- Mostra todos os responsaveis onde o nome começa com 'Jo'

SELECT * FROM responsavel WHERE nome LIKE '%jo'; -- Mostra todos os responsaveis onde o nome termina com 'jo'

-- ilike(CASE IN-SENSINTIVE)
SELECT * FROM responsavel WHERE nome ILIKE '%JO'; -- Mostra todos os responsaveis onde o nome começa com 'jo'

SELECT * FROM responsavel WHERE nome ILIKE '%JO%'; -- Mostra todos os responsaveis onde o nome possue 'jo'

---------------------------------------------------------------------------------------
-- Operador Between:
SELECT * FROM responsavel WHERE id_responsavel BETWEEN 1 AND 7; -- Mostra os responsaveis entre com id entre 1 a 7

---------------------------------------------------------------------------------------
-- Operador IN:
SELECT * FROM responsavel WHERE id_responsavel IN (2, 12, 22, 32); -- Mostra os responsaveis com id's: 2, 12, 22, 32

/*---------------------------------------------------------------------------------------*/
/* Comando Update */

UPDATE professor SET nome = 'Isabela Marins' WHERE id_professor = 9; -- id_professor(9) mudou para 'Isabela Marins'

/* Comando Delete */
DELETE FROM professor WHERE id_professor = 9; -- id_professor(9) não pode ser deletado por possuir dependencias
