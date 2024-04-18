CREATE DATABASE OficinaMicroondas;

USE OficinaMicroondas;

CREATE TABLE Cliente (
	IdCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Cpf VARCHAR(11) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

CREATE TABLE Endereco (
	IdEndereco INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdCliente INT NOT NULL,
    Cep VARCHAR(11) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(10) NOT NULL,
    Rua VARCHAR(255) NOT NULL,
    Bairro VARCHAR(100) NOT NULL,
    Numero VARCHAR(10) NOT NULL,
	FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);

CREATE TABLE Telefone (
	IdTelefone INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdCliente INT NOT NULL,
    Telefone VARCHAR(11) NOT NULL,
	FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);

CREATE TABLE Marca (
	IdMarca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(50) NOT NULL
);

CREATE TABLE Modelo (
	IdModelo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(50) NOT NULL
);

CREATE TABLE Cor (
	IdCor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Cor VARCHAR(50) NOT NULL
);

CREATE TABLE Microondas (
	IdMicroondas INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdMarca INT NOT NULL,
    IdModelo INT NOT NULL,
    IdCor INT NOT NULL,
    NumeroSerie VARCHAR(50) NOT NULL,
    EstadoProduto VARCHAR(255) NOT NULL,
    Acessorio VARCHAR(255) NOT NULL,
    FOREIGN KEY (IdMarca) REFERENCES Marca(IdMarca),
    FOREIGN KEY (IdModelo) REFERENCES Modelo(IdModelo),
    FOREIGN KEY (IdCor) REFERENCES Cor(IdCor)
);

CREATE TABLE OrdemServico (
	IdOrdemServico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdCliente INT NOT NULL,
    IdMicroondas INT NOT NULL,
    DataEntrada DATE NOT NULL DEFAULT (CURRENT_DATE),
    DataSaida DATE,
	DataConserto DATE,
    DefeitoReclamado VARCHAR(2000) NOT NULL,
    DefeitoConstatado VARCHAR(2000),
    ValorOrcamento FLOAT,
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
    FOREIGN KEY (IdMicroondas) REFERENCES Microondas(IdMicroondas)
);

CREATE TABLE FormaPagamento (
	IdFormaPagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FormaPagamento VARCHAR(255) NOT NULL
);

CREATE TABLE Pagamento (
	IdPagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdFormaPagamento INT NOT NULL,
    IdOrdemServico INT NOT NULL,
    Valor FLOAT NOT NULL,
    FOREIGN KEY (IdFormaPagamento) REFERENCES FormaPagamento(IdFormaPagamento),
    FOREIGN KEY (IdOrdemServico) REFERENCES OrdemServico(IdOrdemServico)
);

CREATE TABLE Peca (
	IdPeca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Peca VARCHAR(150) NOT NULL
);

CREATE TABLE Fornecedor (
	IdFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Fornecedor VARCHAR(100) NOT NULL
);

CREATE TABLE PecaFornecedor (
	IdPecaFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdPeca INT NOT NULL,
    IdFornecedor INT NOT NULL,
    Preco FLOAT NOT NULL,
    Quantidade INT NOT NULL,
    FOREIGN KEY (IdPeca) REFERENCES Peca(IdPeca),
    FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(IdFornecedor)
);

CREATE TABLE PecaSolicitada (
	IdPecaSolicitada INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdOrdemServico INT NOT NULL,
    IdPecaFornecedor INT NOT NULL,
    Quantidade INT NOT NULL,
    FOREIGN KEY (IdOrdemServico) REFERENCES OrdemServico(IdOrdemServico),
    FOREIGN KEY (IdPecaFornecedor) REFERENCES PecaFornecedor(IdPecaFornecedor)
)