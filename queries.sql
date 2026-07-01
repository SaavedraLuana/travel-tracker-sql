-- This file asks questions to our data

-- QUESTION 1: What countries did I visit?
SELECT DISTINCT country
FROM Visits
ORDER BY country;

-- QUESTION 2: How many new habits did I create?
SELECT COUNT(id) AS total_new_habits
FROM Habits
WHERE new_habit = TRUE;

-- QUESTION 3: Show me all visits and habits from March 2023
-- This query shows a more advanced technique
SELECT 
    'Visit to ' || country AS "Description",
    arrival_date AS "Date"
FROM 
    Visits
WHERE 
    arrival_date >= '2023-03-01' AND arrival_date <= '2023-03-31'
    
UNION ALL

SELECT 
    habit_description AS "Description",
    date AS "Date"
FROM 
    Habits
WHERE 
    date >= '2023-03-01' AND date <= '2023-03-31'
    
ORDER BY 
    "Date";
-- QUESTION 4: What were my most memorable cultural experiences?
SELECT experience_name, city, experience_date, feeling_at_moment
FROM CulturalExperiences
ORDER BY experience_date DESC;
