01. Display columns for all transactations
--Expected output: All columns

SELECT *
FROM practical1.dataset.retail_sales;


--------------------------------------------

--Q2. Display only the Transaction ID, Date, and Customer ID for ---all records. Expected columns transaction_id, date, customer_id

SELECT transaction_id, date, customer_id
FROM practical1.dataset.retail_sales;


------------------------------------------------------------------

--Q3. Display all the distinct product categories in the dataset.
--Expected output: Product Category
SELECT DISTINCT product_category
FROM practical1.dataset.retail_sales;

-----------------------------------------------------------------

--Q4. Display all the distinct gender values in the dataset.
--Expected output: Gender
SELECT DISTINCT gender
FROM practical1.dataset.retail_sales;

------------------------------------------------------------------
--Q5 Display all transactions where the Age is greater than 40
--expected output: all columns
SELECT * 
FROM practical1.dataset.retail_sales
WHERE age > 40;

-------------------------------------------------------------
--Q6 display alltransactions whre the price per unit is between 100 and 500.
--expected output: all colums
SELECT *
FROM practical1.dataset.retail_sales
WHERE price_per_unit BETWEEN 100 AND 500;

------------------------------------------------------------------
--Q7 Display all transactions wherethe product category is either 'beauty' or 'electronics'
--Expected columns: all columns
SELECT *
FROM practical1.dataset.retail_sales
WHERE product_category IN ('buauty', 'Electronics');

-----------------------------------------------------------------
--Q8 display all transaction where the product category is not 'clothing'.
--Expected columns: all column
SELECT *
FROM practical1.dataset.retail_sales
WHERE product_category <> 'clothinh';

-----------------------------------------------------------------
--Q9 Display all transaction where the Quantity is greater than or equal to 3 
--Expected Columns: all columns
SELECT *
FROM practical1.dataset.retail_sales
WHERE quantity >= 3;

-----------------------------------------------------------------
--Q10 Count the total number of transactions.
--Expected columns: Total_Transactions
SELECT COUNT (*) AS Total_Transactions
FROM practical1.dataset.retail_sales;

------------------------------------------------------------------
--Q11 Find the avarage Age of customers.
--Expected columns:
SELECT AVG (Age) AS Avarage_age
FROM practical1.dataset.retail_sales;

------------------------------------------------------------------
--Q12 Find the total quantity of product sold.
--expected column: Totay_Quantity
SELECT Sum (Quantity) AS Total_Quantity
FROM practical1.dataset.retail_sales;

------------------------------------------------------------------
--Q13 Find the Maximum Total Amount spent in a single transaction.
--Expected columns: Max_Total_Amount
SELECT MAX (Total_Amount)AS Max_Total_Amount
FROM practical1.dataset.retail_sales;


------------------------------------------------------------------
--Q14 Find the minimum price per unit in the dataset
--Expected output: Min_Proce_per_Unit.
SELECT MIN (price_per_unit) AS Min_price_per_Unit
FROM practical1.dataset.retail_sales;


------------------------------------------------------------------
--Q15Find the number of transactions per product category
--Expected output: Product_Cutegory, Transaction_Count.
SELECT product_category,COUNT (*) AS Trransaction_Count
FROM practical1.dataset.retail_sales
GROUP BY product_category;

-----------------------------------------------------------------
--Q16Find the total revenue (Total Amout)per gender.
--Expected output: Gender, Total_Revenue.
SELECT gender, SUM (total_amount) AS Total_Revenue
FROM practical1.dataset.retail_sales
GROUP BY gender;
-----------------------------------------------------------------
--Q17 Find the average Price per Unit per product catagory
--Expected output:Product_category, Average_Price
SELECT product_category, AVG (price_per_unit) AS Average_Price
FROM practical1.dataset.retail_sales
GROUP BY product_category;

-----------------------------------------------------------------
--Q18 Find the total revenue per product categorywhere total revenue is greater than 10,00.
--Expected output: Product_Category, Total_Revenue
SELECT Product_category,SUM (total_amount) AS Total_Revenue
FROM practical1.dataset.retail_sales
GROUP BY product_category
HAVING SUM (total_amount) > 10000;
-----------------------------------------------------------------
--Q19 Find the average quantity per product category where the avarage is more than 2.
--Expected output: Product_Category, Avarage_Quantity.
SELECT product_category, AVG (quantity)
AS Avarage_Quantity
FROM practical1.dataset.retail_sales
GROUP BY product_category
HAVING AVG (quantity) > 2;

-----------------------------------------------------------------
--Q20 Display a column called Spending_Level that shows 'High'If total Amount > 1000,
--otherwise'Low'
--Expected output: Transaction ID, Total Amout, Spending_Level
SELECT transaction_id, total_amount,
CASE WHEN total_Amount > 1000 THEN 'High'
ELSE 'Low'
END AS Spending_level
FROM practical1.dataset.retail_sales;
-----------------------------------------------------------------
--Q21 Diplay a new column called Age_Group That labels custermers as
--'Youth' if Age >= 30
--'Adult' if Age is between 30 and 59
--'Senior' if Age >= 60
--Expected output: Customer_id, Age, Age_Group
SELECT customer_id, age, CASE WHEN age < 30 THEN 'Youth'
WHEN age BETWEEN 30 AND 59 THEN 'Adult'
WHEN age >= 60 THEN 'Sinior' END AS Age_Group
FROM practical1.dataset.retail_sa
