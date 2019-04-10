BEGIN;

CREATE SCHEMA IF NOT EXISTS da_sarah;

CREATE TABLE IF NOT EXISTS da_sarah.death_rates(
	country VARCHAR(100),
	cause VARCHAR(100),
	year INTEGER,
	both_sexes_death_rate VARCHAR(100),
	male_death_rate VARCHAR(100),
	female_death_rate VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS da_sarah.population_by_country(
	country_name VARCHAR(100),
	country_code VARCHAR(10),
	year INTEGER,
	population BIGINT
);

CREATE TABLE IF NOT EXISTS da_sarah.air_pollution_data(
	country VARCHAR(100),
	rural VARCHAR(100),
	urban VARCHAR(100),
	total VARCHAR(100)
);

DELETE FROM da_sarah.death_rates;
DELETE FROM da_sarah.population_by_country;
DELETE FROM da_sarah.air_pollution_data;

COPY da_sarah.death_rates FROM 'C:\Users\write\OneDrive\Desktop\DAClass\PracticeLoad\ClassProject\death_rates.csv'
WITH DELIMITER ',' CSV HEADER;

COPY da_sarah.population_by_country FROM 'C:\Users\write\OneDrive\Desktop\DAClass\PracticeLoad\ClassProject\population_by_country.csv'
WITH DELIMITER ',' CSV HEADER;

COPY da_sarah.air_pollution_data FROM 'C:\Users\write\OneDrive\Desktop\DAClass\PracticeLoad\ClassProject\air_pollution_data.csv'
WITH DELIMITER ',' CSV HEADER;

COMMIT;