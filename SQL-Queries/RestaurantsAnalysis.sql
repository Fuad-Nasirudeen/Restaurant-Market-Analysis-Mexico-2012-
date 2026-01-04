-- 1. Highest rated restaurants
SELECT 
	r.restaurant_id,
	r.name,
	r.alcohol_service,
	r.price,
	r.city,
	avg(rt.overall_rating) as avg_rating,
	count(rt.overall_rating) as count_rating
FROM ratings rt
JOIN restaurants r
	ON r.restaurant_id = rt.restaurant_id
GROUP BY r.restaurant_id, r.name
HAVING count(rt.overall_rating) > 10
ORDER BY avg_rating DESC
LIMIT 20
;


-- Impact of Cuisines on Ratings
SELECT 
	rc.cuisine, 
	AVG(rt.overall_rating) AS Avg_Rating, 
	COUNT(*) AS Count
FROM ratings rt
JOIN restaurant_cuisines rc 
	ON rt.restaurant_id = rc.restaurant_id
GROUP BY rc.cuisine
HAVING COUNT(*) > 10
ORDER BY Avg_Rating DESC;

-- consumer preferences effect on ratings

SELECT 
	r.restaurant_id,
	r.name,
	cp.preferred_cuisine,	
	sum(rt.overall_rating) as total_rating,
	count(rt.overall_rating) as count_rating,
	sum(rt.food_rating) as food_rating,
	sum(rt.service_rating) as service_rating
FROM ratings rt
JOIN restaurants r
	ON r.restaurant_id = rt.restaurant_id
JOIN consumer_preferences cp
	ON cp.consumer_id = rt.consumer_id
GROUP BY r.restaurant_id, r.name, cp.preferred_cuisine
ORDER BY total_rating DESC
LIMIT 10
;


SELECT
    CASE WHEN EXISTS (
        SELECT 1 FROM restaurant_cuisines rc
        JOIN consumer_preferences cp ON rc.cuisine = cp.preferred_cuisine
        WHERE rc.restaurant_id = rt.restaurant_id AND cp.consumer_id = rt.consumer_id
    ) THEN 'Match' ELSE 'No Match' END as Preference_Match,
    AVG(overall_rating) as Avg_Rating,
    COUNT(*) as Review_Count
FROM ratings rt
GROUP BY Preference_Match;





-- 2. consumer demographics
SELECT min(age), max(age), avg(age)
FROM consumers;

select occupation, budget, count(*)
from consumers
group by occupation, budget;

select smoker, drink_level, count(*)
from consumers
GROUP BY smoker, drink_level;

select marital_status, children, count(*)
from consumers
GROUP BY marital_status, children;

SELECT city, state, count(*) as consumer_count
FROM consumers
GROUP BY city, state


--3. Demand and Supply gaps
SELECT
    cp.preferred_cuisine,
    COUNT(DISTINCT cp.consumer_id) AS demand,
    COUNT(DISTINCT rc.restaurant_id) AS supply,
    (COUNT(DISTINCT cp.consumer_id) - COUNT(DISTINCT rc.restaurant_id)) AS Gap
FROM consumer_preferences cp
LEFT JOIN restaurant_cuisines rc 
	ON cp.preferred_cuisine = rc.cuisine
GROUP BY cp.preferred_cuisine
HAVING COUNT(DISTINCT cp.consumer_id) > COUNT(DISTINCT rc.restaurant_id) OR COUNT(DISTINCT rc.restaurant_id) = 0
ORDER BY Gap DESC;

--4. Investment 
SELECT
    r.alcohol_service,
    r.price,
    r.parking,
	r.city,
    AVG(rt.overall_rating) AS Avg_Rating,
    COUNT(*) AS Total_Reviews
FROM ratings rt
JOIN restaurants r 
	ON rt.restaurant_id = r.restaurant_id
GROUP BY r.alcohol_service, r.price, r.parking, r.city
HAVING COUNT(*) > 15
ORDER BY Avg_Rating DESC;


-- Cuisines 
SELECT 
	rc.cuisine, 
	AVG(rt.overall_rating) AS Avg_Rating, 
	COUNT(*) AS Count
FROM ratings rt
JOIN restaurant_cuisines rc 
	ON rt.restaurant_id = rc.restaurant_id
GROUP BY rc.cuisine
ORDER BY Avg_Rating DESC;
