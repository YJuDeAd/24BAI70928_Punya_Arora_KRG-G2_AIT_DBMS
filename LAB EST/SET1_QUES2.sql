CREATE OR REPLACE FUNCTION check_stock_before_insert()
RETURNS TRIGGER AS $$
DECLARE
    available_stock INT;
BEGIN
    SELECT stock_qty INTO available_stock
    FROM Tbl_Products
    WHERE prod_id = NEW.prod_id;

    IF NEW.qty > available_stock THEN
        RAISE EXCEPTION 'Cannot complete order. Requested quantity (%) exceeds available stock (%).', NEW.qty, available_stock;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER enforce_stock_limit
BEFORE INSERT ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock_before_insert();
