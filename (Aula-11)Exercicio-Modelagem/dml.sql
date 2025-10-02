-- Torneios
INSERT INTO torneio (data_inicio, local) VALUES
('2024-01-15', 'Tokyo'),
('2020-11-30', 'São Paulo');

-- Batalhas
INSERT INTO batalha (data_batalha, id_torneio) VALUES
('2020-12-16', 1),('2020-12-17', 1),
('2021-01-10', 1),('2021-01-04', 1),
('2024-02-06', 2),('2024-02-11', 2),
('2024-01-16', 2),('2024-03-10', 2),
('2024-01-20', 2),('2024-02-26', 2);

-- Treinadores
INSERT INTO treinador (nome, idade, cidade_origem, contato) VALUES
('Fiódor Dostoiévski', 59, 'Moscovo', '4909021881'),
('Junji Ito', 62, 'Sakashita', '1731071963'),
('Clarice Lispector', 56, 'Chechelnyk,', '4309121977'),
('George Orwell', 46, 'Motihari', '2321011950'),
('Franz Kafka', 40, 'Praga', '7703061924'),
('William Shakespeare', 52, 'Stratford', '1225031616'),
('Machado de Assis', 69, 'Rio de Janeiro', '9829091908'),
('Stephen King', 78, 'Portland', '3421091947'),
('Conceição Evaristo', 78, 'Belo Horizonte', '7629111946'),
('Jose Saramago', 87, 'Azinhaga', '1818072010'),
('Gabriel Garcia Marquez', 87, 'Aracataca', '5417042014'),
('Yoshihiro Togashi', 59, 'Shinjo', '7127041966');

-- Tipagens
INSERT INTO tipagem (nome) VALUES
('Fogo'),('Água'),('Planta'),('Elétrico'),
('Psíquico'),('Dragão'),('Sombrio'),('Fada'),
('Fantasma'),('Aço'),('Normal'),('Lutador'),
('Veneno'),('Voador'),('Inseto'),('Gelo'),
('Pedra'),('Terra');


