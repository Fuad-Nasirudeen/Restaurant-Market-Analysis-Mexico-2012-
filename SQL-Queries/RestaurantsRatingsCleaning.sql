UPDATE restaurants
SET
    name = TRIM(name),
    city = TRIM(city),
    state = TRIM(state),
-- Handling missing values 
    alcohol_Service = COALESCE(NULLIF(TRIM(alcohol_service), ''), 'None'),
    parking = COALESCE(NULLIF(TRIM(parking), ''), 'None'),
    zip_code = COALESCE(NULLIF(TRIM(zip_code), ''), 'Unknown');


UPDATE consumers
SET
-- Handling missing values
   	smoker = COALESCE(NULLIF(TRIM(smoker), ''), 'No'),
    transportation_method = COALESCE(NULLIF(TRIM(transportation_method), ''), 'Unknown'),
    marital_status = COALESCE(NULLIF(TRIM(marital_status), ''), 'Single'),
    children = COALESCE(NULLIF(TRIM(children), ''), 'Independent'),
    occupation = COALESCE(NULLIF(TRIM(occupation), ''), 'Unknown'),
    Budget = COALESCE(NULLIF(TRIM(budget), ''), 'Medium');


-- Removing Duplicates from consumer_preferences
DELETE FROM consumer_preferences
WHERE rowid NOT IN (
    SELECT MIN(rowid)
    FROM consumer_preferences
    GROUP BY consumer_id, preferred_cuisine
);



-- Ensuring consistent casing and trimming for joins between restaurants and preferences
UPDATE restaurant_cuisines SET cuisine = TRIM(cuisine);
UPDATE consumer_preferences SET preferred_cuisine = TRIM(preferred_cuisine);



-- Delete any ratings that refer to non-existent consumers or restaurants (Clean orphan records)
DELETE FROM ratings
WHERE consumer_id NOT IN (SELECT consumer_id FROM consumers)
   OR restaurant_id NOT IN (SELECT restaurant_id FROM restaurants);










   