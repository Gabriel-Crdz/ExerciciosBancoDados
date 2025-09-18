/* Exercícios SELECT */

/* 1. Listar todas as vendas a partir de 2025-01-01, ordenadas do maior para o menor valor */
SELECT * FROM venda 
WHERE data_venda >= '2025-01-01'
ORDER BY valor_venda DESC;

/* 2. Listar veículos vendidos com marca e modelo */
SELECT 
    venda.id_venda, -- E possivel explicitar a tabela antes de chamar o objeto
    veiculo.id_veiculo, 
    marca.nome_marca,
    modelo.nome_modelo 
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca);

/* 3. Quantidade de veículos vendidos por marca */
SELECT 
    id_veiculo,
    nome_modelo,
    marca.cod_marca AS marca, 
    COUNT(*) AS qtde_vendas
FROM venda 
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY id_veiculo, nome_modelo, cod_marca -- agrupa a contagem pelo codigo da marca
ORDER BY COUNT(*) DESC;

/* 4. Valor total vendido por corretor, mostrando apenas quem vendeu mais de 100.000 */
SELECT 
    id_corretor,
    nome_corretor AS corretor,
    SUM(valor_venda) AS soma_venda
FROM venda
JOIN corretor USING (id_corretor)
GROUP BY id_corretor, nome_corretor
HAVING SUM(valor_venda) > 100000 -- O WHERE não funciona com agregações porque ele filtra linhas antes do agrupamento, HAVING filtra depois!
ORDER BY id_corretor DESC;

/* 5. Valor médio por marca, do maior para o menor */
SELECT 
    cod_marca AS marca,
    AVG(valor_venda) AS media_valor
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY cod_marca
ORDER BY AVG(valor_venda) DESC;

/* 6. Corretores com número de vendas (apenas quem tem pelo menos 3 vendas) */
SELECT 
    id_corretor,
    nome_corretor,
    COUNT(*) as num_vendas
FROM venda
JOIN corretor USING (id_corretor)
GROUP BY id_corretor, nome_corretor
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;

/* 7. Compradores que já realizaram compra acima de 80000 */
SELECT 
    nome_compr AS comprador 
FROM venda
JOIN comprador USING (id_compr)
WHERE valor_venda > 80000;

/* 8. Quantidade de vendas por mês (ano-mês), do mais recente ao mais antigo */
SELECT
    TO_CHAR(data_venda, 'YYYY-MM') AS ano_mes, -- to_char: formata a data para (ano-mes), mas agora e tipo STRING e não DATE
    COUNT(*) AS total_vendas
FROM venda
GROUP BY ano_mes
ORDER BY ano_mes DESC;

/* 9. Top 5 modelos mais vendidos */
SELECT 
    COUNT(*) AS qtde_vendas,
    nome_modelo AS modelo,
    cod_marca AS marca
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY cod_marca, nome_modelo
ORDER BY COUNT(*) DESC
LIMIT 5;

/* 10.Média de quilometragem dos veículos vendidos por marca (mostrar só quem tem média >50.000) */
SELECT 
    cod_marca AS marca,
    nome_modelo AS modelo,
    AVG(quilometragem) AS media_km
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY cod_marca, nome_modelo, quilometragem
HAVING AVG(quilometragem) > 50000
ORDER BY AVG(quilometragem) DESC;

/* 11.Veículos vendidos em 2024, ordenados por ano de fabricação (mais novos primeiro) */
SELECT
    id_veiculo,
    num_chassi,
    ano_fabrica,
    nome_modelo,
    cod_marca
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
WHERE ano_fabrica >= '2024-01-01' AND ano_fabrica <= '2024-12-31'
ORDER BY ano_fabrica DESC;

/* 12.Total de comissão pago por corretor, apenas quem recebeu mais de 10.000 de comissão */
SELECT 
    id_corretor,
    nome_corretor,
    SUM(comissao_corretor) AS total_comissao
FROM venda
JOIN corretor USING (id_corretor)
GROUP BY id_corretor, nome_corretor
HAVING SUM(comissao_corretor) > 10000
ORDER BY SUM(comissao_corretor) DESC;

/* 13.Compradores casados que já compraram algum veículo (com nome do cônjuge) */
SELECT 
    id_venda,
    id_compr,
    id_veiculo,
    data_venda,
    nome_compr,
    cpf_compr,
    nome_conjuge
FROM venda
JOIN comprador USING (id_compr)
WHERE estado_civil ILIKE 'casado'; -- case insesitive para 'casado'(nos insert's esta "Casado")
