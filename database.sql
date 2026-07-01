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
