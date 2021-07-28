# Sales Insights

**1. Problem Statement:** Qubix hardware is a company which supplies the computer hardware and peripherals to different clients(like Surge stores, Normad stores, Excel stores,etc).They have regional offices in different states of India. Now, Sales are declining for this business. So,Rashmi Patel who is the Sales Director of this company wants to know the following Questions:\
<ul>
  <li> Revenue breakdown by cities</li>
  <li> Revenue breakdown by years and months</li>
  <li> Top 5 customers by revenue and sales quantity</li>
  <li> Top 5 products by revenue amount</li>
</ul>

**2. Data Discovery:** Defining purpose and success criteria of this project using AIMS grid. Four components of AIMS grid are:\
  <ol type="i">
  <li>Purpose: To unlock sales insights that are not visible before for sales team for decision support & automate them to reduce manual time spent in data gathering.</li>
  <li>Stakeholders: Defines who all are involved in this project.(Sales Director, Data & Analytics Team, IT, etc)</li>
  <li>End Result: An automated dashboard providing quick & latest sales insights in order to support data driven decision making.</li>
  <li>Success Criteria: Measures for the success of this project.</li>
  </ol>  


  <ul>
                      <li><em>Dashboards uncovering sales order insights with latest data available.</em></li>
                      <li><em>Sales Team able to take better decisions & prove 10% cost savings of total spend.</em></li>
                      <li><em>Sales Analysts stop data gathering manually in order to save 20% of their business time and reinvest it in value added activity.</em></li>
  </ul>


Once AIMS grid is defined, next step is data discovery. For that, Sales records that are stored in mysql database are pulled in by tableau for data analysis. 

**3. Data Analysis Using SQL:** Analyse the sales database. Sales database has transactions, customers, products, date and markets tables.

**4. Data Cleaning & ETL in Tableau:** Loading the Sales database in Tableau and creating a data model. Data models defines the data elements and the relationships between the data elements. Star schema is made in which a fact table is present at the center and the dimension tables surrounding it. Next, Clean the data by adding filters on the columns.

**5. Build Tableau Dashboard and publish it on Tableau Public:** https://public.tableau.com/app/profile/kanika.mittal

**6. Feedback From Stakeholders & Profit Analysis:** Based on the feedback from stakeholders we will build phase 2 where we will do profit analysis and fix some issues found in phase 1. Some changes were: Adding context filters, adding profit, profit_margin, cost columns in tables, breakdown of sales w.r.t customer names and profit margin by regions.
<ul>
  <li><em>Adding context filters</em></li>
  <li><em>Adding profit, profit_margin & cost columns in tables</em></li>
  <li><em>Breakdown of sales w.r.t Customer Names</em></li>
  <li><em>Profit margin by Regions</em></li>
</ul>
