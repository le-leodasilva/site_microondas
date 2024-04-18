INSERT INTO Marca (Marca) VALUES 
    ('Brastemp'),
    ('Panasonic'),
    ('Samsung'),
    ('Midea'),
    ('Electrolux');

INSERT INTO Modelo (Modelo) VALUES 
    ('BMJ38AB'),
    ('MS3096G'),
    ('CM020BF'),
    ('NN-ST68'),
    ('MB38X');
    
INSERT INTO Cor (Cor) VALUES 
    ('Cinza'),
    ('Branco'),
    ('Prata'),
    ('Preto'),
    ('Vermelho');
    
INSERT INTO Cliente(Cpf, Nome, Email) VALUES
	("12345678910", "Maria Silva", "maria.silva@gmail.com"),
    ("98765432198", "João Santos", "joao.santos@gmail.com"),
    ("45678912345", "Ana Oliveira", "ana.oliveira@gmail.com"),
    ("32165498732", "Carlos Ferreira", "carlos.ferreira@gmail.com"),
    ("78912345678", "Pedro Souza", "pedro.souza@gmail.com");

INSERT INTO Endereco(IdCliente, Cep, Cidade, Estado, Rua, Bairro, Numero) VALUES
	(1, '80000000', 'Curitiba', 'Paraná', 'Rua A', 'Centro', '200'),
    (2, '80200000', 'Curitiba', 'Paraná', 'Rua B', 'Batel', '305'),
    (3, '80400000', 'Curitiba', 'Paraná', 'Rua C', 'Cristo Rei', '591'),
    (4, '80600000', 'Curitiba', 'Paraná', 'Rua D', 'Água Verde', '120A'),
    (5, '80800000', 'Curitiba', 'Paraná', 'Rua E', 'Alto da XV', '750');

INSERT INTO Telefone(IdCliente, Telefone) VALUES
	(1, '41912345671'),
    (2, '41923456782'),
    (3, '41934567893'),
    (4, '41945678904'),
    (5, '41956789015');

INSERT INTO Microondas(IdMarca, IdModelo, IdCor, NumeroSerie, EstadoProduto, Acessorio) VALUES
	(4, 1, 1, 'X8G5D4F2H9', 'Marcas de uso e fortes riscos', 'Prato'),
    (2, 2, 1, 'E4T9A2V1R8K6', 'Marcas de uso e leves riscos', 'Nenhum'),
    (3, 3, 4, 'P5L2M1N4B8V3', 'Marcas de uso e fortes riscos', 'Nenhum'),
    (5, 4, 2, 'S3D2F5G8H4J1K9L7', 'Marcas de uso e fortes riscos', 'Prato'),
    (1, 5, 2, 'U6I5O3P2A1S9D4F8', 'Marcas de uso e fortes riscos', 'Nenhum');
    
INSERT INTO OrdemServico(IdCliente, IdMicroondas, DataEntrada, DataSaida, DataConserto, DefeitoReclamado, DefeitoConstatado, ValorOrcamento) VALUES
	(1, 1, '2024-04-10', '2024-04-13', '2024-04-12', 'Não esquenta', 'Microondas não esquentava. Substituído magnetron', 600),
	(2, 2, '2024-04-10', '2024-04-15', '2024-04-13',' Prato não gira', 'Prato não girava, substituído motor do prato', 550),
	(3, 3, '2024-04-11', NULL, '2024-04-14', 'Painel não funciona', 'Painel não funcionava, substituído placa do painel', 500),
	(4, 4, '2024-04-12', NULL, NULL, 'Faiscando', NULL, NULL),
	(5, 5, '2024-04-14', NULL, NULL, 'Não esquenta', NULL, NULL);
    
INSERT INTO Peca(Peca) VALUES
	('Magnetron'),
    ('Transformador 127V'),
    ('Transformador 220V'),
    ('Capacitor 0.85uF'),
    ('Fusível 20A');
    
INSERT INTO Fornecedor(Fornecedor) VALUES
	('Fornecedor A'),
    ('Fornecedor B'),
    ('Fornecedor C'),
    ('Fornecedor D'),
    ('Fornecedor E');
    
INSERT INTO PecaFornecedor(IdPeca, IdFornecedor, Preco, Quantidade) VALUES
	(1, 1, 300, 10),
    (1, 2, 250, 5),
    (2, 1, 450, 1),
    (3, 4, 100, 3),
    (3, 5, 150, 10);
    
INSERT INTO PecaSolicitada(IdOrdemServico, IdPecaFornecedor, Quantidade) VALUES
	(1, 1, 3),
    (1, 2, 2),
    (2, 3, 1),
    (2, 4, 1),
    (3, 5, 2);
    
INSERT INTO FormaPagamento(FormaPagamento) VALUES
	('PIX'),
    ('Cartão de crédito'),
    ('Cartão de débito'),
    ('Dinheiro'),
    ('Boleto');
    
INSERT INTO Pagamento(IdFormaPagamento, IdOrdemServico, Valor) VALUES
	(1, 1, 450),
    (2, 1, 150),
    (3, 2, 300),
    (4, 2, 250),
    (5, 3, 500);