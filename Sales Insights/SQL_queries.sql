#Show all customer records
SELECT * FROM sales.customers;

# Show total count of all customer records
SELECT count(*) FROM sales.customers;

# Show transactions for Chennai market 
SELECT * FROM sales.transactions where market_code = "MARK001";

# Show distrinct product codes that were sold in chennai
SELECT distinct product_code FROM sales.transactions where market_code = "MARK001";

# Show transactions where currency is US dollars
SELECT * from sales.transactions where currency = "USD";

# Show transactions where sales amount is 0 or negative
SELECT * FROM sales.transactions where sales_amount <= 0;

# Show transactions in year 2020
SELECT t.*, d.* FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date where d.year="2020";

# Show total revenue in year 2020
SELECT SUM(t.sales_amount) as sales_2020 FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date where d.year="2020";

# Show total revenue in year 2020, month january
SELECT SUM(t.sales_amount) as sales_Jan2020 FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date
where d.year="2020" and d.month_name = "January";

# Show total revenue in year 2020 in Chennai
SELECT SUM(t.sales_amount) as sales_2020_chennai FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date
where d.year="2020" and t.market_code = "MARK001";
