SELECT date_added, CAST(date_added as DATE) as added_date, CAST(CAST(date_added as DATE) as char(7)) added_char7, CAST(date_added as TIME) added_time
FROM products
ORDER BY date_added

-- Write a SELECT statement that returns these columns from the Products table:

-- The date_added column
-- A column that uses the CAST function to return the date_added column with its date only (year, month, and day). Name this column added_date
-- A column that uses the CAST function to return the date_added column with just the year and the month.  Name this column added_char7
-- A column that uses the CAST function to return the date_added column with its full time only (hour, minutes, and seconds). Name this column added_time
-- Sort the result set by the date_added column in ascending sequence.