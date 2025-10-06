/* Sempre olhe a ducumentação oficial do postgres 
Aqui estão algumas operaçoes/funcoes apresentadas em aula
*/

/* Operaçoes Aritmeticas */

SELECT 5 % 4; --Modulo

SELECT 3 ^ 3; --Potencia

SELECT |/ 25; -- Raiz Quadrada

SELECT ||/ 64; -- Raiz Cubica

SELECT @ -123; -- Valor absoluto

/*Funções Matematicas */
SELECT ABS(-12.6); -- Valor absoluto

SELECT CEIL(1.2435) -- Arredonda o valor para cima

SELECT FLOOR(1.2435) -- Arredonda para baixo

SELECT FACTORIAL(5); -- Fatorial

SELECT SQRT(64) -- Raiz Quadrada

SELECT RANDOM(); -- Gera um valor entre 0.0 e 1.0

/* Funções com Strings */

SELECT LOWER(nome_modelo) FROM modelo; -- String em minusculo

SELECT UPPER(nome_modelo) FROM modelo; -- String em maiusculo

SELECT LENGTH(nome_modelo) FROM modelo -- Tamanho da string

SELECT MD5('Corolla'); -- Criptografa o dado(em hexadecimal)

SELECT ASCII('A'); -- Retorna o codigo ascii do caracter
SELECT SUBSTRING(nome_modelo FROM 2 for 3) FROM modelo; -- Retorna um intervalo da string
SELECT SUBSTRING(nome_modelo FROM 5) FROM modelo;

SELECT 'MARIA ' || 'DA ' || 'SILVA '; -- Concatenação pipe
SELECT nome_modelo || ' - ' || nome_modelo FROM modelo;

/*Funçoes com data */

SELECT current_time; -- Hora atual

SELECT CURRENT_DATE; -- Data atual

SELECT current_timestamp; -- Data-Hora atual

