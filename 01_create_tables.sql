CREATE DATABASE IF NOT EXISTS clinica_vitalis;
USE clinica_vitalis;

-- ===========================
-- Tabela: Paciente
-- ===========================
CREATE TABLE Paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- ===========================
-- Tabela: Medico
-- ===========================
CREATE TABLE Medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- ===========================
-- Tabela: Especialidade
-- ===========================
CREATE TABLE Especialidade (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- ===========================
-- Tabela: MedicoEspecialidade (tabela associativa)
-- ===========================
CREATE TABLE MedicoEspecialidade (
    id_medico INT,
    id_especialidade INT,
    PRIMARY KEY (id_medico, id_especialidade),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

-- ===========================
-- Tabela: Consulta
-- ===========================
CREATE TABLE Consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATETIME NOT NULL,
    motivo VARCHAR(255),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

-- ===========================
-- Tabela: ProntuarioEntrada
-- ===========================
CREATE TABLE ProntuarioEntrada (
    id_prontuario INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    anotacao TEXT NOT NULL,
    data_registro DATETIME NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

-- ===========================
-- Tabela: ExameSolicitado
-- ===========================
CREATE TABLE ExameSolicitado (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    tipo_exame VARCHAR(100) NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);
