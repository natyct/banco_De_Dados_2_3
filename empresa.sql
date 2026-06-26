
-- Copiando estrutura do banco de dados para empresa_vendas
CREATE DATABASE IF NOT EXISTS `empresa_vendas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `empresa_vendas`;

-- Copiando estrutura para tabela empresa_vendas.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela empresa_vendas.compras: ~40 rows (aproximadamente)
INSERT INTO `compras` (`id_compra`, `id_produto`, `quantidade`, `data_compra`) VALUES
	(1, 1, 5, '2026-06-24'),
	(2, 2, 3, '2026-06-24'),
	(3, 3, 8, '2026-06-25'),
	(4, 1, 4, '2026-06-25'),
	(5, 2, 6, '2026-06-26'),
	(6, 1, 5, '2026-06-24'),
	(7, 2, 3, '2026-06-24'),
	(8, 3, 8, '2026-06-25'),
	(9, 1, 4, '2026-06-25'),
	(10, 2, 6, '2026-06-26'),
	(11, 1, 5, '2026-06-24'),
	(12, 2, 3, '2026-06-24'),
	(13, 3, 8, '2026-06-25'),
	(14, 1, 4, '2026-06-25'),
	(15, 2, 6, '2026-06-26'),
	(16, 1, 5, '2026-06-24'),
	(17, 2, 3, '2026-06-24'),
	(18, 3, 8, '2026-06-25'),
	(19, 1, 4, '2026-06-25'),
	(20, 2, 6, '2026-06-26'),
	(21, 1, 5, '2026-06-24'),
	(22, 2, 3, '2026-06-24'),
	(23, 3, 8, '2026-06-25'),
	(24, 1, 4, '2026-06-25'),
	(25, 2, 6, '2026-06-26'),
	(26, 1, 5, '2026-06-24'),
	(27, 2, 3, '2026-06-24'),
	(28, 3, 8, '2026-06-25'),
	(29, 1, 4, '2026-06-25'),
	(30, 2, 6, '2026-06-26'),
	(31, 1, 5, '2026-06-24'),
	(32, 2, 3, '2026-06-24'),
	(33, 3, 8, '2026-06-25'),
	(34, 1, 4, '2026-06-25'),
	(35, 2, 6, '2026-06-26'),
	(36, 1, 5, '2026-06-24'),
	(37, 2, 3, '2026-06-24'),
	(38, 3, 8, '2026-06-25'),
	(39, 1, 4, '2026-06-25'),
	(40, 2, 6, '2026-06-26');

-- Copiando estrutura para procedure empresa_vendas.RelatorioComprasDiarias
DELIMITER //
CREATE PROCEDURE RelatorioComprasDiarias()
BEGIN
    SELECT
        data_compra AS Data,
        SUM(quantidade) AS Total_Produtos_Comprados
    FROM compras
    GROUP BY data_compra
    ORDER BY data_compra;
END//
DELIMITER ;

CALL RelatorioComprasDiarias();