USE clinica_vitalis;

-- 1. Consultar todos os pacientes ordenados por nome
SELECT * FROM Paciente ORDER BY nome;

-- 2. Consultar todas as consultas com nome do médico e paciente
SELECT c.id_consulta, p.nome AS paciente, m.nome AS medico, c.data_consulta
FROM Consulta c
JOIN Paciente p ON p.id_paciente = c.id_paciente
JOIN Medico m ON m.id_medico = c.id_medico;

-- 3. Consultar apenas exames solicitados após uma data
SELECT * FROM ExameSolicitado
WHERE id_consulta = 1;

-- 4. Médicos com suas especialidades
SELECT m.nome, e.nome AS especialidade
FROM MedicoEspecialidade me
JOIN Medico m ON m.id_medico = me.id_medico
JOIN Especialidade e ON e.id_especialidade = me.id_especialidade;

-- 5. Limitar os primeiros 3 pacientes cadastrados
SELECT * FROM Paciente LIMIT 3;
