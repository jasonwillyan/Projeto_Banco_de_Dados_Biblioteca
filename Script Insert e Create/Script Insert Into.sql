-- Insert's para Editora 

INSERT INTO Editora(nomeEditora) VALUES 
('Principis'),			-- id = 1 
('Faro Editorial'),		-- id = 2 
('Casa dos Livros'), 	-- id = 3 
('Rocco'), 				-- id = 4 
('Editora Arqueiro'); 	-- id = 5 

-- Insert's para Autor 

INSERT INTO Autor(nomeAutor) VALUES 
('Sun Tzu'), 					-- id = 1 
('Charlie Donlea'), 			-- id = 2 
('Anne Frank'),					-- id = 3 
('Antoine de Saint-Exupéry'), 	-- id = 4 
('Carolina Kepnes'), 			-- id = 5 
('John Grisham'); 				-- id = 6 

-- Insert's para Publicação 

INSERT INTO Livro(Autor_idAutor, Editora_idEditora, tituloLivro, statusLivro, ISBN, dataAquisicaoLivro) VALUES 
(1, 1, 'A arte da guerra', 'Disponível', '9788594318596', '12/08/2020'),           -- id = 7 
(2, 2, 'A garota do lago', 'Disponível', '9788562409882', '05/01/2019'),           -- id = 8 
(3, 1, 'O diário de Anne Frank', 'Indisponível', '9786550970406', '13/09/2021'),   -- id = 9 
(4, 3, 'O Pequeno Príncipe', 'Disponível', '9788522005239', '02/12/2013'),         -- id = 10 
(5, 4, 'Você', 'Disponível', '9788532530943', '26/08/2019'),                       -- id = 11 
(6, 5, 'O dossiê pelicano', 'Indisponível', '9788530601232', '09/09/2021');        -- id = 12 

-- Insert's para Exemplar 

INSERT INTO Exemplar(Livro_idLivro, quantidadeExemplar, idiomaExemplar, anoExemplar, generoExemplar, edicaoExemplar) VALUES 
(7, 2, 'Português', 2019, 'Tratado, Não ficção', 3),                                                                            -- id = 1 
(8, 6, 'Português', 2017, 'Suspense, Ficção, Mistério, Policial processual, Suspense psicológico', 1),                          -- id = 2 
(9, 12, 'Português', 2020, 'Biografia, Autobiografia, Narrativa pessoal, Literatura judaica', 6),                               -- id = 3 
(10, 4, 'Português', 2013, 'Literatura infantil, Fábula, Novela, Ficção especulativa', 18),                                      -- id = 4 
(11, 7, 'Português', 2018, 'Ficção, Suspense', 1),                                                                               -- id = 5 
(12, 2, 'Português', 2020, 'Ação. Thriller político, Drama, Drama judicial, Suspense, Crime, Mistério, Adaptação, Aventura', 1); -- id = 6 

-- Insert's para Endereço 

INSERT INTO Endereco(logradouro, numero, complemento, bairro, cidade, UF, CEP) VALUES 
('Rua Jardim', 12, 'Casa', 'Rosa dos Ventos', 'Parnamirim', 'RN', '59145888'),  -- id = 1 
('Rua Sarinho', 501, 'Apartamento 12', 'Neópolis', 'Natal', 'RN', '05987222'),  -- id = 2 
('Rua Domingo', 25, 'Casa', 'Lagoa Nova', 'Natal', 'RN', '55987223'),           -- id = 3 
('Rua dos Monges', 366, 'Casa', 'Petropolis', 'Natal', 'RN', '45236784'),       -- id = 4 
('Rua Persa', 90, 'Apartamento 45', 'Bom Senhor', 'Macaíba', 'RN', '85194568'), -- id = 5 
('Rua Lago Seco', 55, 'Casa B', 'Nelis', 'Touros', 'RN', '78456032'),			-- id = 6 
('Rua da saudade', 1593, 'Casa', 'Pitimbu', 'Natal', 'RN', '89726011');         -- id = 7 

