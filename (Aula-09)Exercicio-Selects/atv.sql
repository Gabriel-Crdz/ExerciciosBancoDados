/*
Exercícios SELECT
*/

-- 1. Listar todas as vendas a partir de 2025-01-01, ordenadas do maior para o menor valor.
SELECT * FROM venda 
WHERE data_venda >= '2025-01-01'
ORDER BY valor_venda DESC;

-- 2. Listar veículos vendidos com marca e modelo.
SELECT 
    venda.id_venda,
    veiculo.id_veiculo, 
    marca.nome_marca,
    modelo.nome_modelo 
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca);

-- 3. Quantidade de veículos vendidos por marca.

-- 4. Valor total vendido por corretor, mostrando apenas quem vendeu mais de 100.000.
SELECT  
FROM venda

-- 5. Valor médio por marca, do maior para o menor.
SELECT * FROM

-- 6. Corretores com número de vendas (apenas quem tem pelo menos 3 vendas).
SELECT * 
FROM venda
JOIN corretor USING (id_corretor)
WHERE;

-- 7. Compradores que já realizaram compra acima de 80000
SELECT nome_compr FROM venda
JOIN comprador USING (id_compr)
WHERE valor_venda > 80000;

-- 8. Quantidade de vendas por mês (ano-mês), do mais recente ao mais antigo.
SELECT * FROM

-- 9. Top 5 modelos mais vendidos.
SELECT * FROM

-- 10.Média de quilometragem dos veículos vendidos por marca (mostrar só quem tem média >50.000).
SELECT * FROM

-- 11.Veículos vendidos em 2024, ordenados por ano de fabricação (mais novos primeiro).
SELECT * FROM

-- 12.Total de comissão pago por corretor, apenas quem recebeu mais de 10.000 de comissão.
SELECT * FROM

-- 13.Compradores casados que já compraram algum veículo (com nome do cônjuge).
SELECT * FROM