-- Fiódor Dostoiévski (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(94,'Gengar',1.5,40.5,'M',50,1),
(248,'Tyranitar',2.0,202.0,'M',58,1),
(131,'Lapras',2.5,220.0,'F',52,1),
(149,'Dragonite',2.2,210.0,'M',60,1);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(1,9),(1,13),      -- Gengar Fantasma + Veneno
(2,17),(2,7),      -- Tyranitar Pedra + Sombrio
(3,2),(3,16),      -- Lapras Água + Gelo
(4,6),(4,14);      -- Dragonite Dragão + Voador

-- Junji Ito (5)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(778,'Mimikyu',0.2,0.7,'F',48,2),
(354,'Banette',1.1,12.5,'F',46,2),
(292,'Shedinja',0.8,1.2,'M',40,2),
(302,'Sableye',0.5,11.0,'M',44,2),
(609,'Chandelure',1.0,34.3,'M',54,2);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(5,9),(5,8),       -- Mimikyu Fantasma + Fada
(6,9),             -- Banette Fantasma
(7,15),(7,9),      -- Shedinja Inseto + Fantasma
(8,7),             -- Sableye Sombrio
(9,9),(9,1);       -- Chandelure Fantasma + Fogo

-- Clarice Lispector (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(282,'Gardevoir',1.6,48.4,'F',50,3),
(700,'Sylveon',1.0,23.5,'F',48,3),
(196,'Espeon',0.9,26.5,'F',46,3),
(429,'Mismagius',0.9,4.4,'F',45,3);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(10,5),(10,8),     -- Gardevoir Psíquico + Fada
(11,8),            -- Sylveon Fada
(12,5),            -- Espeon Psíquico
(13,9);            -- Mismagius Fantasma

-- George Orwell (3)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(25,'Pikachu',0.4,6.0,'M',35,4),
(257,'Blaziken',1.9,52.0,'M',56,4),
(229,'Houndoom',1.4,35.0,'F',50,4);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(14,4),            -- Pikachu Elétrico
(15,1),(15,12),    -- Blaziken Fogo + Lutador
(16,1),(16,7);     -- Houndoom Fogo + Sombrio

-- Franz Kafka (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(132,'Ditto',0.3,4.0,'N',42,5),
(292,'Shedinja',0.8,1.2,'M',36,5),
(778,'Mimikyu',0.2,0.7,'F',46,5),
(94,'Gengar',1.5,40.5,'M',50,5);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(17,11),           -- Ditto Normal
(18,15),(18,9),    -- Shedinja Inseto + Fantasma
(19,9),(19,8),     -- Mimikyu Fantasma + Fada
(20,9),(20,13);    -- Gengar Fantasma + Veneno

-- William Shakespeare (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(6,'Charizard',1.7,90.5,'M',58,6),
(65,'Alakazam',1.5,48.0,'M',55,6),
(130,'Gyarados',6.5,235.0,'M',60,6),
(38,'Ninetales',1.1,19.9,'F',54,6);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(21,1),(21,14),    -- Charizard Fogo + Voador
(22,5),            -- Alakazam Psíquico
(23,2),(23,14),    -- Gyarados Água + Voador
(24,1);            -- Ninetales Fogo

-- Machado de Assis (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(571,'Zoroark',1.6,81.0,'M',50,7),
(282,'Gardevoir',1.6,48.4,'F',49,7),
(212,'Scizor',1.8,118.0,'M',52,7),
(448,'Lucario',1.2,54.0,'M',53,7);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(25,7),            -- Zoroark Sombrio
(26,5),(26,8),     -- Gardevoir Psíquico + Fada
(27,15),(27,10),   -- Scizor Inseto + Aço
(28,12),(28,10);   -- Lucario Lutador + Aço


-- Stephen King (5)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(94,'Gengar',1.5,40.5,'M',55,),
(778,'Mimikyu',0.2,0.7,'F',52,8),
(609,'Chandelure',1.0,34.3,'M',56,8),
(248,'Tyranitar',2.0,202.0,'M',60,8),
(635,'Hydreigon',1.8,160.0,'M',62,8);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(29,9),(29,13),    -- Gengar Fantasma + Veneno
(30,9),(30,8),     -- Mimikyu Fantasma + Fada
(31,9),(31,1),     -- Chandelure Fantasma + Fogo
(32,17),(32,7),    -- Tyranitar Pedra + Sombrio
(33,6),(33,7);     -- Hydreigon Dragão + Sombrio


-- Conceição Evaristo (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(350,'Milotic',6.2,162.0,'F',55,9),
(448,'Lucario',1.2,54.0,'F',54,9),
(257,'Blaziken',1.9,52.0,'F',53,9),
(197,'Umbreon',1.0,27.0,'F',50,9);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(34,2),            -- Milotic Água
(35,12),(35,10),   -- Lucario Lutador + Aço
(36,1),(36,12),    -- Blaziken Fogo + Lutador
(37,7);            -- Umbreon Sombrio

-- Jose Saramago (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(149,'Dragonite',2.2,210.0,'M',65,10),
(681,'Aegislash',1.7,53.0,'N',55,10),
(350,'Milotic',6.2,162.0,'F',57,10),
(700,'Sylveon',1.0,23.5,'F',51,10);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(38,6),(38,14),    -- Dragonite Dragão + Voador
(39,10),(39,9),    -- Aegislash Aço + Fantasma
(40,2),            -- Milotic Água
(41,8);            -- Sylveon Fada

-- Gabriel Garcia Marquez (5)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(131,'Lapras',2.5,220.0,'F',54,11),
(282,'Gardevoir',1.6,48.4,'F',52,11),
(384,'Rayquaza',7.0,206.5,'M',70,11),
(475,'Gallade',1.6,52.0,'M',53,11),
(6,'Charizard',1.7,90.5,'M',57,11);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(42,2),(42,16),    -- Lapras Água + Gelo
(43,5),(43,8),     -- Gardevoir Psíquico + Fada
(44,6),(44,14),    -- Rayquaza Dragão + Voador
(45,12),(45,5),    -- Gallade Lutador + Psíquico
(46,1),(46,14);    -- Charizard Fogo + Voador

-- Yoshihiro Togashi (4)
INSERT INTO pokemon (num_pokedex,nome,altura,peso,sexo,level,id_treinador) VALUES
(658,'Greninja',1.5,40.0,'M',60,12),
(445,'Garchomp',1.9,95.0,'M',62,12),
(448,'Lucario',1.2,54.0,'M',58,12),
(121,'Starmie',1.1,80.0,'N',56,12);

INSERT INTO pokemon_tipagem (id_pokemon,id_tipo) VALUES
(47,2),(47,7),     -- Greninja Água + Sombrio
(48,6),(48,18),    -- Garchomp Dragão + Terra
(49,12),(49,10),   -- Lucario Lutador + Aço
(50,2),(50,5);     -- Starmie Água + Psíquico