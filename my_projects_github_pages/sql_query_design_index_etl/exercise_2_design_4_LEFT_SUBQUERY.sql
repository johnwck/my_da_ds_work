-- Step 1: Create time to store start and end time
CREATE TABLE IF NOT EXISTS durations_table (source TEXT, time_start_stop TEXT);

-- Step 2: Delete previous data
DELETE FROM durations_table;

-- Step 3: This is the start time
INSERT INTO durations_table (source, time_start_stop) VALUES ('start', julianday('now'));

-- Step 4: Your query
-- #################### Design 4 ##########################################
SELECT t1.*, t2.*
FROM table_1 t1
LEFT JOIN (SELECT * FROM table_2 WHERE value_float >= 1500) t2
ON t1.value_string = t2.value_string
WHERE t2.id IS NOT NULL;

-- Step 5: This is the end time
INSERT INTO durations_table (source, time_start_stop) VALUES ('end', julianday('now'));

-- Step 6: Display start and end time in human understandable format
SELECT source, strftime('%Y-%m-%d %H:%M:%f', time_start_stop) AS date_time FROM durations_table;

-- Step 7: ONLY IF NECESSARY
-- DROP TABLE durations_table;

EXPLAIN QUERY PLAN
SELECT t1.*, t2.*
FROM table_1 t1
LEFT JOIN (SELECT * FROM table_2 WHERE value_float >= 1500) t2
ON t1.value_string = t2.value_string
WHERE t2.id IS NOT NULL;

EXPLAIN
SELECT t1.*, t2.*
FROM table_1 t1
LEFT JOIN (SELECT * FROM table_2 WHERE value_float >= 1500) t2
ON t1.value_string = t2.value_string
WHERE t2.id IS NOT NULL;
