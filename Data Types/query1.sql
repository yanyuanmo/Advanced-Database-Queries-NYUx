SELECT list_price, FORMAT(list_price, 1) as price_format, CONVERT(list_price, signed int) as price_convert, CAST(list_price as signed int) as price_cast
FROM products
ORDER BY list_price
-- Write a SELECT statement that returns these columns from the Products table:

-- The list_price column
-- A column that uses the FORMAT function to return the list_price column with 1 digit to the right of the decimal point.  Name this column price_format
-- A column that uses the CONVERT function to return the list_price column as an integer.  Name this column price_convert
-- A column that uses the CAST function to return the list_price column as an integer.  Name this column price_cast
-- Sort the result set by the list_price column in ascending sequence.


-- Store the query in a file named query.sql and upload to GradeScope below