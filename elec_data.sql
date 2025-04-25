use pratice;
select * from wb_data1;
select * from wb_data1 where Access_total>90;

#1) To check the gap in electricity access between rural and urban population
SELECT 
    Country_name,
    Access_urban,
    Access_rural,
    ROUND(Access_urban - Access_rural, 2) AS Access_Gap
FROM wb_data1
ORDER BY Access_Gap DESC;

#2)To check the countries which has electricity access less than the global average

SELECT 
    Country_name,
    Access_total
FROM wb_data1
WHERE Access_total < (
    SELECT AVG(Access_total)
    FROM wb_data1
)
ORDER BY Access_total ASC;

#3)Electricity consumption per GNI capita

SELECT 
    Country_name,
    GNI_pc,
    Elec_consu,
    ROUND(Elec_consu * 1.0 / NULLIF(GNI_pc, 0), 4) AS Elec_per_GNI
FROM wb_data1
ORDER BY Elec_per_GNI DESC;

#4)top 10 countries with highest GNI per capita

SELECT 
    Country_name,
    GNI_pc
FROM wb_data1
ORDER BY GNI_pc DESC
LIMIT 10;

#5)countries with high GNI but low access to electricity
SELECT 
    Country_name,
    GNI_pc,
    Access_rural
FROM wb_data1
WHERE Access_rural < 80 AND GNI_pc > 10000
ORDER BY GNI_pc DESC;

#6)Rank countries by electricity production per capita income
WITH Efficiency AS (
    SELECT 
        Country_name,
        Elec_production,
        GNI_pc,
        ROUND(Elec_production * 1.0 / NULLIF(GNI_pc, 0), 4) AS Prod_per_GNI
    FROM wb_data1
)
SELECT * 
FROM Efficiency
ORDER BY Prod_per_GNI DESC;

#7)comparing each country access to global average

SELECT 
    w.Country_name,
    w.Access_total,
    avg_stats.avg_access_total,
    w.Access_total - avg_stats.avg_access_total AS Access_Deviation
FROM wb_data1 w
JOIN (
    SELECT AVG(Access_total) AS avg_access_total
    FROM wb_data1
) avg_stats ON 1=1
ORDER BY Access_Deviation ASC;

#8) Top 5 countries where electricity production is greater than electricity consumption
SELECT Country_name, Elec_production, Elec_consu, GNI_pc
FROM wb_data1
WHERE Elec_production > Elec_consu
ORDER BY GNI_pc DESC
LIMIT 5;

#9)To check the countries where rural access below 60 percent but urban access is 100
WITH Rural_Urban_Gap AS (
    SELECT Country_name, Access_rural, Access_urban
    FROM wb_data1
    WHERE Access_rural < 60 AND Access_urban = 100
)
SELECT * FROM Rural_Urban_Gap
ORDER BY Access_rural;

