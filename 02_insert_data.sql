USE clinica_vitalis;

-- Pacientes
INSERT INTO Paciente (nome, cpf, data_nascimento, telefone, email) VALUES
('Lucas Andrade', '123.456.789-00', '1995-03-10', '11987654321', 'lucas@gmail.com'),
('Maria Silva', '987.654.321-00', '1988-07-22', '11988776655', 'maria@gmail.com');

-- Médicos
INSERT INTO Medico (nome, crm, telefone, email) VALUES
('Dr. Fernando Reis', 'CRM12345', '11944556677', 'fernando@vitalis.com'),
('Dra. Ana Viana', 'CRM67890', '11999887766', 'ana.viana@vitalis.com');

-- Especialidades
INSERT INTO Especialidade (nome) VALUES
('Cardiologia'),
('Ortopedia'),
('Dermatologia');

-- Médicos por especialidade
INSERT INTO MedicoEspecialidade VALUES
(1, 1), -- Dr Fernando → Cardiologia
(2, 3); -- Dra Ana → Dermatologia

-- Consultas
INSERT INTO Consulta (id_paciente, id_medico, data_consulta, motivo) VALUES
(1, 1, '2025-01-15 09:00:00', 'Dor no peito'),
(2, 2, '2025-01-20 14:30:00', 'Alergia na pele');

-- Prontuário
INSERT INTO ProntuarioEntrada (id_consulta, anotacao, data_registro) VALUES
(1, 'Paciente relatou dor intensa ao respirar.', '2025-01-15 09:20:00'),
(2, 'Lesões avermelhadas na região do braço.', '2025-01-20 14:45:00');

-- Exames solicitados
INSERT INTO ExameSolicitado (id_consulta, tipo_exame, observacoes) VALUES
(1, 'Eletrocardiograma', 'Solicitado urgente'),
(2, 'Teste de alergia', 'Verificar substâncias específicas');
