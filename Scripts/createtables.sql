-- Skapa databasen: sqlite3 mdb.db < Scripts/createtables.sql

PRAGMA foreign_keys = ON;

CREATE TABLE cities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    city_name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE postalcodes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    city_id INTEGER NOT NULL,
    postalcode CHAR(5) NOT NULL UNIQUE,
    CONSTRAINT fk_city FOREIGN KEY(city_id) REFERENCES cities(id)
);

CREATE TABLE addresses(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    postalcode_id INTEGER NOT NULL,
    addressline VARCHAR(60) NOT NULL,
    CONSTRAINT fk_postalcode FOREIGN KEY(postalcode_id) REFERENCES postalcodes(id)
);

CREATE TABLE suppliers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address_id INTEGER NOT NULL,
    supplier_name VARCHAR(80) UNIQUE NOT NULL,
    contactperson VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(128) NOT NULL,
    CONSTRAINT fk_address FOREIGN KEY(address_id) REFERENCES addresses(id)
);
CREATE TABLE ingredients(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER NOT NULL,
    ingredient_name VARCHAR(80) NOT NULL,
    sku VARCHAR(50) NOT NULL UNIQUE,
    kg_price FLOAT NOT NULL,
    stock FLOAT NOT NULL DEFAULT 0,
    CONSTRAINT fk_suppliers FOREIGN KEY(supplier_id) REFERENCES suppliers(id)
);

CREATE TABLE products(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name VARCHAR(80) NOT NULL
);

CREATE TABLE recipes(
    product_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    quantity FLOAT NOT NULL,
    CONSTRAINT pk_recipes PRIMARY KEY(product_id, ingredient_id),
    CONSTRAINT fk_products FOREIGN KEY(product_id) REFERENCES products(id),
    CONSTRAINT fk_ingredients FOREIGN KEY(ingredient_id) REFERENCES ingredients(id)
);

CREATE TABLE purchases(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ingredient_id INTEGER NOT NULL,
    quantity FLOAT NOT NULL,
    purchase_date TEXT NOT NULL,
    CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(id)
);