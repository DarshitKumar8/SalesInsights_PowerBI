-- 1. All transactions' records from Chennai.
-- select * from sales.transactions 
-- where market_code="Mark001";

-- 2. Retrieves all columns from both the transactions & date tables, only when sales.transactions.order_date matches sales.date.date.
-- select sales.transactions.*, sales.date.* from sales.transactions 
-- inner join sales.date on sales.transactions.order_date=sales.date.date 
-- where sales.date.year=2020;

-- 3. Total sales_amount from the transactions table for all transactions in the year 2020 by joining it with the date table.
-- select sum(sales.transactions.sales_amount) from sales.transactions 
-- inner join sales.date  on sales.transactions.order_date=sales.date.date 
-- where sales.date.year=2020;

-- 4. Total sales_amount from the transactions table for all transactions in the Chennai by joining it with the date table.
-- select sum(sales.transactions.sales_amount) from sales.transactions
-- inner join sales.date on sales.transactions.order_date = sales.date.date
-- where sales.transactions.market_code = "Mark001";

-- 5. Counts the distinct product_code values in the transactions table for Chennai.
-- select count(distinct product_code) from sales.transactions 
-- where market_code="Mark001";

-- 6. Sales amount <= 0
-- select * from sales.transactions
-- where sales_amount <= 0;

-- 7. Distinct currency values from the transactions table.
-- SELECT DISTINCT transactions.currency
-- FROM transactions;

-- 8. No. of rows in the transactions table where currency column = string "INR\r".
-- select count(*) from transactions where transactions.currency = "INR\r"; 

-- Total sales amount from the transactions table in 2020.
select sum(transactions.sales_amount) from transactions 
inner join date on transactions.order_date = date.date
where date.year = 2020 and (transactions.currency = "INR\r" or transactions.currency = "USD\r");

-- Total sales amount from the transactions table in Jan 2020.
select sum(transactions.sales_amount) from transactions 
inner join date on transactions.order_date = date.date
where date.year = 2020 and date.month_name="January" and (transactions.currency = "INR\r" or transactions.currency = "USD\r");
