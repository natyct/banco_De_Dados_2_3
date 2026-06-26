CREATE DATABASE empresa_vendas;
USE empresa_vendas;

CREATE TABLE compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    data_compra DATE
);

INSERT INTO compras (id_produto, quantidade, data_compra) VALUES
(1, 5, '2026-06-24'),
(2, 3, '2026-06-24'),
(3, 8, '2026-06-25'),
(1, 4, '2026-06-25'),
(2, 6, '2026-06-26');

DELIMITER //

CREATE PROCEDURE RelatorioComprasDiarias()
BEGIN
    SELECT
        data_compra AS Data,
        SUM(quantidade) AS Total_Produtos_Comprados
    FROM compras
    GROUP BY data_compra
    ORDER BY data_compra;
END //

DELIMITER ;

CALL RelatorioComprasDiarias();
