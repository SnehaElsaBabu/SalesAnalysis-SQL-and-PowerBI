--Cleansed Product table--
SELECT 
	   p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
     -- ,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as ProductName,
	  ps.EnglishProductSubcategoryName as SubCategory, -- joined from sub category table
	  pc.EnglishProductCategoryName as Category,--joined from category table

     -- ,[SpanishProductName]
      --,[FrenchProductName]
     -- ,[StandardCost]
     -- ,[FinishedGoodsFlag]
      p.[Color] as ProductColor
      --,[SafetyStockLevel]
     -- ,[ReorderPoint]
     -- ,[ListPrice]
      ,p.[Size] as ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as ProductLine
      --,[DealerPrice]
     -- ,[Class]
      --,[Style]
      ,p.[ModelName] as ProductModelName
     -- ,[LargePhoto]
      ,p.[EnglishDescription] as ProductDescription
     -- ,[FrenchDescription]
     -- ,[ChineseDescription]
     -- ,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
     -- ,[StartDate]
     -- ,[EndDate]
     -- ,[Status]
	 ,Isnull(p.status,'Outdated') as ProductStatus
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
  left join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as ps on p.ProductSubcategoryKey=ps.ProductSubcategoryKey
  left join [AdventureWorksDW2022].[dbo].[DimProductCategory] as pc on ps.ProductCategoryKey =pc.ProductCategoryKey
  order by p.ProductKey
