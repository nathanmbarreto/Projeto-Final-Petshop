-- ============================
-- Tabela Tutores

CREATE TABLE tutores (
    id_tutor BIGSERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    endereco VARCHAR(200)
)

-- ============================
-- Tabela Pets

CREATE TABLE pets (
    id_pet SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    data_nascimento DATE,
    id_tutor INT NOT NULL,
    CONSTRAINT fk_tutor FOREIGN KEY (id_tutor) REFERENCES tutores (id_tutor)
);

-- ============================
-- Tabela Medicações

CREATE TABLE medicacoes (
    id_medicacao SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);

-- ============================
-- Tabela Historico de Medicacao

CREATE TABLE historico_medicacao (
    id_hist_medicacao SERIAL PRIMARY KEY,
    id_pet INT NOT NULL,
    id_medicacao INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    observacoes TEXT,
    CONSTRAINT fk_pet_medicacao FOREIGN KEY (id_pet) REFERENCES pets (id_pet),
    CONSTRAINT fk_medicacao FOREIGN KEY (id_medicacao) REFERENCES medicacoes (id_medicacao)
);

-- ============================
-- Tabela Vacinas

CREATE TABLE vacinas (
    id_vacina SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);

-- ============================
-- Tabela Historico de Vacinacao

CREATE TABLE historico_vacinacao (
    id_vacinacao SERIAL PRIMARY KEY,
    id_pet INT NOT NULL,
    id_vacina INT NOT NULL,
    data_aplicacao DATE NOT NULL,
    proxima_dose DATE,
    CONSTRAINT fk_pet_vacina FOREIGN KEY (id_pet) REFERENCES pets (id_pet),
    CONSTRAINT fk_vacina FOREIGN KEY (id_vacina) REFERENCES vacinas (id_vacina)
);

-- ============================
-- Tabela Agendamentos

CREATE TABLE agendamentos (
    id_agendamento SERIAL PRIMARY KEY,
    id_pet INT NOT NULL,
    tipo_servico VARCHAR(50) NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(20) DEFAULT 'pendente',
    CONSTRAINT fk_pet_agendamento FOREIGN KEY (id_pet) REFERENCES pets (id_pet)
);
