--Create DB
CREATE TABLE IF NOT EXISTS transactions (
    transaction_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    time TIMESTAMP,
    quantity INTEGER,
    product_name TEXT,
    product_category TEXT,
    price INTEGER,
    join_date DATE,
    customer_location TEXT,
    total_price INTEGER
)

-- Read
SELECT * FROM transactions

-- Produk Terlaris
SELECT
    product_id,
    product_name,
    SUM(total_price) AS total_revenue
FROM
    transactions
GROUP BY
    product_id, product_name
ORDER BY
    total_revenue DESC
LIMIT 5;

-- Pelanggan Paling Berharga
SELECT
    customer_id,
    SUM(total_price) AS total_spent
FROM
    transactions
GROUP BY
    customer_id
ORDER BY
    total_spent DESC
LIMIT 10;

--Tren Penjualan Bulanan
SELECT
    strftime('%Y-%m', time) AS sale_month,
    SUM(total_price) AS monthly_revenue
FROM
    transactions
GROUP BY
    sale_month
ORDER BY
    sale_month;