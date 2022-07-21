CREATE TABLE Email (
idEmail SERIAL NOT NULL,
email VARCHAR(40),
PRIMARY KEY(idEmail));

CREATE TABLE Endereco (
idEndereco SERIAL NOT NULL,
logradouro VARCHAR(20),
numero INTEGER,
complemento VARCHAR(20),
bairro VARCHAR(20),
cidade VARCHAR(20),
UF VARCHAR(2),
CEP VARCHAR(8),
PRIMARY KEY(idEndereco));

CREATE TABLE Telefone (
idTelefone SERIAL NOT NULL,
telefone VARCHAR(9),
DDD VARCHAR(2),
PRIMARY KEY(idTelefone));

CREATE TABLE Editora (
idEditora SERIAL NOT NULL,
nomeEditora VARCHAR(20),
PRIMARY KEY(idEditora));

CREATE TABLE Autor (
idAutor SERIAL NOT NULL,
nomeAutor VARCHAR(25),
PRIMARY KEY(idAutor));

CREATE TABLE Livro (
idLivro SERIAL NOT NULL,
Autor_idAutor INTEGER NOT NULL,
Editora_idEditora INTEGER NOT NULL,
tituloLivro VARCHAR(45),
statusLivro VARCHAR(20) CHECK (statusLivro = 'Disponível' or statusLivro = 'Indisponível'),
ISBN VARCHAR(13),
dataAquisicaoLivro DATE,
PRIMARY KEY(idLivro),
FOREIGN KEY(Editora_idEditora)
	REFERENCES Editora(idEditora),
FOREIGN KEY(Autor_idAutor)
	REFERENCES Autor(idAutor));

CREATE TABLE Cliente (
idCliente SERIAL NOT NULL,
Email_idEmail INTEGER NOT NULL,
Telefone_idTelefone INTEGER NOT NULL,
Endereco_idEndereco INTEGER NOT NULL,
nomeCliente VARCHAR(50),
cpfCliente VARCHAR(11),
dataNascimentoCliente DATE,
PRIMARY KEY(idCliente),
FOREIGN KEY(Endereco_idEndereco)
	REFERENCES Endereco(idEndereco),
FOREIGN KEY(Telefone_idTelefone)
	REFERENCES Telefone(idTelefone),
FOREIGN KEY(Email_idEmail)
	REFERENCES Email(idEmail));

CREATE TABLE Funcionario (
idFuncionario SERIAL NOT NULL,
Email_idEmail INTEGER NOT NULL,
Telefone_idTelefone INTEGER NOT NULL,
Endereco_idEndereco INTEGER NOT NULL,
nomeFuncionario VARCHAR(50),
cpfFuncionario VARCHAR(11),
dataNascimentoFuncionario DATE,
generoFuncionario VARCHAR(20),
numeroPisFuncionario VARCHAR(11),
cargoFuncionario VARCHAR(20),
dataAdmissaoFuncionario DATE,
salarioFuncionario REAL,
PRIMARY KEY(idFuncionario),
FOREIGN KEY(Endereco_idEndereco)
	REFERENCES Endereco(idEndereco),
FOREIGN KEY(Telefone_idTelefone)
	REFERENCES Telefone(idTelefone),
FOREIGN KEY(Email_idEmail)
	REFERENCES Email(idEmail));

CREATE TABLE Fornecedor (
idFornecedor SERIAL NOT NULL,
Email_idEmail INTEGER NOT NULL,
Telefone_idTelefone INTEGER NOT NULL,
Endereco_idEndereco INTEGER NOT NULL,
razaoSocial VARCHAR(20),
cnpjFornecedor VARCHAR(14),
PRIMARY KEY(idFornecedor),
FOREIGN KEY(Endereco_idEndereco)
	REFERENCES Endereco(idEndereco),
FOREIGN KEY(Telefone_idTelefone)
	REFERENCES Telefone(idTelefone),
FOREIGN KEY(Email_idEmail)
	REFERENCES Email(idEmail));

CREATE TABLE Exemplar (
idExemplar SERIAL NOT NULL,
Livro_idLivro INTEGER NOT NULL,
quantidadeExemplar INTEGER NOT NULL,
idiomaExemplar VARCHAR(20),
anoExemplar INTEGER,
generoExemplar VARCHAR(100),
edicaoExemplar INTEGER,
PRIMARY KEY(idExemplar),
FOREIGN KEY(Livro_idLivro)
	REFERENCES Livro(idLivro));

CREATE TABLE Requisicao (
idRequisicao SERIAL NOT NULL,
Funcionario_idFuncionario INTEGER NOT NULL,
dataRequisicao DATE CHECK (dataRequisicao >= CURRENT_DATE),
statusRequisicao VARCHAR(12) CHECK (statusRequisicao = 'Aberta' or statusRequisicao = 'Fechada'),
PRIMARY KEY(idRequisicao),
FOREIGN KEY(Funcionario_idFuncionario)
	REFERENCES Funcionario(idFuncionario));

CREATE TABLE Compra (
idCompra SERIAL NOT NULL,
Fornecedor_idFornecedor INTEGER NOT NULL,
Requisicao_idRequisicao INTEGER NOT NULL,
quantidadeCompra INTEGER,
precoCompra FLOAT,
tituloLivroCompra VARCHAR(45),
PRIMARY KEY(idCompra),
FOREIGN KEY(Requisicao_idRequisicao)
	REFERENCES Requisicao(idRequisicao),
FOREIGN KEY(Fornecedor_idFornecedor)
	REFERENCES Fornecedor(idFornecedor));

CREATE TABLE Emprestimo (
idEmprestimo SERIAL NOT NULL,
Livro_idLivro INTEGER NOT NULL,
Funcionario_idFuncionario INTEGER NOT NULL,
Cliente_idCliente INTEGER NOT NULL,
dataEmprestimo DATE,
dataDevolucao DATE,
PRIMARY KEY(idEmprestimo),
FOREIGN KEY(Cliente_idCliente)
	REFERENCES Cliente(idCliente),
FOREIGN KEY(Funcionario_idFuncionario)
	REFERENCES Funcionario(idFuncionario),
FOREIGN KEY(Livro_idLivro)
	REFERENCES Livro(idLivro));

CREATE TABLE Multa (
idMulta SERIAL NOT NULL,
Emprestimo_idEmprestimo INTEGER NOT NULL,
dataMulta DATE,
motivoMulta VARCHAR(30),
valorMulta REAL,
PRIMARY KEY(idMulta),
FOREIGN KEY(Emprestimo_idEmprestimo)
	REFERENCES Emprestimo(idEmprestimo));
