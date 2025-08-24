-- Swiggy Case Study: Schema
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
);
CREATE TABLE Restaurants (
    restaurant_id INTEGER PRIMARY KEY,
    name TEXT,
    cuisine TEXT,
    city TEXT
);
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    restaurant_id INTEGER,
    order_date DATE,
    amount REAL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);
