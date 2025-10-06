/* Problemas para Consulta de Dados */

-- 1. Todos os pokémons cadastrados que são da 1ª geração(151 primeiros da pokédex).
SELECT * FROM pokemon
WHERE num_pokedex < 151
ORDER BY num_pokedex ASC;

-- 2. Todos os treinadores que possuem pokémons acima do nível 60.
SELECT 
    treinador.id_treinador,
    pokemon.id_pokemon,
    treinador.nome AS treinador,
    treinador.idade,
    treinador.cidade_origem,
    treinador.contato,
    pokemon.nome AS pokemon,
    pokemon.num_pokedex,
    pokemon.level
FROM pokemon
JOIN treinador USING (id_treinador)
GROUP BY treinador.id_treinador, pokemon.id_pokemon
HAVING pokemon.level >= 60
ORDER BY treinador.id_treinador ASC;

-- 3. A soma das estatísticas de cada pokémon cadastrado.
SELECT
    pokemon.id_pokemon,
    pokemon.nome,
    pokemon.num_pokedex,
    pontos_saude + ataque + defesa + ataque_especial + defesa_especial + velocidade AS BST --BST: Base Stats Total
FROM estatistica
JOIN pokemon USING (id_pokemon)
GROUP BY pokemon.id_pokemon, estatistica.id_estatistica
ORDER BY BST ASC;

-- 4. Todos os treinadores que possuem pokémons de apenas uma tipagem.
SELECT
    treinador.id_treinador,
    treinador.nome AS treinador,
    pokemon.id_pokemon,
    pokemon.nome AS pokemon,
    tipagem.nome AS tipo
FROM pokemon
JOIN treinador USING (id_treinador)
JOIN pokemon_tipagem USING (id_pokemon)
JOIN tipagem USING (id_tipo)
WHERE pokemon.id_pokemon IN (
    SELECT id_pokemon
    FROM pokemon_tipagem
    GROUP BY id_pokemon
    HAVING COUNT(id_tipo) = 1
)
ORDER BY treinador.id_treinador ASC;

-- 5. 