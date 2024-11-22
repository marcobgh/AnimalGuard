CREATE VIEW vw_Animal_disponivel AS
SELECT 
    and_ID,
    and_esp AS especie,
    and_raç AS raca,
    and_corpred AS cor_predominante,
    and_fot AS foto,
    and_gen AS genero,
    and_nom AS nome,
    and_stats AS status,
    and_datenc AS data_encontro,
    and_desc AS descricao,
    and_endenc AS endereco_encontro,
    and_idad AS idade
FROM Animal_disponivel;

CREATE VIEW vw_Animal_perdido AS
SELECT 
    animperd_ID AS id,
    animperd_nome AS nome,
    animperd_especie AS especie,
    animperd_corpred AS cor_predominante,
    animperd_gen AS genero
FROM Animal_perdido;


CREATE VIEW vw_Avaliacao AS
SELECT 
    aval_ID AS id,
    estrela_ava AS estrelas,
    desc_ava AS descricao,
    estrsit_ava AS estrelas_site,
    feedsit_ava AS feedback_site,
    duvidsup_ava AS duvidas_suporte,
    ID_PF,
    CPF_PF
FROM Avaliacao;

CREATE VIEW vw_Categoria_FAQ AS
SELECT 
    catfaq_id AS id,
    catfaq_cat AS categoria,
    catfaq_desc AS descricao
FROM Categoria_FAQ;

CREATE VIEW vw_Clinica AS
SELECT 
    ID_cli AS id_clinica,
    CNPJ_cli AS cnpj,
    razaosocial_cli AS razao_social,
    Telefone_cli AS telefone,
    email_cli AS email,
    atendi_cli AS atendimento,
    usucriad_cli AS data_criacao
FROM Clinica;


CREATE VIEW vw_Doacao AS
SELECT 
    doa_ID AS id_doacao,
    doa_data AS data,
    doa_dest AS destino
FROM Doacao;

CREATE VIEW vw_Endereco AS
SELECT 
    end_id AS id_endereco,
    end_log AS logradouro,
    end_num AS numero,
    end_bair AS bairro,
    end_ref AS referencia,
    end_cid AS cidade,
    end_est AS estado,
    end_cep AS cep,
    ID_PF,
    CPF_PF,
    ID_cli,
    CNPJ_cli,
    razaosocial_cli,
    vet_id
FROM Endereco;


CREATE VIEW vw_FAQ AS
SELECT 
    faq_servicoferec AS servico,
    faq_categ AS categoria,
    pergunta,
    faq_resp AS resposta,
    faq_stats AS status
FROM FAQ;


CREATE VIEW vw_Veterinario AS
SELECT 
    vet_id AS id_veterinario,
    vet_cpf AS cpf,
    vet_tel AS telefone,
    vet_email AS email,
    vet_esp AS especialidade,
    Column3 AS usuario_desde,
    ID_cli,
    CNPJ_cli,
    razaosocial_cli
FROM Veterinario;

CREATE VIEW vw_FAQ_Categoria_FAQ AS
SELECT 
    catfaq_id AS id_categoria_faq
FROM FAQ_Categoria_FAQ;


CREATE VIEW vw_Usuario AS
SELECT 
    ID_PF AS id_usuario,
    Nome_PF AS nome,
    CPF_PF AS cpf,
    Nascimento_PF AS nascimento,
    genero_PF AS genero,
    Telefone_PF AS telefone,
    email_PF AS email
FROM Usuario;


































