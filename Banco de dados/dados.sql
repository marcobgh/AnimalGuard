INSERT INTO Animal_disponivel (and_esp, and_raç, and_corpred, and_fot, and_gen, and_nom, and_stats, and_datenc, and_desc, and_endenc, and_idad)
VALUES 
('Cachorro', 'Labrador', 'Dourado', 'foto1.jpg', 'M', 'Buddy', 'Disponível para adoção', '2024-11-01', 'Animal dócil e saudável encontrado em um parque', 'Parque Central, Rua Flores, 123', 3),
('Gato', 'Siamês', 'Cinza', 'foto2.jpg', 'F', 'Luna', 'Disponível para adoção', '2024-11-05', 'Gata amigável encontrada perto de uma lanchonete', 'Rua das Palmeiras, 45', 2.5);

INSERT INTO Animal_perdido (animperd_nome, animperd_especie, animperd_corpred, animperd_gen)
VALUES 
('Thor', 'Cachorro', 'Preto', 'M'),
('Mimi', 'Gato', 'Branco', 'F');

INSERT INTO Categoria_FAQ (catfaq_cat, catfaq_desc)
VALUES 
('Adoção', 'Informações sobre o processo de adoção de animais'),
('Resgate', 'Como resgatar animais e o que fazer em situações de emergência');

INSERT INTO Doacao (doa_data, doa_dest)
VALUES 
('2024-11-15', 'Abrigo Animal Esperança'),
('2024-11-20', 'ONG Amigos dos Animais');

INSERT INTO FAQ (faq_servicoferec, faq_categ, pergunta, faq_resp, faq_stats)
VALUES 
('Adoção', 'Adoção', 'Como adotar um animal?', 'Você deve preencher o formulário no site e aguardar o contato.', 1),
('Resgate', 'Resgate', 'O que fazer ao encontrar um animal ferido?', 'Entre em contato com a clínica mais próxima para orientação.', 1);

INSERT INTO FAQ_Categoria_FAQ (catfaq_id)
VALUES 
(1),
(2);

select * from usuario;

ALTER TABLE Usuario 
ALTER COLUMN CPF_PF TYPE VARCHAR(11), 
ALTER COLUMN Telefone_PF TYPE VARCHAR(15);

INSERT INTO Usuario
(ID_PF, Nome_PF, CPF_PF, Nascimento_PF, genero_PF, Telefone_PF, email_PF) 
values 
(1, 'João                                             ', 1234567890, '1990-05-10', 'masculino         ', '1198765432', 'joao@gmail.com                      '),
(2, 'Maria', '234567890', '1985-09-12', 'feminino', '1191234567', 'maria@yahoo.com'),
(3, 'Carlos Souza', '345678901', '1978-02-25', 'masculino         ', '1187654321', 'carlos@hotmail.com                 '),
(4, 'Ana Costa', '456789012', '1992-07-14', 'feminino          ', '1176543210', 'ana@gmail.com                      '),
(5, 'Paulo Almeida', '567890123', '1980-11-22', 'masculino         ', '1199988776', 'paulo@outlook.com                  '),
(6, 'Clara Lima', '678901235', '1995-04-30', 'feminino          ', '1198877665', 'clara.lima@gmail.com               '),
(7, 'Roberto Mendes', '789012345', '1983-03-15', 'masculino         ', '1197766554', 'roberto.mendes@yahoo.com           '),
(8, 'Juliana Pereira', '890123456', '1991-08-22', 'feminino          ', '1196655443', 'juliana.pereira@hotmail.com        '),
(9, 'Fernando Santos', '901234567', '1987-12-05', 'masculino         ', '1195544332', 'fernando.santos@gmail.com          '),
(10, 'Patrícia Ribeiro', '101112134', '1993-06-18', 'feminino          ', '1194433221', 'patricia.ribeiro@outlook.com       ');

DELETE FROM Usuario
WHERE ID_PF = (SELECT MIN(ID_PF) FROM Usuario);
 
INSERT INTO Avaliacao 
(estrela_ava, desc_ava, estrsit_ava, feedsit_ava, duvidsup_ava, ID_PF, CPF_PF) 
values 
('2', 'Processo de doação foi confuso e demorou mais do que o esperado.', '3', 
 'Tive dificuldades em encontrar informações', 
 'O suporte demorou para responder minhas perguntas.', 5, 5678901234);


