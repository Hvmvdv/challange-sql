
CREATE TABLE products (
    product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Auto-increment primary key
    product_name VARCHAR(100) NOT NULL,
    is_recyclable BOOLEAN NOT NULL,
    is_low_fat BOOLEAN NOT NULL
);


INSERT INTO products (product_name, is_recyclable, is_low_fat)
VALUES
    ('A', TRUE, TRUE),
    ('B', TRUE, FALSE),
    ('C', TRUE, TRUE),
    ('D', FALSE, TRUE);
    
SELECT product_id, product_name
FROM products
WHERE is_recyclable = TRUE AND is_low_fat = TRUE;
