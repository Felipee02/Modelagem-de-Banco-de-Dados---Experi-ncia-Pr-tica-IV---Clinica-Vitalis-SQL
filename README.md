💙 Clínica Vitalis — Projeto SQL
Experiência Prática IV – Implementação e Manipulação de Dados com SQL

Este repositório contém a implementação completa do banco de dados “Clínica Vitalis”, baseado no modelo lógico desenvolvido nas atividades anteriores do projeto de Banco de Dados.
Aqui você encontrará todos os scripts SQL necessários para criação, povoamento e manipulação dos dados do sistema, além das instruções de execução.

📌 1. Objetivo da Atividade 4

Implementar e manipular dados utilizando comandos SQL, aplicando:

Criação de tabelas (DDL)

Inserção de dados (DML – INSERT)

Consultas avançadas (SELECT, JOIN, ORDER BY, LIMIT…)

Atualizações (UPDATE)

Exclusões (DELETE)

Tudo isso de forma coerente com o modelo lógico do minimundo da clínica médica.

🏥 2. Descrição do Minímuno (Resumo)

A Clínica Vitalis realiza atendimentos médicos, registrando:

Pacientes

Médicos

Especialidades

Associações entre médicos e especialidades

Consultas médicas

Entradas de prontuário

Exames solicitados

Os dados acima foram convertidos em um modelo lógico relacional, com suas chaves primárias, estrangeiras e integridade referencial.

🗂 3. Estrutura do Repositório
/
│── 01_create_tables.sql
│── 02_insert_data.sql
│── 03_selects.sql
│── 04_updates.sql
│── 05_deletes.sql
│── README.md

🧱 4. Script de Criação das Tabelas (DDL)

Arquivo: 01_create_tables.sql
Contém:

Criação do banco clinica_vitalis

Criação de todas as tabelas

PKs, FKs, relacionamentos e restrições

🧪 5. Script de Inserção de Dados (INSERT)

Arquivo: 02_insert_data.sql

Contém dados realistas e coerentes:

Pacientes

Médicos

Especialidades

Relação Médico↔Especialidade

Consultas

Anotações de prontuário

Exames solicitados

🔍 6. Script de Consultas (SELECT)

Arquivo: 03_selects.sql

Inclui:

SELECT com ORDER BY

JOIN entre Paciente, Medico e Consulta

SELECT com WHERE

LIMIT

Consulta de médicos por especialidade

✏️ 7. Script de Atualizações (UPDATE)

Arquivo: 04_updates.sql

Com 3 comandos UPDATE usando condições reais.

🗑 8. Script de Exclusões (DELETE)

Arquivo: 05_deletes.sql

Com 3 operações DELETE devidamente condicionadas.

🧭 9. Ordem Recomendada de Execução

Executar 01_create_tables.sql

Executar 02_insert_data.sql

Executar 03_selects.sql (consultas opcionais)

Executar 04_updates.sql

Executar 05_deletes.sql

🛠️ 10. Como executar

MySQL Workbench

DBeaver

HeidiSQL

Terminal MySQL

Todos os arquivos foram escritos no padrão MySQL 8.0.

🧩 11. DER (Modelo Lógico)

O diagrama utilizado nesta AT4 é o mesmo entregue na AT3.

📬 12. Autor

Projeto desenvolvido por Bryan Felipe Martins Rodrigues CRUZ_EAD_Cst em Análise e Desenvolvimento de Sistemas_1A_20252, como parte da Experiência Prática IV da disciplina: Modelagem de Banco de Dados.
