/* Usando o Banco de dados da aula anterior */

-- Inserindo as disciplinas
INSERT INTO disciplina(nome) VALUES('MATEMATICA');
INSERT INTO disciplina(nome) VALUES('CIÊNCIAS');
INSERT INTO disciplina(nome) VALUES('GEOGRAFIA');
INSERT INTO disciplina(nome) VALUES('HISTORIA');
INSERT INTO disciplina(nome) VALUES('PORTUGUÊS');

-- Alterando turma para que a turma seja unica
DELETE FROM turma; -- Limpa os dados de turma
ALTER TABLE turma ADD CONSTRAINT ano_letra UNIQUE(ano, letra);

-- Inserido as turmas
INSERT INTO turma(ano, letra) VALUES(1, 'A'), (1, 'B');
INSERT INTO turma(ano, letra) VALUES(2, 'A'), (2, 'B');
INSERT INTO turma(ano, letra) VALUES(3, 'A'), (3, 'B');

-- Inserindo alunos
INSERT INTO aluno(nome, data_nascimento, endereco, ano_letivo, id_turma)
VALUES
('JOÃO DA SILVA', '2020-02-10', 'Rua Light, 234 - 6574-03', 2025, 8), -- A Convenção é usar a formatação de data (ano-mes-dia)
('ANTONIO KATSUKI', '2020-12-02', 'Rua Misa, 122 - 89345-202', 2025, 8),
('JESUS CRISTO', '2019-07-23', 'Rua Cristo, 102 - 83789-987', 2025, 8),
('BEATRIZ DE OLIVEIRA', '2020-01-15', 'Rua Ryuk, 122 - 82389-239', 2025, 8),
('MARIA DO CARMO', '2020-05-22', 'Rua Ryuk, 132 - 89789-232', 2025, 8);

-- Alterando um registro ja realizado(UPDATE - SET)
UPDATE aluno SET nome='MARIA DO SOCORRO' WHERE id_aluno = 2; -- 'MARIA DO CARMO => MARIA DO SOCORRO'

-- Inserindo professores
INSERT INTO professor(nome)
VALUES('FELIPE NETO'), ('GABRIEL MEDINA'), ('JÚLIO VERNE'), ('MARCOS CASTRO'), ('CESAR RAMBO');

-- Inserindo Responsaveis
INSERT INTO responsavel(nome, telefone, celular, email)
VALUES
('GREGORIO RASPUTIN', '1233-4567', '(45) 0987-1234', 'rasputin.greg@hotmail.com'),
('BERNARDO BOLDRINI', '1934-3894', '(45) 9923-7765', 'boldrini123@gmail.com'),
('GETULIO VARGAS', '2408-1954', '(55) 1904-1882', 'vargas.presidente@gov.com.br'),
('JOANA D ARC', '3005-1431', '(33) 1605-1920', 'general.d.arc@church.com'),
('JESSICA JUNG', '1804-1989', '(38) 2007-2014', 'girls.jessica@never.com');

-- Vinculando resposaveis com alunos
INSERT INTO aluno_responsavel(id_aluno, id_responsavel)
VALUES
(1, 4), 
(2, 1), 
(3, 5), 
(4, 3), 
(4, 4), 
(5, 2);

SELECT * FROM aluno
JOIN aluno_responsavel USING(id_aluno) JOIN responsavel USING(id_responsavel); --(join) mostra os alunos junto dos responsaveis

-- Vinculando turma-disciplina-professor
-- 1 professor dando todas as 5 disciplinas
INSERT INTO professor_disciplina_turma(id_turma, id_disciplina, id_professor)
VALUES
(8, 1, 2),
(8, 2, 2),
(8, 3, 2),
(8, 4, 2),
(8, 5, 2);

SELECT * FROM disciplina
JOIN professor_disciplina_turma USING(id_disciplina) 
JOIN professor USING(id_professor) 
JOIN turma USING(id_turma);