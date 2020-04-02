CREATE TABLE product (
    product_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    description VARCHAR(80) NOT NULL,
    price integer NOT NULL,
    image_url text NOT NULL
);

INSERT INTO product ( name, description, price, image_url ) VALUES ( $1, $2, $3, $4 );

SELECT * FROM product;

SELECT * FROM product WHERE product_id = $1;

UPDATE product SET description = $2 WHERE product_id = $1;

DELETE FROM product WHERE product_id = $1;