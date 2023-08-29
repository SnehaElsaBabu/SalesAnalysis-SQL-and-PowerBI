--Cleansed DimDate table--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as DATE
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek]  as DAY
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as WEEK,
  [EnglishMonthName]  as MONTH
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName]
  , 
  LEFT([EnglishMonthName],3) as MonthStart,
  [MonthNumberOfYear] as MONTHNUMBER,
  [CalendarQuarter] as QUARTER,
  [CalendarYear] as YEAR
  --,[CalendarSemester]
  -- ,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]

  where CalendarYear>=2019
