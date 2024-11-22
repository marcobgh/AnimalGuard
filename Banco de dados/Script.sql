CREATE TABLE Animal_disponivel (
  and_ID      SERIAL NOT NULL, 
  and_esp     varchar(100) UNIQUE, 
  and_raç     varchar(100), 
  and_corpred varchar(255) NOT NULL, 
  and_fot     varchar(255), 
  and_gen     varchar(50) NOT NULL, 
  and_nom     varchar(100), 
  and_stats   varchar(100) NOT NULL, 
  and_datenc  date NOT NULL, 
  and_desc    varchar(255) NOT NULL, 
  and_endenc  varchar(255) NOT NULL, 
  and_idad    float4, 
  PRIMARY KEY (and_ID));
COMMENT ON COLUMN Animal_disponivel.and_ID IS 'id do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_esp IS 'espécie do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_raç IS 'raça do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_corpred IS 'cor predominante do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_fot IS 'fotografias do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_gen IS 'genero do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_nom IS 'nome do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_stats IS 'Status do animal disponível';
COMMENT ON COLUMN Animal_disponivel.and_datenc IS 'data do encontro com o animal';
COMMENT ON COLUMN Animal_disponivel.and_desc IS 'descrição do animal encontrado⁄disponível';
COMMENT ON COLUMN Animal_disponivel.and_endenc IS 'endereço do encontro com o animal';
COMMENT ON COLUMN Animal_disponivel.and_idad IS 'idade média do animal perdido';
CREATE TABLE Animal_perdido (
  animperd_ID      SERIAL NOT NULL, 
  animperd_nome    varchar(50), 
  animperd_especie varchar(50) NOT NULL, 
  animperd_corpred char(25) NOT NULL, 
  animperd_gen     varchar(50) NOT NULL, 
  animperd_        int4, 
  PRIMARY KEY (animperd_ID));
COMMENT ON TABLE Animal_perdido IS 'informações principais dos animais perdidos';
COMMENT ON COLUMN Animal_perdido.animperd_nome IS 'nome do animal perdido';
COMMENT ON COLUMN Animal_perdido.animperd_especie IS 'Especie do animal perdido';
COMMENT ON COLUMN Animal_perdido.animperd_corpred IS 'cor predonimante do animal perdido';
COMMENT ON COLUMN Animal_perdido.animperd_gen IS 'genero do animal perdido
enum("M", "F", "O", "SI")';
CREATE TABLE Avaliacao (
  aval_ID      SERIAL NOT NULL, 
  estrela_ava  varchar(50), 
  desc_ava     varchar(255), 
  estrsit_ava  varchar(50), 
  feedsit_ava  varchar(255), 
  duvidsup_ava varchar(255), 
  ID_PF        int2 NOT NULL, 
  CPF_PF       int4 NOT NULL, 
  PRIMARY KEY (aval_ID));
COMMENT ON TABLE Avaliacao IS 'avaliação dos usuários sobre as doações';
COMMENT ON COLUMN Avaliacao.aval_ID IS 'id da avaliação do cliente';
COMMENT ON COLUMN Avaliacao.estrela_ava IS 'quantidade de estrelas do processo de doação
enum("1", "2", "3", "4", "5")';
COMMENT ON COLUMN Avaliacao.desc_ava IS 'descrição da doação dos usuários';
COMMENT ON COLUMN Avaliacao.estrsit_ava IS 'quantidade de estrelas do site
enum("1", "2", "3", "4", "5")';
COMMENT ON COLUMN Avaliacao.feedsit_ava IS 'feeback do site
o que achou dele, qualidade, processo, facilidade da de uso';
COMMENT ON COLUMN Avaliacao.duvidsup_ava IS 'dúvidas sobre o processo, site 
dúvidas gerais 
suporte';
CREATE TABLE Categoria_FAQ (
  catfaq_id   SERIAL NOT NULL, 
  catfaq_cat  varchar(50), 
  catfaq_desc varchar(255) NOT NULL, 
  PRIMARY KEY (catfaq_id));
