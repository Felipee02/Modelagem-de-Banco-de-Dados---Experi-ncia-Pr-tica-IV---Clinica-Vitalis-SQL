USE clinica_vitalis;

-- Apagar exame solicitado
DELETE FROM ExameSolicitado WHERE id_exame = 1;

-- Apagar anotação do prontuário
DELETE FROM ProntuarioEntrada WHERE id_prontuario = 2;

-- Apagar uma especialidade não usada
DELETE FROM Especialidade WHERE id_especialidade = 2;  -- Ortopedia
