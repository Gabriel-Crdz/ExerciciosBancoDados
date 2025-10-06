CREATE DATABASE torneio_pokemon;
\c torneio_pokemon

CREATE TABLE torneio( 
 id_torneio SERIAL PRIMARY KEY,  
 data_inicio DATE NOT NULL,  
 local VARCHAR(80) NOT NULL
); 

CREATE TABLE batalha( 
 id_batalha SERIAL PRIMARY KEY,  
 data_batalha DATE NOT NULL,  
 id_torneio INT NOT NULL REFERENCES torneio(id_torneio) -- FK 
); 

CREATE TABLE treinador( 
 id_treinador SERIAL PRIMARY KEY,  
 nome VARCHAR(80) NOT NULL,  
 idade INT NOT NULL,  
 cidade_origem VARCHAR(80) NOT NULL,
 contato VARCHAR(10) NOT NULL
); 

CREATE TABLE batalha_treinador( 
 id_treinador INT NOT NULL REFERENCES treinador(id_treinador), -- FK
 id_batalha INT NOT NULL REFERENCES batalha(id_batalha) -- FK
); 

CREATE TABLE pokemon( 
 id_pokemon SERIAL PRIMARY KEY,  
 num_pokedex INT NOT NULL,  
 nome VARCHAR(80) NOT NULL,  
 altura FLOAT NOT NULL,  
 peso FLOAT NOT NULL,  
 sexo CHAR NOT NULL,   
 level INT NOT NULL,  
 id_treinador INT NOT NULL REFERENCES treinador(id_treinador) -- FK
);

CREATE TABLE estatistica( 
 id_estatistica SERIAL PRIMARY KEY,  
 pontos_saude INT NOT NULL,  
 ataque INT NOT NULL,  
 defesa INT NOT NULL,  
 ataque_especial INT NOT NULL,  
 defesa_especial INT NOT NULL,  
 velocidade INT NOT NULL,
 id_pokemon INT NOT NULL REFERENCES pokemon(id_pokemon) -- FK  
); 

CREATE TABLE tipagem( 
 id_tipo SERIAL PRIMARY KEY,  
 nome VARCHAR(10) NOT NULL
); 

CREATE TABLE pokemon_tipagem(  
 id_pokemon INT NOT NULL REFERENCES pokemon(id_pokemon), -- FK
 id_tipo INT NOT NULL REFERENCES tipagem(id_tipo) -- FK
); 