COMMENT ON TABLE Categoria_FAQ IS 'categorias das perguntas do FAQ (Frequently Asked Questions)';
COMMENT ON COLUMN Categoria_FAQ.catfaq_id IS 'ID da categoria do FAQ Frequently Asked Questions';
COMMENT ON COLUMN Categoria_FAQ.catfaq_cat IS 'titulo da categoria do FAQ(Frequently Asked Questions)';
COMMENT ON COLUMN Categoria_FAQ.catfaq_desc IS 'Descrição da categoria do FAQ(Frequently Asked Questions)';
CREATE TABLE Clinica (
  ID_cli          int2 NOT NULL UNIQUE, 
  CNPJ_cli        int4 NOT NULL UNIQUE, 
  razaosocial_cli varchar(255) NOT NULL UNIQUE, 
  Telefone_cli    int4, 
  email_cli       char(50) UNIQUE, 
  atendi_cli      varchar(50) NOT NULL, 
  usucriad_cli    date NOT NULL, 
  PRIMARY KEY (ID_cli, 
  CNPJ_cli, 
  razaosocial_cli));
COMMENT ON COLUMN Clinica.CNPJ_cli IS 'CNPJ da empresa cadastrada
CNPJ da pessoa jurídica';
COMMENT ON COLUMN Clinica.razaosocial_cli IS 'razão social da empresa
razão social da pessoa jurídica';
COMMENT ON COLUMN Clinica.Telefone_cli IS 'telefone da empresa';
COMMENT ON COLUMN Clinica.email_cli IS 'E-mail da empresa';
COMMENT ON COLUMN Clinica.atendi_cli IS 'área de atendimento da clinica
para quais animais';
COMMENT ON COLUMN Clinica.usucriad_cli IS 'data de criação do usuário da clinica';
CREATE TABLE Doacao (
  doa_ID   SERIAL NOT NULL, 
  doa_data date NOT NULL, 
  doa_dest varchar(255) NOT NULL, 
  PRIMARY KEY (doa_ID));
COMMENT ON COLUMN Doacao.doa_ID IS 'id da doação';
COMMENT ON COLUMN Doacao.doa_data IS 'data da doação';
COMMENT ON COLUMN Doacao.doa_dest IS 'destino da doação';
CREATE TABLE Endereco (
  end_id          SERIAL NOT NULL, 
  end_log         varchar(255) NOT NULL, 
  end_num         float4 NOT NULL, 
  end_bair        varchar(50) NOT NULL, 
  end_ref         varchar(255), 
  end_cid         varchar(100) NOT NULL, 
  end_est         varchar(100) NOT NULL, 
  end_cep         float4 NOT NULL, 
  ID_PF           int2 NOT NULL, 
  CPF_PF          int4 NOT NULL, 
  ID_cli          int2 NOT NULL, 
  CNPJ_cli        int4 NOT NULL, 
  razaosocial_cli varchar(255) NOT NULL, 
  vet_id          int2 NOT NULL, 
  PRIMARY KEY (end_id));
COMMENT ON COLUMN Endereco.end_id IS 'id do endereço';
COMMENT ON COLUMN Endereco.end_log IS 'Logradouro do endereço';
COMMENT ON COLUMN Endereco.end_num IS 'número do endereço';
COMMENT ON COLUMN Endereco.end_bair IS 'bairro do endereço';
COMMENT ON COLUMN Endereco.end_ref IS 'referência para localizar o endereço';
COMMENT ON COLUMN Endereco.end_cid IS 'cidade do endereço';
COMMENT ON COLUMN Endereco.end_est IS 'estado do endereço';
COMMENT ON COLUMN Endereco.end_cep IS 'cep do endereço';
CREATE TABLE FAQ (
  faq_servicoferec varchar(255) NOT NULL, 
  faq_categ        varchar(50) NOT NULL, 
  pergunta         varchar(255), 
  faq_resp         varchar(255) NOT NULL, 
  faq_stats        int4 NOT NULL);
COMMENT ON TABLE FAQ IS 'FAQ - Frequently Asked Questions
Perguntas frequentes';
COMMENT ON COLUMN FAQ.faq_categ IS 'categoria da pergunta feita';
COMMENT ON COLUMN FAQ.pergunta IS 'qual pergunta foi feita no FAQ';
COMMENT ON COLUMN FAQ.faq_resp IS 'Reposta referente a pergunta feita no FAQ';
COMMENT ON COLUMN FAQ.faq_stats IS 'Status das perguntas e respostas feitas no FAQ';
CREATE TABLE FAQ_Categoria_FAQ (
  catfaq_id int2 NOT NULL, 
  PRIMARY KEY (catfaq_id));
