CREATE TABLE users (
    user_id SERIAL PRIMARY KEY, 
    username VARCHAR(25),
    password TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL CHECK(position('@' IN email) > 1)
);

CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY, 
    manufacturer TEXT NOT NULL,
    qty INT,
    part_number TEXT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE users_inventory (
    user_id REFERENCES users ON DELETE CASCADE,
    inventory_id REFERENCES inventory
);