('2', 'Processo de doação foi confuso e demorou mais do que o esperado.', '3', 
 'O site precisa de melhorias. Tive dificuldades em encontrar informações.', 
 'O suporte demorou para responder minhas perguntas.', 5, 5678901234),
('4', 'Recebi boa assistência durante o processo de doação.', '4', 
 'O site é bom, mas a busca de informações ainda pode melhorar.', 
 'Gostaria de um chat ao vivo para dúvidas rápidas.', 6, 6789012345),
('5', 'A doação foi tranquila e a equipe foi muito prestativa.', '5', 
 'Site excelente, fácil de usar e rápido.', 
 'Nenhuma dúvida. Achei tudo bem detalhado.', 7, 7890123456),
('3', 'A doação foi realizada, mas não recebi retorno imediato.', '2', 
 'O site não funciona bem no celular.', 
 'Gostaria de mais opções de contato com o suporte.', 8, 8901234567),
('4', 'O processo foi bom, mas alguns documentos foram difíceis de entender.', '3', 
 'Site prático, mas a seção de ajuda poderia ser melhor.', 
 'Não consegui encontrar informações sobre certos documentos.', 9, 9012345678),
('5', 'Muito satisfeito com o processo e a facilidade.', '5', 
 'O site é perfeito. Rápido e eficiente.', 
 'Nenhuma dúvida. Recomendo o uso.', 10, 1011121314);


('5', 'Processo rápido e eficiente. Muito satisfeito com a doação.', '4', 
 'O site é fácil de navegar, mas poderia ter mais filtros de busca.', 
 'Nenhuma dúvida. Tudo foi explicado claramente.', 1, 1234567890);
('5', 'O processo foi ágil e bem estruturado. Fiquei bastante satisfeito.', '4', 
'O site é simples de usar, mas seria bom ter mais critérios de pesquisa.', 
'Não tive dúvidas. As instruções estavam bastante claras.', 1, 1234567890);



SELECT and_nom, and_gen
FROM Animal_disponivel
WHERE and_stats = 'Disponível para adoção';

INSERT INTO Clinica 
(ID_cli, CNPJ_cli, razaosocial_cli, Telefone_cli, email_cli, atendi_cli, usucriad_cli) 
VALUES 
(4, '12345678000123', 'Clínica Veterinária Saúde Animal', '11999887766', 'contato@saudeanimal.com', 'Animais de pequeno porte', '2023-05-10');
(2, 98765432000198, 'Centro Médico Veterinário PetCare', 1198765432, 'atendimento@petcare.com', 'Animais exóticos', '2022-08-15'),
(3, 45678912300145, 'Hospital Veterinário Vida Animal', 1134567890, 'contato@vidaanimal.com.br', 'Todos os tipos de animais', '2021-11-01'),
(4, 34567891000123, 'Clínica de Animais Saúde e Bem-estar', 1145678901, 'saudeebemestar@clinicavet.com', 'Cães e gatos', '2022-02-20'),
(5, 56789012300156, 'Clínica Veterinária Mundo Animal', 1197654321, 'mundoanimal@clinica.com', 'Animais de grande porte', '2023-03-17');


INSERT INTO Clinica (ID_cli, CNPJ_cli, razaosocial_cli, Telefone_cli, email_cli, atendi_cli, usucriad_cli) 
VALUES 
(3, 758493221, 'Centro Veterinário Amigos dos Bichos', '1144556677', 'contato@amigosdosbichos.com', 'Animais de grande porte', '2023-03-20');


select * from clinica;


INSERT INTO Veterinario 
(vet_id, vet_cpf, vet_tel, vet_email, vet_esp, Column3, ID_cli, CNPJ_cli, razaosocial_cli) 
VALUES 
(4, 45678901234, 11999887766, 'dr.anavet@veterinarios.com', 'Animais silvestres', '2023-08-25', 1, 848684985, 'Veterinária Saúde Animal'),
(5, 56789012345, 11977665544, 'dr.fernandovet@gmail.com', 'Animais domésticos', '2022-12-05', 3, 999112233, 'Clínica AgroVet');

