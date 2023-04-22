-- Merging data from Dec 2021 to Nov 2022 into one dataset

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

-- Create a new table

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

-- Inserting merged data into new table
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


SELECT *
FROM Bike_Data 

--TO GET THE COUNT OF RIDES FOR THE ENTIRE DATASET GROUPED BY THE DIFFERENT RIDER_CLASS
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
ORDER BY bike_type 

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

-- View for geospatial data for all rides
	CREATE VIEW geospatial_data as
SELECT ride_id,
	rider_class,
	start_lat,
	start_lng,
	end_lat,
	end_lng
FROM Bike_Data
GROUP BY ride_id,
	rider_class,
	start_lat,
	start_lng,
	end_lat,
	end_lng
ORDER BY ride_id 

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
