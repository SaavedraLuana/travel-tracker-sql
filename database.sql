-- This file creates the tables and adds data

-- Create a table to store information about countries visited
CREATE TABLE Visits (
    id INTEGER PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    arrival_date DATE NOT NULL,
    departure_date DATE
);

-- Create a table to track personal habits over time
CREATE TABLE Habits (
    id INTEGER PRIMARY KEY,
    habit_description VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    new_habit BOOLEAN NOT NULL -- TRUE if it's a new habit, FALSE if it's old
);

-- Create a table for work experience during your cultural adaptation
CREATE TABLE WorkExperience (
    id INTEGER PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    client_type VARCHAR(100),
    start_date DATE NOT NULL,
    end_date DATE,
    country VARCHAR(100),
    tasks TEXT,
    cultural_relevance VARCHAR(255) -- How this work related to your adaptation
);

-- Create a new table for special cultural experiences
CREATE TABLE CulturalExperiences (
    id INTEGER PRIMARY KEY,
    experience_name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    experience_date DATE NOT NULL,
    feeling_at_moment VARCHAR(255) -- How you felt
);

-- --- --- --- --- ---
-- INSERT DATA HERE
-- --- --- --- --- ---

-- Add data to the Visits table
INSERT INTO Visits (id, country, city, arrival_date, departure_date) VALUES
(1, 'Brazil', 'Rio de Janeiro', '2022-12-15', '2023-01-10'),
(2, 'Spain', 'Madrid', '2023-01-12', '2023-04-20'),
(3, 'Portugal', 'Lisbon', '2023-04-22', '2023-04-25'),
(4, 'Spain', 'Barcelona', '2023-05-01', '2023-05-05');

-- Add data to the Habits table
INSERT INTO Habits (id, habit_description, date, new_habit) VALUES
(1, 'Ate dinner at 10 PM', '2023-01-15', TRUE),
(2, 'Spoke Spanish at the market', '2023-02-20', TRUE),
(3, 'Drank coffee in the afternoon', '2023-02-25', FALSE),
(4, 'Took a walk after lunch', '2023-03-10', TRUE),
(5, 'Used public transport daily', '2023-03-15', TRUE);

-- Add your freelance work entries
INSERT INTO WorkExperience (id, job_title, client_type, start_date, end_date, country, tasks, cultural_relevance) VALUES
(1, 'Freelance English Translator', 'Various clients', '2022-01-01', '2023-12-31', 'Spain', 
   'Translated documents, websites, and marketing materials from Spanish to English', 
   'Helped me understand local business communication styles'),
   
(2, 'Freelance English Copywriter', 'Marketing agencies', '2022-01-01', '2023-12-31', 'Spain', 
   'Created compelling English copy for Spanish businesses targeting international markets', 
   'Gained insights into how Spanish businesses present themselves globally');

-- Add your London experience
INSERT INTO CulturalExperiences (id, experience_name, city, experience_date, feeling_at_moment) VALUES
(1, 'BTS Concert at Wembley Stadium with host kid', 'London', '2019-06-12', 'Excited and connected');