INSERT INTO Clinica  
(ID_cli, CNPJ_cli, razaosocial_cli, Telefone_cli, email_cli, atendi_cli, usucriad_cli) 
VALUES 
(4, 8428429800123, 'VetAnimal', 11999887766, 'contato@vetsaudeanimal.com', 'Animais em geral', '2022-05-10');
(3, 999112233, 'Clínica AgroVet', 11988776655, 'contato@agrovet.com', 'Animais de grande porte', '2022-07-15');
 

INSERT INTO Endereco (
    end_log, end_num, end_bair, end_ref, end_cid, end_est, end_cep, 
    ID_PF, CPF_PF, ID_cli, CNPJ_cli, razaosocial_cli, vet_id
) VALUES
    ('Rua das Flores', 123, 'Centro', 'Próximo ao supermercado', 'São Paulo', 'SP', 12345678, 1, 123456789, 1, 987654321, 'Empresa XYZ Ltda', 10);
    ('Avenida Brasil', 456, 'Jardins', 'Ao lado da farmácia', 'Rio de Janeiro', 'RJ', 87654321, 2, 234567891, 2, 876543210, 'Construtora ABC S/A', 20),
    ('Rua dos Limoeiros', 789, 'Bela Vista', NULL, 'Belo Horizonte', 'MG', 45612378, 3, 345678912, 3, 765432109, 'Tech Solutions LTDA', 30),
    ('Praça das Palmeiras', 321, 'Vila Nova', 'Em frente à padaria', 'Curitiba', 'PR', 65432187, 4, 456789123, 4, 654321098, 'Clínica Vida SA', 40),
    ('Travessa das Acácias', 654, 'Morumbi', 'Próximo ao shopping', 'Porto Alegre', 'RS', 78945612, 5, 567891234, 5, 543210987, 'Indústria de Alimentos LTDA', 50);


INSERT INTO Veterinario (vet_id, vet_cpf, vet_tel, vet_email, vet_esp, Column3, ID_cli, CNPJ_cli, razaosocial_cli) VALUES
(2, 12345678, 4996882478, 'veterinario1@email.com', 'Animais de pequeno porte', '2015-03-15', 2, 123456789, 'Clínica Animal Feliz');

(6, 444555666, 998776655, 'veterinario2@email.com', 'Animais exóticos', '2018-06-20', 2, 987654321, 'Veterinária Exóticos LTDA'),
(7, 777888999, 997665544, 'veterinario3@email.com', 'Animais de grande porte', '2020-01-10', 3, 456789123, 'Clínica Rural'),
(8, 333444555, 996554433, 'veterinario4@email.com', 'Animais silvestres', '2016-11-05', 4, 123123123, 'Fauna Selvagem LTDA'),
(9, 666777888, 995443322, 'veterinario5@email.com', 'Generalista', '2017-09-25', 5, 321321321, 'Clínica Geral Animal S/A');
 
INSERT INTO Endereco (end_log, end_num, end_bair, end_ref, end_cid, end_est, end_cep, ID_PF, CPF_PF, ID_cli, CNPJ_cli, razaosocial_cli, vet_id) VALUES
('Rua das Flores', 123, 'Centro', 'Próximo ao supermercado', 'São Paulo', 'SP', 12345678, 1, 123456789, 1, 123456789, 'Clínica Animal Feliz', 1),
('Avenida Brasil', 456, 'Jardins', 'Ao lado da farmácia', 'Rio de Janeiro', 'RJ', 87654321, 2, 987654321, 2, 987654321, 'Veterinária Exóticos LTDA', 2),
('Rua dos Limoeiros', 789, 'Bela Vista', NULL, 'Belo Horizonte', 'MG', 45612378, 3, 456789123, 3, 456789123, 'Clínica Rural', 3),
('Praça das Palmeiras', 321, 'Vila Nova', 'Em frente à padaria', 'Curitiba', 'PR', 65432187, 4, 123123123, 4, 123123123, 'Fauna Selvagem LTDA', 4),
('Travessa das Acácias', 654, 'Morumbi', 'Próximo ao shopping', 'Porto Alegre', 'RS', 78945612, 5, 321321321, 5, 321321321, 'Clínica Geral Animal S/A', 5);
 
