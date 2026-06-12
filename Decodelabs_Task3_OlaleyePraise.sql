SELECT Product, PaymentMethod, CouponCode
From dbo.Sheet1$

Select ISNULL (CouponCode, 'NO_COUPON') AS CouponCode
From dbo.Sheet1$

UPDATE dbo.Sheet1$
SET CouponCode = 'NO_COUPON'
WHERE CouponCode IS NULL

SELECT *
FROM dbo.Sheet1$

SELECT SUM(TotalPrice) AS Sum_TotalPrice, 
Avg(TotalPrice) AS Avg_TotalPrice, 
Count(TotalPrice) AS CountTotalPrice
FROM dbo.Sheet1$

SELECT OrderID, TotalPrice, Quantity, Product
From dbo.Sheet1$
Where Quantity < 3

Select Product, UnitPrice, Quantity
From dbo.Sheet1$
Where UnitPrice > 300.00
Order By Product

Select Date,
Day(Date) AS Day,
Month(Date) AS Month,
Year(Date) AS Year
From dbo.Sheet1$

Alter Table dbo.Decodelabs ADD DayName Varchar (50)
Alter Table dbo.Decodelabs ADD MonthName Varchar (50)
Alter Table dbo.Decodelabs ADD YearName Varchar (50)

Update dbo.Decodelabs
SET DayName = DATENAME(WEEKDAY, Date);

Select Date, DayName
From Decodelabs

Update dbo.Decodelabs
SET MonthName = DATENAME(MONTH, Date);

Update dbo.Decodelabs
SET YearName = DATENAME(YEAR, Date);

Select *
From Decodelabs

Select Distinct Product, YearName
From Decodelabs
Where YearName = 2025

Select  DISTINCT PaymentMethod, MonthName
From Decodelabs
Where MonthName = 'January'

select OrderStatus,
Count (Product) as Product_Count
From Decodelabs
Group By OrderStatus

