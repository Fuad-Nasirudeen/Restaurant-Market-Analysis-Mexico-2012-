CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    zip_code VARCHAR(20),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    alcohol_service VARCHAR(50),
    smoking_allowed VARCHAR(50),
    price VARCHAR(50),
    franchise VARCHAR(50),
    area VARCHAR(50),
    parking VARCHAR(50)
);

CREATE TABLE consumers (
    consumer_id VARCHAR(50) PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    smoker VARCHAR(20),
    drink_level VARCHAR(50),
    transportation_method VARCHAR(50),
    marital_status VARCHAR(50),
    children VARCHAR(50),
    age INT,
    occupation VARCHAR(100),
    budget VARCHAR(50)
);

CREATE TABLE ratings (
    consumer_id VARCHAR(50),
    restaurant_id INT,
    overall_rating INT,
    food_rating INT,
    service_rating INT,
    CONSTRAINT fk_consumer
        FOREIGN KEY (consumer_id)
        REFERENCES consumers (consumer_id),
    CONSTRAINT fk_restaurant
        FOREIGN KEY (restaurant_id)
        REFERENCES restaurants (restaurant_id)
);

CREATE TABLE consumer_preferences (
    consumer_id VARCHAR(50),
    preferred_cuisine VARCHAR(100),
    CONSTRAINT fk_consumer_preferences
        FOREIGN KEY (consumer_id)
        REFERENCES consumers (consumer_id)
);

CREATE TABLE restaurant_cuisines (
    restaurant_id INT,
    cuisine VARCHAR(100),
    CONSTRAINT fk_restaurant_cuisines
        FOREIGN KEY (restaurant_id)
        REFERENCES restaurants (restaurant_id)
);
