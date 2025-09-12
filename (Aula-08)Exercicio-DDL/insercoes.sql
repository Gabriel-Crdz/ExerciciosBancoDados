INSERT INTO comprador(nome_compr, cpf_compr, estado_civil, nome_conjuge, cpf_conjuge) 
VALUES
    ('Joana D arc', '01010101010', 'Solteiro', NULL, NULL),
    ('Maria do Carmo', '99933345612', 'Casado', 'Carlos do Carmo', '09876543211'),
    ('Ana Castela', '39560493945', 'Divorciado', NULL, NULL),
    ('Carlos Lacerda', '10293847565', 'Casado', 'Juliana Lacerda', '02032007123'),
    ('Fernanda Lima', '00119922883', 'Solteiro', NULL, NULL),
    ('Roberta Justus', '12129878969', 'Viúva', NULL, NULL),
    ('Pedro Almeida', '02648791238', 'Casado', 'Luana Almeida', '34509823487'),
    ('Paulo Freire', '92017584930', 'Divorciado', NULL, NULL);

INSERT INTO corretor(nome_corretor, matricula_corretor, admissao_corretor) 
VALUES
    ('Lucas Lima', '12345', '2000-01-10'),
    ('Fernanda Gomes', '20012', '2018-05-15'),
    ('Roberto Carlos', '60890', '2019-08-01'),
    ('Mariana Silva', '11023', '2002-02-10'),
    ('José Pereira', '43475', '2013-06-25'),
    ('Tatiane Matos', '05060', '2014-11-30'),
    ('Cezar Coelho', '76543', '2025-04-15'),
    ('Daiane dos Santos', '90001', '2010-10-05');

INSERT INTO marca(nome_marca, cod_marca) 
VALUES
    ('Volkswagen', 'VW'),
    ('Fiat', 'F1'),
    ('Chevrolet', 'CH'),
    ('Honda', 'HN'),
    ('Toyota', 'TO'),
    ('Nissan', 'NI'),
    ('BMW', 'BM'),
    ('Ford', 'FD');

INSERT INTO modelo(cod_modelo, nome_modelo, id_marca) 
VALUES
    ('VW071', 'Gol', 1),
    ('F1223', 'Fiat Uno', 2),
    ('CH042', 'Chevrolet Onix', 3),
    ('HN001', 'Civic', 4),
    ('TO404', 'Corolla', 5),
    ('NI500', 'Sentra', 6),
    ('BM222', 'X1', 7),
    ('FD033', 'Fusca', 8);

INSERT INTO veiculo(num_chassi, num_placa, cor, ano_fabrica, quilometragem, id_modelo) 
VALUES
    ('9BWZZZ377VT004351', 'BOO1244', 'Preto', '2020-03-15', 15000, 1),
    ('9BDZZZ370ZT001122', 'DEF5608', 'Branco', '2010-07-22', 20000, 2),
    ('9BXZZZ370ZT002233', 'PYY1991', 'Prata', '2007-05-10', 5000, 3),
    ('1HGBH41JXMN109186', 'DML1234', 'Azul', '2011-03-22', 12000, 4),
    ('2T1BURHE2FC123456', 'MON7978', 'Prata', '2000-08-15', 18000, 5),
    ('3N1AB7AP5FY304050', 'PPP7777', 'Preto', '2002-01-25', 8000, 6),
    ('5UXWX7C5X0L123456', 'STR9633', 'Cinza', '2013-04-01', 5000, 7),
    ('1FADP3F2XGL123789', 'XYZ4321', 'Branco', '2012-07-30', 10000, 8);

INSERT INTO venda(valor_venda, data_venda, comissao_corretor, id_comprador, id_corretor, id_veiculo) 
VALUES
    (50000.05, '2023-08-01', 5000.55, 1, 1, 1),
    (35000.40, '2014-08-05', 3500.89, 2, 2, 2),
    (60000.99, '2025-09-10', 6000.11, 3, 3, 3),
    (55000.65, '2020-07-12', 5500.01, 4, 1, 4),
    (65000.55, '2017-06-18', 6500.99, 5, 2, 5),
    (72000.01, '2010-08-22', 7200.21, 6, 3, 6),
    (85000.10, '2019-09-01', 8500.12, 7, 4, 7),
    (48000.34, '2024-09-05', 4800.00, 8, 5, 8);
