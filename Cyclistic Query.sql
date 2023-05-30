-- CASE STUDY: HOW DOES A BIKE-SHARE NAVIGATE SPEEDY SUCCESS?

-- TABLE OF CONTENT

-- Introduction
-- Exploratory Analysis
-- Conclusion

/* INTRODUCTION

Cyclistic is an imaginary bike-sharing company that started out in 2016 and has grown its fleet to about 5,824 bicycles. Until now, Cyclistic's marketing strategy relied on 
building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride
passes, full-day passes, and annual memberships. Customers who pursue single-ride or full-day passes are referred  to as casual riders. Customers who purchase annual memberships
are called cyclistic members.
The Director of Marketing believes the company's future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual 
riders and annual members use cyclistic bikes differently and this will form the basis of our analysis.*/

/* ABOUT THE DATASET
This dataset features twelve months of data from December 2021 to November 2022 all stored in excel sheets per month and months data has 13 columns showing different attributes
of the data. This dataset was retrieved from Cousera as it forms part of the portfolio case study for the Google Data Analytics certificate.*/

-- OBJECTIVES
/* The primary objectives of this data analysis project are:
1) Discover how annual members and casual riders use cyclistic bikes differently.
2) Give Top 3 recommendations on how the company can influence casual riders to purchase annual memberships.*/

-- METHODOLOGY
/* 
WITH EXCEL
1) Data Cleaning: Remove any duplicates, missing values, or irrelevant columns from each of the dataset to be done with excel.
2) Conduct descriptive analysis, calculate mean of ride length, maximum, mode of day of week.
3) Create Pivot tables to quickly calculate and visualize the data.

WITH SQL
4) Merge all of the cleaned data into one table to use for analysis.
5) Investigate trends on data to gain insights on the objectives of this project.

WITH TABLEAU
6) Create effective data visualization to present your findings.
7) Give your Top 3 recommendations on how the company can influence casual riders to purchase annual memberships.
*/

-- EXPLORATORY ANALYSIS

-- Merging 12 months of data from Dec 2021 to Nov 2022 into one dataset

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Dec_2021]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Jan_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Feb_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Mar_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Apr_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[May_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Jun_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Jul_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Aug_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Sep_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Oct_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Nov_2022] 

-- On merging the dataset, we how have 5,733,451 rows and 12 columns in the dataset. 

-- Create a new table and insert into it the merged dataset

	CREATE TABLE Bike_Data (
		ride_id nvarchar(225),
		bike_type nvarchar(225),
		ride_date date,
		start_time sql_variant,
		end_time sql_variant,
		start_lat float,
		start_lng float,
		end_lat float,
		end_lng float,
		rider_class nvarchar(225),
		ride_length sql_variant,
		day_of_week float
	);

-- Inserting merged data into new table Bike_Data
INSERT INTO Bike_Data
SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Dec_2021]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Jan_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Feb_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Mar_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Apr_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[May_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Jun_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Jul_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Aug_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Sep_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Oct_2022]
UNION ALL

SELECT ride_id,
	rideable_type AS bike_type,
	CAST([ride_date] as date) AS [ride_date],
	CAST([start_time] as time(0)) AS [start_time],
	CAST([end_time] as time(0)) AS [end_time],
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual AS rider_class,
	CAST([ride_length] as time(0)) AS [ride_length],
	day_of_week
FROM [dbo].[Nov_2022]

-- ASSESSING THE NEWLY MERGED DATASET
SELECT *
FROM Bike_Data 

--TO GET THE COUNT OF RIDES FOR THE ENTIRE DATASET GROUPED BY THE DIFFERENT RIDER_CLASSES
SELECT rider_class,
	COUNT(*) as sum_of_rides
FROM Bike_Data
GROUP BY rider_class 

-- TO GET RIDE COUNT FOR THE DIFFERENT BIKE_TYPES AND RIDER_CLASS
SELECT bike_type,
	rider_class,
	COUNT (*) AS sum_of_rides
FROM Bike_Data
GROUP BY bike_type,
	rider_class
ORDER BY sum_of_rides DESC 

-- TO GET SUM OF RIDES BY RIDER_CLASS FOR THE DIFFERENT DAYS OF THE WEEK
SELECT rider_class,
	day_of_week,
	COUNT(*) AS sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	day_of_week
ORDER BY day_of_week 

-- TO RETRIEVE COUNT OF RIDES PER MONTH GROUPED BY THE RIDER_CLASS
SELECT Year(ride_date) as ride_year,
	Month(ride_date) as ride_month,
	rider_class,
	COUNT(*) as sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	Year(ride_date),
	Month(ride_date)
ORDER BY Year(ride_date),
	Month(ride_date) 
	
-- TO RETRIEVE THE COUNT OF RIDES PER QUARTER FOR EACH RIDER_CLASS
SELECT Year(ride_date) as ride_year,
	DATEPART(quarter, ride_date) as year_quarter,
	rider_class,
	COUNT(*) as sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	Year(ride_date),
	DATEPART(quarter, ride_date)
ORDER BY Year(ride_date),
	DATEPART(quarter, ride_date) 
	
	-- CREATING VIEWS 
	
-- View for total ride count for the two rider class
	CREATE VIEW Total_ride_count as
SELECT rider_class,
	COUNT(*) as sum_of_rides
FROM Bike_Data
GROUP BY rider_class 

-- View for the count of different bike types used by the two rider class
	CREATE VIEW bike_typeVSrider_class_count as
SELECT bike_type,
	rider_class,
	COUNT (*) AS sum_of_rides
FROM Bike_Data
GROUP BY bike_type,
	rider_class
ORDER BY bike_type 

-- View for ride count of the rider class for everyday of the week
	CREATE VIEW rider_classVSday_of_week_count as
SELECT rider_class,
	day_of_week,
	COUNT(*) AS sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	day_of_week
ORDER BY day_of_week 


-- View for ride count per month for each rider_class
	CREATE VIEW ride_count_per_month as
SELECT Year(ride_date) as ride_year,
	Month(ride_date) as ride_month,
	rider_class,
	COUNT(*) as sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	Year(ride_date),
	Month(ride_date)
ORDER BY Year(ride_date),
	Month(ride_date) 
	
-- View for rider class ride count per quarter
	CREATE VIEW ride_count_per_quarter as
SELECT Year(ride_date) as ride_year,
	DATEPART(quarter, ride_date) as year_quarter,
	rider_class,
	COUNT(*) as sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	Year(ride_date),
	DATEPART(quarter, ride_date)
ORDER BY Year(ride_date),
	DATEPART(quarter, ride_date) 

-- View for ride count per day of the week for each rider class
	CREATE VIEW Day_of_Week VS Rider_Class
SELECT rider_class,
	day_of_week,
	COUNT(*) AS sum_of_rides
FROM Bike_Data
GROUP BY rider_class,
	day_of_week
ORDER BY day_of_week
/* The tables created from the views in this analysis and the top3 recommendations on how the convert casual riders to annual members will be made with be made on Tableau */
