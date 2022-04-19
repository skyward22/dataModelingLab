CREATE TABLE user (
user_id SERIAL PRIMARY KEY,
user_password VARCHAR(500),
user_email VARCHAR(255),
first_name VARCHAR(50),
last_name VARCHAR(50)
);

CREATE TABLE ingredient (
ingredient_id SERIAL PRIMARY KEY,
ingredient_name VARCHAR(250)
); 

CREATE TABLE recipe (
recipe_id SERIAL PRIMARY KEY,
instructions TEXT,
private BIT,
ingredient_id INTEGER NOT NULL REFERENCES ingredient(ingredient_id),
user_id INTEGER NOT NULL REFERENCES user(user_id)
);


CREATE TABLE grocery (
grocery_id SERIAL PRIMARY KEY,
ingredient_id INTEGER NOT NULL REFERENCES ingredient(ingredient_id),
user_id INTEGER NOT NULL REFERENCES user(user_id)
);


CREATE TABLE occasion (
occasion_id SERIAL PRIMARY KEY,
recipe_id INTEGER NOT NULL REFERENCES recipe(recipe_id),
user_id INTEGER NOT NULL REFERENCES user(user_id)
);