CREATE TABLE Usuario (
  ID_PF         int2 NOT NULL UNIQUE, 
  Nome_PF       char(50) NOT NULL UNIQUE, 
  CPF_PF        int4 NOT NULL UNIQUE, 
  Nascimento_PF date, 
  genero_PF     char(25), 
  Telefone_PF   int4, 
  email_PF      char(50) UNIQUE, 
  PRIMARY KEY (ID_PF, 
  CPF_PF));
COMMENT ON COLUMN Usuario.ID_PF IS 'ID da pessoa cadastrada';
COMMENT ON COLUMN Usuario.Nome_PF IS 'Nome da pessoa cadastrada';
COMMENT ON COLUMN Usuario.CPF_PF IS 'Cpf da pessoa cadastrada';
COMMENT ON COLUMN Usuario.Nascimento_PF IS 'Nascimento da pessoa';
COMMENT ON COLUMN Usuario.genero_PF IS 'genero da pessoa
configurar para colocar masculino feminino, outro, não informado
enum("masculino", "feminino", "outro", "nao informado")';
COMMENT ON COLUMN Usuario.Telefone_PF IS 'contato celular da pessoa';
COMMENT ON COLUMN Usuario.email_PF IS 'email da pessoa';
CREATE TABLE Veterinario (
  vet_id          SERIAL NOT NULL, 
  vet_cpf         float4 NOT NULL UNIQUE, 
  vet_tel         float4, 
  vet_email       varchar(50) NOT NULL, 
  vet_esp         varchar(50) NOT NULL, 
  Column3         date NOT NULL, 
  ID_cli          int2 NOT NULL, 
  CNPJ_cli        int4 NOT NULL, 
  razaosocial_cli varchar(255) NOT NULL, 
  PRIMARY KEY (vet_id));
 
 
COMMENT ON COLUMN Veterinario.vet_id IS 'id do veterinário';
COMMENT ON COLUMN Veterinario.vet_cpf IS 'cpf do veterinario cadastrado';
COMMENT ON COLUMN Veterinario.vet_tel IS 'Telefone do veterinário';
COMMENT ON COLUMN Veterinario.vet_email IS 'email do veterinário';
COMMENT ON COLUMN Veterinario.vet_esp IS 'especialidade do veterinário
animais especializados';
COMMENT ON COLUMN Veterinario.Column3 IS 'é usuário desde qual periodo';
ALTER TABLE Endereco ADD CONSTRAINT FKEndereco399544 FOREIGN KEY (vet_id) REFERENCES Veterinario (vet_id);
ALTER TABLE Endereco ADD CONSTRAINT FKEndereco512327 FOREIGN KEY (ID_cli, CNPJ_cli, razaosocial_cli) REFERENCES Clinica (ID_cli, CNPJ_cli, razaosocial_cli);
ALTER TABLE Veterinario ADD CONSTRAINT FKVeterinari432396 FOREIGN KEY (ID_cli, CNPJ_cli, razaosocial_cli) REFERENCES Clinica (ID_cli, CNPJ_cli, razaosocial_cli);
ALTER TABLE Endereco ADD CONSTRAINT FKEndereco952779 FOREIGN KEY (ID_PF, CPF_PF) REFERENCES Usuario (ID_PF, CPF_PF);
ALTER TABLE Avaliacao ADD CONSTRAINT FKAvaliacao442934 FOREIGN KEY (ID_PF, CPF_PF) REFERENCES Usuario (ID_PF, CPF_PF);
ALTER TABLE FAQ_Categoria_FAQ ADD CONSTRAINT FKFAQ_Catego489180 FOREIGN KEY (catfaq_id) REFERENCES Categoria_FAQ (catfaq_id);
ALTER TABLE FAQ_Categoria_FAQ ADD CONSTRAINT FKFAQ_Catego349552 FOREIGN KEY () REFERENCES FAQ ();