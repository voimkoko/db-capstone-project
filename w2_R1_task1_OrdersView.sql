CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `LL`@`localhost`
    SQL SECURITY DEFINER
VIEW `OrdersView` AS
    SELECT
        `Orders`.`OrderID` AS `OrderID`,
        `Orders`.`Quantity` AS `Quantity`,
        `Orders`.`TotalCost` AS `TotalCost`
    FROM
        `Orders`
    WHERE
        (`Orders`.`Quantity` > 2)
