USE clinica_vitalis;

-- Atualizar telefone do paciente
UPDATE Paciente SET telefone = '11999990000' WHERE id_paciente = 1;

-- Atualizar motivo da consulta
UPDATE Consulta SET motivo = 'Reavaliação cardíaca' WHERE id_consulta = 1;

-- Atualizar email de um médico
UPDATE Medico SET email = 'fernando.reis@vitalis.com' WHERE id_medico = 1;
