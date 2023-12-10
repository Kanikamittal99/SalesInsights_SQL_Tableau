# Sales Insights - Using SQL and Tableau

## About Project 👨‍💻

- Performed analysis on sales of a hardware company - Qubix Hardware is a company that supplies computer hardware and peripherals to different clients(like Surge stores, Normad stores, Excel stores, etc). They have regional offices in different states of India.

- Developed ETL mappings using SQL to extract the data from unstructured data and transformed it to the staging area to conduct data cleaning and design a star schema data model on Tableau.

- Developed a Dynamic Tableau dashboard to perform analysis, perform quantitative visualizations to draw valuable insights based on different parameters affecting the company performance year on year and further provide business solutions.


## Problem Statement
Sales are declining for this business. So, the Sales Director wants to know the following Questions:
- Q1. Revenue breakdown by cities.

- Q2. Revenue breaks down by years & months.

- Q3. Top 5 customers by revenue & sales quantity.

- Q4. Top 5 Products by revenue.
  
- Q5. Net Profit & Profit Margin by Market
  
## Approach - Project Planning & Aims Grid

### 1. Purpose: What? Why? What do we want to achieve?
To unlock sales insights that were not visible before for the sales team for decision support & automate them to reduce manual time spent in data gathering.

#### 2. Stakeholders: Who will be involved?
- Sales Director
- I.T. Team
- Customer Service Team 
- Data & Analytics Team

#### 3. End Result: What do we want to achieve?
An automated dashboard providing quick & latest sales insights to support data-driven decision-making.

#### 4. Success Criteria: What will be our success criteria?
- Dashboards uncovering sales order insights with the latest data available.
- Sales team able to take better decisions & prove 10% cost savings of total spend.
- Sales analysts stop data gathering manually to save 20% of their business time & reinvest it in value-added activity.

## Data Analysis Using SQL
  
1. Show all customer records

    `SELECT * FROM sales.customers;`

1. Show total number of customers

    `SELECT count(*) FROM sales.customers;`

1. Show transactions for Chennai market (market code for chennai is Mark001)

    `SELECT * FROM sales.transactions where market_code = "MARK001";`

1. Show distrinct product codes that were sold in chennai.

    `SELECT distinct product_code FROM sales.transactions where market_code = "MARK001";`

1. Show transactions where currency is US dollars.

    `SELECT * from sales.transactions where currency = "USD";`
   
1. Show transactions where sales amount is 0 or negative

     `SELECT * FROM sales.transactions where sales_amount <= 0;`

1. Show transactions in 2020

    `SELECT t.*, d.* FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date where d.year="2020";`

1. Show total revenue in year 2020.

    `SELECT SUM(t.sales_amount) as sales_2020 FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date where d.year="2020";`
	
1. Show total revenue in year 2020, January Month.

    `SELECT SUM(t.sales_amount) as sales_Jan2020 FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date
where d.year="2020" and d.month_name = "January";`

1. Show total revenue in year 2020 in Chennai.

    `SELECT SUM(t.sales_amount) as sales_2020_chennai FROM sales.transactions as t INNER JOIN sales.date as d ON d.date = t.order_date
where d.year="2020" and t.market_code = "MARK001";`


## Data Analysis Using Tableau 

#### Tableau Dashboard - [Revenue Analysis](https://public.tableau.com/views/SalesInsightsforQubixHardwarev1/Dashboard-RevenueAnalysis?:language=en-US&:display_count=n&:origin=viz_share_link)

	
<p  align="center">
<img width="100%" src="https://github.com/Kanikamittal99/SalesInsights_SQL_Tableau/assets/32505627/fbf83c99-841b-4262-961c-f6527e911a89" />
</p>

#### Tableau Dashboard - [Profit Analysis](https://public.tableau.com/views/SalesInsightsforQubixHardware/Dashboard-ProfitAnalysis?:language=en-US&:display_count=n&:origin=viz_share_link)
	
<p  align="center">
  <img width="100%" src="https://github.com/Kanikamittal99/SalesInsights_SQL_Tableau/assets/32505627/bfc0d3bf-f9a7-4596-9593-d0e59fbb4af7" />
</p>


  
