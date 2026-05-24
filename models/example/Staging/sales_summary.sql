SELECT
    outlet_location_type,
    item_type,
    COUNT(*) AS total_items,
    ROUND(AVG(sales),2) AS avg_sales,
    ROUND(SUM(sales),2) AS total_sales
FROM blinkit_db.raw.blinkit_raw
GROUP BY outlet_location_type, item_type