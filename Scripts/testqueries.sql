SELECT i.ingredient_name, s.supplier_name
FROM ingredients i
INNER JOIN suppliers s ON s.id = i.supplier_id;

SELECT p.product_name, i.ingredient_name, s.supplier_name
FROM products p
INNER JOIN recipes r ON r.product_id = p.id
INNER JOIN ingredients i ON i.id = r.ingredient_id
INNER JOIN suppliers s ON  s.id = i.supplier_id;

SELECT i.ingredient_name, i.sku, i.stock, s.supplier_name, s.contactperson, s.phone
FROM ingredients i
INNER JOIN suppliers s ON s.id = i.supplier_id
WHERE i.stock < 10;

PRAGMA foreign_keys = ON;
INSERT INTO ingredients(supplier_id, ingredient_name, sku, kg_price)
VALUES (99, 'Testmjöl', 'TEST-1', 10);