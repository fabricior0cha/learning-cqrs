CREATE TABLE IF NOT EXISTS `produtores` (
    `id` int(11) AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `telefone` varchar(15) NOT NULL,
    `endereco` varchar(255) NOT NULL,
    `data_criacao` timestamp DEFAULT CURRENT_TIMESTAMP
    `data_atualizacao` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)

CREATE TABLE IF NOT EXISTS `propriedades` (
    `id` int(11) AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(255) NOT NULL,
    `descrica` varchar(255) NOT NULL,
    `coordenadas` varchar(255) NOT NULL,
    `area_hectares` float NOT NULL,
    `id_produtores` int(11) NOT NULL,
    `data_criacao` timestamp DEFAULT CURRENT_TIMESTAMP,
    `data_atualizacao` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`id_produtores`) REFERENCES `produtores`(`id`)
)

