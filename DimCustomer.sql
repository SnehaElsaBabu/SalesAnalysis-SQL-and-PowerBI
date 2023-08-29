--Cleansed DimCustomer Table--
SELECT 
  c.[CustomerKey] as CustomerKey 
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] as Firstname 
  -- ,[MiddleName]
  , 
  c.[LastName] as LastName, 
  c.[FirstName] + ' ' + c.[LastName] as FullName 
  -- ,[NameStyle]
  --,[BirthDate]
  -- ,[MaritalStatus]
  --  ,[Suffix]
  , 
  case c.[Gender] when 'M' then 'Male' when 'F' then 'Female' end as Gender 
  -- ,[EmailAddress]
  --,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  --,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.[DateFirstPurchase] as DateFirstPurchase, 
  --,[CommuteDistance]
  g.[city] as CustomerCity   --joined in customer city from geography table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2022].[dbo].[DimGeography] as g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey desc  -- ordered by customer key in descending order