-- Insert's para Email 

INSERT INTO Email(email) VALUES 
('samantha@hotmail.com'),   -- id = 1 
('clover@hotmail.com'),     -- id = 2 
('alexandra@hotmail.com'),  -- id = 3 
('jonsnow@hotmail.com'),    -- id = 4 
('tyrion@hotmail.com'),     -- id = 5 
('jmormont@gmail.com'),     -- id = 6 
('ciadolivro@gmail.com');	-- id = 7 

-- Insert's para Telefone 

INSERT INTO Telefone(telefone, DDD) VALUES 
('923456789', '84'),   -- id = 1 
('934567892', '84'),   -- id = 2 
('924567893', '84'),   -- id = 3 
('915423698', '84'),   -- id = 4 
('910254893', '84'),   -- id = 5 
('999451389', '84'),   -- id = 6 
('997290012', '84');   -- id = 7 

-- Insert's para Funcionário 

INSERT INTO Funcionario(Email_idEmail, Telefone_idTelefone, Endereco_idEndereco, nomeFuncionario, cpfFuncionario, dataNascimentoFuncionario, generoFuncionario, numeroPisFuncionario, cargoFuncionario, dataAdmissaoFuncionario, salarioFuncionario) VALUES 
(1, 1, 1, 'Samantha', '01234567899', '20/09/2005', 'Cisgênero', '01234567891', 'Bibliotecária', '02/05/2022', 2500.00),    -- id = 1 
(2, 2, 2, 'Clover', '12345678990', '01/07/2005', 'Cisgênero', '12345678910', 'Gerente', '15/010/2021', 6000.00),           -- id = 2 
(3, 3, 3, 'Alexandra', '23456789901', '20/09/2000', 'Cisgênero', '23456789101', 'Recepcionista', '15/03/2022', 1800.50);   -- id = 3 

-- Insert's para Cliente 

INSERT INTO Cliente(Email_idEmail, Telefone_idTelefone, Endereco_idEndereco, nomeCliente, cpfCliente, dataNascimentoCliente) VALUES 
(4, 4, 4, 'Jon Snow', '15151212234', '15/09/1990'),           -- id = 1 
(5, 5, 5, 'Tyrion Lannister', '15498745638', '29/03/1985'),   -- id = 2 
(6, 6, 6, 'Jorah Mormont', '54896120078', '01/012/1979');     -- id = 3 

-- Insert's para Fornecedor 

INSERT INTO Fornecedor(Email_idEmail, Telefone_idTelefone, Endereco_idEndereco, razaoSocial, cnpjFornecedor) VALUES 
(7, 7, 7, 'CIA do Livro', '19826388162092');	-- id = 1

-- Insert's para Fornecedor 

INSERT INTO Emprestimo(Livro_idLivro, Funcionario_idFuncionario, Cliente_idCliente, dataEmprestimo, dataDevolucao) VALUES 
(7, 1, 1, '03/07/2022', '25/12/2022'),	-- id = 7
(11, 1, 1, '03/07/2022', '12/09/2022'),	-- id = 8
(10, 1, 1, '03/07/2022', '05/08/2022');	-- id = 8

-- Insert's para Requisição 

INSERT INTO Requisicao(Funcionario_idFuncionario, dataRequisicao, statusRequisicao) VALUES 
(2, '05/07/2022', 'Aberta'),	-- id = 2
(3, '10/08/2022', 'Aberta'); 	-- id = 3

-- Insert's para Compra 

INSERT INTO Compra(Fornecedor_idFornecedor, Requisicao_idRequisicao, quantidadeCompra, precoCompra, tituloLivroCompra) VALUES 
(1, 2, 23, 12.50, '1984'),					-- id = 1
(1, 3, 14, 25.99, 'Orgulho e preconceito');	-- id = 2