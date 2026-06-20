SELECT *
FROM vehicle_analysis
LIMIT 10


-- Rank states by EV adoption
SELECT
    state,
    electric,
    electric_percent,
    RANK() OVER (ORDER BY electric_percent DESC) AS electric_percent_rank
FROM vehicle_analysis
ORDER BY electric_percent DESC;


-- Rank states by electrified vehicle adoption
SELECT
    state,
    electrified_total,
    electrified_percent,
    RANK() OVER (ORDER BY electrified_percent DESC) AS electrified_rank
FROM vehicle_analysis
ORDER BY electrified_percent DESC;


-- Compare alternative fuel vs traditional fuel dependence
SELECT
    state,
    alternative_fuel_percent,
    traditional_fuel_percent,
    CASE
        WHEN alternative_fuel_percent >= 15 THEN 'High alternative fuel adoption'
        WHEN alternative_fuel_percent >= 12 THEN 'Moderate alternative fuel adoption'
        ELSE 'Low alternative fuel adoption'
    END AS alternative_fuel_category
FROM vehicle_analysis
ORDER BY alternative_fuel_percent DESC;


-- Identify each state’s dominant fuel pattern
SELECT
    dominant_alternative_fuel_type,
    COUNT(*) AS number_of_states
FROM vehicle_analysis
GROUP BY dominant_alternative_fuel_type
ORDER BY number_of_states DESC;


-- Find states where gasoline still dominates heavily
SELECT
    state,
    gasoline_percent,
    diesel_percent,
    traditional_fuel_percent
FROM vehicle_analysis
ORDER BY gasoline_percent DESC;


-- Find outlier states
SELECT
    state,
    electric_percent,
    electric_percent - AVG(electric_percent) OVER () AS difference_from_avg
FROM vehicle_analysis
ORDER BY difference_from_avg DESC;