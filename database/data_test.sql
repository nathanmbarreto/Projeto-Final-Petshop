-- ============================
-- Tutores

INSERT INTO tutores (nome, telefone, email, endereco) VALUES
('Carlos Silva', '51999999999', 'carlos.silva@email.com', 'Rua das Flores, 123'),
('Ana Souza', '51988888888', 'ana.souza@email.com', 'Av. Central, 456'),
('Mariana Costa', '51977777777', 'mariana.costa@email.com', 'Rua das Palmeiras, 789');

-- ============================
-- Pets

INSERT INTO pets (nome, especie, raca, data_nascimento, id_tutor) VALUES
('Rex', 'Cachorro', 'Labrador', '2020-05-10', 1),
('Mimi', 'Gato', 'Persa', '2019-08-22', 2),
('Thor', 'Cachorro', 'Bulldog', '2021-01-15', 1),
('Luna', 'Gato', 'Siamês', '2022-03-05', 3);

-- ============================
-- Medicações

INSERT INTO medicacoes (nome, descricao) VALUES
('Antibiótico X', 'Usado para tratar infecções bacterianas'),
('Vermífugo Y', 'Controle de parasitas internos'),
('Anti-inflamatório Z', 'Reduz inflamações e dores');

-- ============================
-- Histórico de Medicação

INSERT INTO historico_medicacao (id_pet, id_medicacao, data_inicio, data_fim, observacoes) VALUES
(1, 1, '2023-01-10', '2023-01-20', 'Tratamento concluído com sucesso'),
(2, 2, '2023-02-05', NULL, 'Em uso contínuo'),
(3, 3, '2023-03-01', '2023-03-10', 'Recuperação rápida');

-- ============================
-- Vacinas

INSERT INTO vacinas (nome, descricao) VALUES
('Vacina Antirrábica', 'Proteção contra raiva'),
('Vacina V8', 'Proteção contra múltiplas doenças caninas'),
('Vacina Tríplice Felina', 'Proteção contra doenças felinas');

-- ============================
-- Histórico de Vacinação

INSERT INTO historico_vacinacao (id_pet, id_vacina, data_aplicacao, proxima_dose) VALUES
(1, 1, '2023-03-15', '2024-03-15'),
(2, 3, '2023-04-20', '2023-10-20'),
(3, 2, '2023-05-05', '2024-05-05'),
(4, 3, '2023-06-12', NULL);

-- ============================
-- Agendamentos

INSERT INTO agendamentos (id_pet, tipo_servico, data_hora, status) VALUES
(1, 'Banho e Tosa', '2023-05-10 14:00:00', 'pendente'),
(2, 'Consulta Veterinária', '2023-05-12 10:30:00', 'concluído'),
(3, 'Vacinação', '2023-05-20 09:00:00', 'pendente'),
(4, 'Check-up', '2023-05-25 11:00:00', 'cancelado');
