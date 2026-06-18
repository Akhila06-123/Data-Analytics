use joints_sql;
show tables;
DELIMITER //

CREATE TRIGGER customer_insert_trigger
AFTER INSERT ON customer
FOR EACH ROW
BEGIN
    INSERT INTO order_info(message)
    VALUES(CONCAT('New customer added: ', NEW.cus_name));
END //

DELIMITER ;
CREATE TABLE customer_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(100)
);
INSERT INTO customer_log(message)
VALUES(CONCAT('New customer added: ', NEW.id));