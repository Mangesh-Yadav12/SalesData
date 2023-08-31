SELECT product_id, warehouse_id, date, SUM(quantity) AS total_quantity
FROM inventory
WHERE (product_id, warehouse_id, date) IN (
    SELECT product_id, warehouse_id, MAX(date)
    FROM inventory
    GROUP BY product_id, warehouse_id
)
GROUP BY product_id, warehouse_id, date;