SELECT * 
FROM da_sarah.population_by_country
LIMIT 100;

SELECT country, cause, both_sexes_death_rate
FROM da_sarah.death_rates
LIMIT 100;

SELECT COUNT(country_name)
FROM da_sarah.population_by_country
LIMIT 100;

SELECT country_name, population, SUM(population)
FROM da_sarah.population_by_country
GROUP BY country_name, population
LIMIT 100;

