DELIMITER $$

CREATE PROCEDURE GET_CLIENTS() BEGIN 
	SELECT * FROM clients;
	END $$ 

DELIMITER ;

CALL get_clients();

DELIMITER $$

CREATE PROCEDURE GET_INVOICES_WITH_BALANCE() BEGIN 
	SELECT * FROM invoices WHERE invoice_total - payment_total > 0;
	END$$ 

DELIMITER ;

CALL get_invoices_with_balance();

DELIMITER $$

CREATE PROCEDURE GET_INVOICES_WITH_BALANCE_VIEW() BEGIN 
	SELECT * FROM invoices_with_balance WHERE balance > 0;
	END$$ 

DELIMITER ;

CALL get_invoices_with_balance_view();