PRAGMA foreign_keys = ON;

INSERT INTO
    cities (city_name)
VALUES ('Göteborg'),
    ('Stockholm'),
    ('Malmö');

INSERT INTO
    postalcodes (city_id, postalcode)
VALUES (1, '42211'),
    (1, '41991'),
    (2, '11122'),
    (3, '33221');

INSERT INTO
    addresses (postalcode_id, addressline)
VALUES (1, 'Gottigottgatan 1337'),
    (3, 'Mumsfillibabba 13'),
    (4, 'Glufsgatan 3'),
    (2, 'Rultvägen 8');

INSERT INTO
    suppliers (
        address_id,
        supplier_name,
        contactperson,
        phone,
        email
    )
VALUES (
        1,
        'Korvbagarn AB',
        'Anna Lind',
        '031-3131313',
        'anna@mail.com'
    ),
    (
        2,
        'Käpprätt AB',
        'Erik Holm',
        '08-12212121',
        'erik@mail.com'
    ),
    (
        3,
        'Goda söta saker AB',
        'Sara Ek',
        '040-223344',
        'sara@mail.com'
    ),
    (
        4,
        'Familjen Bengtsson AB',
        'Johan Bengtsson',
        '031-1223321',
        'johan@mail.com'
    );

INSERT INTO
    ingredients (
        supplier_id,
        ingredient_name,
        sku,
        kg_price,
        stock
    )
VALUES (
        1,
        'Vetemjöl',
        'VK-1001',
        9.50,
        120
    ),
    (
        1,
        'Rågmjöl',
        'VK-1002',
        11,
        60
    ),
    (
        2,
        'Smör',
        'MS-2001',
        89,
        25
    ),
    (
        2,
        'Mjölk',
        'MS-2002',
        12,
        40
    ),
    (
        2,
        'Ägg',
        'MS-2003',
        45,
        15
    ),
    (
        2,
        'Jäst',
        'MS-2004',
        60,
        5
    ),
    (
        3,
        'Strösocker',
        'SS-3001',
        14,
        80
    ),
    (
        4,
        'Kanel',
        'KB-4001',
        320,
        3
    ),
    (
        4,
        'Kardemumma',
        'KB-4002',
        450,
        2
    );

INSERT INTO
    products (product_name)
VALUES ('Kanelbulle'),
    ('Kardemummabulle'),
    ('Rågbröd'),
    ('Sockerkaka');

INSERT INTO
    recipes (
        product_id,
        ingredient_id,
        quantity
    )
VALUES (1, 1, 1),
    (1, 3, 0.30),
    (1, 4, 0.50),
    (1, 7, 0.20),
    (1, 8, 0.02),
    (1, 6, 0.05),
    (2, 1, 1),
    (2, 3, 0.25),
    (2, 4, 0.50),
    (2, 7, 0.20),
    (2, 9, 0.02),
    (2, 6, 0.05),
    (3, 2, 0.80),
    (3, 1, 0.40),
    (3, 6, 0.03),
    (4, 1, 0.30),
    (4, 7, 0.30),
    (4, 5, 0.25),
    (4, 3, 0.20),
    (4, 4, 0.10);

INSERT INTO
    purchases (
        ingredient_id,
        quantity,
        purchase_date
    )
VALUES (1, 100, '2026-11-02'),
    (3, 20, '2026-11-02'),
    (7, 50, '2026-11-05'),
    (8, 2, '2026-11-10'),
    (1, 50, '2026-11-16'),
    (6, 5, '2026-11-16'),
    (2, 40, '2026-11-18');