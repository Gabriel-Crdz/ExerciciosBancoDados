create DATABASE concessionaria;
\c concessionaria

CREATE TABLE comprador( 
 id_compr SERIAL PRIMARY KEY,  
 nome_compr VARCHAR(80) NOT NULL,  
 cpf_compr VARCHAR(11) NOT NULL, -- CPF possui 11 caracteres  
 estado_civil VARCHAR(10) NOT NULL,  -- O estado civil com maior numero de caracteres é divorciado (10)
 nome_conjuge VARCHAR(80),  
 cpf_conjuge VARCHAR(11)  
); 

CREATE TABLE corretor( 
 id_corretor SERIAL PRIMARY KEY,  
 nome_corretor VARCHAR(80) NOT NULL,  
 matricula_corretor VARCHAR(80) NOT NULL,  
 admissao_corretor DATE NOT NULL
); 

CREATE TABLE marca( 
 id_marca SERIAL PRIMARY KEY,  
 nome_marca VARCHAR(80) NOT NULL,  
 cod_marca VARCHAR(80) NOT NULL  
); 

CREATE TABLE modelo( 
 id_modelo SERIAL PRIMARY KEY,  
 cod_modelo VARCHAR(80) NOT NULL,  
 nome_modelo VARCHAR(80) NOT NULL,
 id_marca INT NOT NULL REFERENCES marca(id_marca) -- FK
); 

CREATE TABLE veiculo( 
 id_veiculo SERIAL PRIMARY KEY,  
 num_chassi VARCHAR(17) NOT NULL, -- O chassi possui universalmente 17 caracteres
 num_placa VARCHAR(80) NOT NULL,  
 cor VARCHAR(20) NOT NULL,  
 ano_fabrica DATE NOT NULL,  
 quilometragem INT NOT NULL,   
 id_modelo INT NOT NULL REFERENCES modelo(id_modelo) -- FK
); 

CREATE TABLE venda( 
 id_venda SERIAL PRIMARY KEY,  
 valor_venda FLOAT NOT NULL,  
 data_venda DATE NOT NULL,  
 comissao_corretor FLOAT NOT NULL,
 id_comprador INT NOT NULL REFERENCES comprador(id_compr), -- FK
 id_corretor INT NOT NULL REFERENCES corretor(id_corretor),  -- FK
 id_veiculo INT NOT NULL REFERENCES veiculo(id_veiculo) -- FK
); 

