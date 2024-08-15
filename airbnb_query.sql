SELECT * FROM "dev"."public"."airbnb";

-- Total and Average Revenue per Neighborhoods
SELECT neighbourhood_group, 
       COUNT(*) AS total_listings, 
       SUM(price) AS total_revenue,
       CAST(ROUND(AVG(price), 2) AS DECIMAL(10,2)) AS avg_price
FROM "dev"."public"."airbnb"
GROUP BY neighbourhood_group
ORDER BY total_revenue DESC;

--Revenue Per Room Type in Each Neighborhood
SELECT neighbourhood_group, room_type, 
       COUNT(*) AS total_listings, 
       SUM(price) AS total_revenue,
       CAST(ROUND(AVG(price), 2) AS DECIMAL(10,2)) AS avg_price
FROM airbnb
GROUP BY neighbourhood_group, room_type
ORDER BY total_revenue DESC;

-- Occupancy Rate by Neighborhood Group

SELECT neighbourhood_group,
      ROUND(SUM(CASE WHEN availability_365 < 365 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS occupancy_rate
FROM airbnb
GROUP BY neighbourhood_group
ORDER BY occupancy_rate DESC;


--Average Availability of Listings by Room Type
SELECT room_type, AVG(availability_365) AS avg_availability
FROM airbnb
GROUP BY room_type
ORDER BY avg_availability;

-- Average Review Scores by Neighborhood Group

SELECT neighbourhood_group,
       ROUND(AVG(review_rate_number), 2) AS avg_review_score
FROM airbnb
GROUP BY neighbourhood_group
ORDER BY avg_review_score DESC;

--Listings Distribution by Room Type

SELECT room_type, COUNT(*) AS total_listings
FROM airbnb
GROUP BY room_type
ORDER BY total_listings DESC;

-- Hosts with the Highest Average Review Scores

SELECT host_id, host_name, AVG(review_rate_number) AS avg_review_score
FROM airbnb
GROUP BY host_id, host_name
ORDER BY avg_review_score DESC
LIMIT 10;

-- Correlation Between Price and Review Score

SELECT room_type, 
       AVG(price) AS avg_price, 
       ROUND(AVG(review_rate_number),2) AS avg_review_score
FROM airbnb
GROUP BY room_type
ORDER BY avg_price DESC;

-- Generate Summary Reports for Key Metrics
SELECT neighbourhood_group, 
       COUNT(*) AS total_listings, 
       AVG(price) AS avg_price, 
       SUM(price) AS total_revenue,
       CAST(ROUND(AVG(review_rate_number), 2) AS DECIMAL(10,2))
FROM airbnb
GROUP BY neighbourhood_group
ORDER BY total_revenue DESC;