-- Membuat database baru bernama insurance_cross_sell
CREATE DATABASE insurance_cross_sell;
USE insurance_cross_sell;


-- Membuat tabel penampung utama
CREATE TABLE raw_insurance (
    id INT PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT,
    Driving_License INT,
    Region_Code FLOAT,
    Previously_Insured INT,
    Vehicle_Age VARCHAR(20),
    Vehicle_Damage VARCHAR(5),
    Annual_Premium FLOAT,
    Policy_Sales_Channel FLOAT,
    Vintage INT,
    Response INT
);


-- Input sumber data insurance_sales.csv
LOAD DATA LOCAL INFILE 'C:/Users/Adhityo/Documents/SQL Project 1/insurance_sales.csv'
INTO TABLE raw_insurance
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS;


-- Bagi tabel raw_insurance menjadi 3 tabel: 
-- 1. dim_customer
# Profil demografi nasabah
CREATE TABLE dim_customer AS
SELECT 
    id,
    Gender,
    Age,
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '>45'
    END AS Age_Group,
    Region_Code
FROM raw_insurance;

-- 2. dim_vehicle
# Atribut yang berkaitan dengan aset dan risiko berkendara nasabah
CREATE TABLE dim_vehicle AS
SELECT 
    id,
    Driving_License,
    Vehicle_Age,
    Vehicle_Damage
FROM raw_insurance;

-- 3. fact_cross_sell
# Berisi nilai uang, metrik durasi, dan respons target
CREATE TABLE Fact_Cross_Sell AS
SELECT 
    id,
    Policy_Sales_Channel,
    Previously_Insured,
    Vintage,
    Annual_Premium,
    Response
FROM raw_insurance;