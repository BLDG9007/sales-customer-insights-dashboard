USE BI_Week3;
GO

SELECT DB_NAME() AS CurrentDatabase;
SELECT 
    TABLE_SCHEMA,
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;

SELECT TABLE_SCHEMA, TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES;

SELECT TOP 10 * 
FROM dbo.superstore;

SELECT TOP 10 * FROM dbo.superstore;

SELECT 
    Region, 
    SUM(Sales) AS Total_Sales
FROM dbo.superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT 
    Region, 
    SUM(Sales) AS Total_Sales
FROM dbo.superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT 
    YEAR([Order_Date]) AS Year,
    MONTH([Order_Date]) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM dbo.superstore
GROUP BY YEAR([Order_Date]), MONTH([Order_Date])
ORDER BY Year, Month;

SELECT TOP 10 
    [Product_Name], 
    SUM(Sales) AS Total_Sales
FROM dbo.superstore
GROUP BY [Product_Name]
ORDER BY Total_Sales DESC;

SELECT DB_NAME() AS DB, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;

SELECT 
    Region, 
    SUM(Sales) AS Total_Sales
FROM dbo.superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM dbo.superstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;

SELECT TOP 10 
    [Product_Name], 
    SUM(Sales) AS Total_Sales
FROM dbo.superstore
GROUP BY [Product_Name]
ORDER BY Total_Sales DESC;

SELECT 
    Category,
    SUM(TRY_CAST(Sales AS FLOAT)) AS Total_Sales,
    SUM(TRY_CAST(Profit AS FLOAT)) AS Total_Profit
FROM dbo.superstore
GROUP BY Category;

SELECT 
    Segment, 
    COUNT(DISTINCT [Customer_ID]) AS Customers
FROM dbo.superstore
GROUP BY Segment;

SELECT 
    Category,
    SUM (TRY_CAST(Sales AS FLOAT)) AS Total_Sales,
    SUM (TRY_CAST(Profit AS FLOAT)) AS Total_Profit,
    (SUM (TRY_CAST(Profit AS FLOAT)) * 100.0 / SUM (TRY_CAST(Sales AS FLOAT))) AS Profit_Margin
FROM dbo.superstore
GROUP BY Category
ORDER BY Profit_Margin DESC;


