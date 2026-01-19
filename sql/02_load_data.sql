-- Load customers data
COPY customers
FROM 'PATH_TO_olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;

-- Load orders data
COPY orders
FROM 'PATH_TO_olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;

-- Load order items data
COPY order_items
FROM 'PATH_TO_olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;

-- Load payments data
COPY order_payments
FROM 'PATH_TO_olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;

-- Load reviews data
COPY order_reviews
FROM 'PATH_TO_olist_order_reviews_dataset.csv'
DELIMITER ','
CSV HEADER;
