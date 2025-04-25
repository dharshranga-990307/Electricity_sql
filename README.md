# Electricity_sql
Global Electricity Access & Economic Insights — SQL Data Analysis

# Project Overview

This project explores global electricity access, electricity consumption/production, and economic indicators (GNI per capita) of year 2015 using SQL queries. The dataset is structured in a wide format, with each row representing a country and columns capturing key statistics like rural/urban electricity access, total consumption, and production.

##  Dataset Description

The dataset is taken from world bank data(world Development Indicators).
country_Name- Name of the country
Access_total -% of population with access to electricity (total) 
Access_rural-% of rural population with access to electricity 
Access_urban - % of urban population with access to electricity        
Elec_consu -Total electricity consumption per capita (kWh)  
Elec_production-Total electricity production per capita (kWh)       
GNI_pc-Gross National Income per capita (USD, `BIGINT`) 

## SQL Queries 
1) To check the gap in electricity access between rural and urban population
2) To check the countries which has electricity access less than the global average
3) Electricity consumption per GNI capita
4) Top 10 countries with highest GNI per capita
5) Countries with high GNI but low access to electricity
6) Rank countries by electricity production per capita income
7) Comparing each country access to global average
8) Top 5 countries where electricity production is greater than electricity consumption
9) To check the countries where rural access below 60 percent but urban access is 100

## Findings
(i)Libya has the largest disparity in electricity access between urban and rural areas, highlighting a significant infrastructure gap.
(ii)Kyrgyz Republic has the highest electricity consumption relative to income, followed by Ukraine, suggesting high energy use compared to economic output.
(iii)Liechtenstein ranks #1 in GNI per capita, closely followed by Bermuda, reflecting extremely high economic wealth.
(iv)Panama is a high-income country that still has low rural electricity access, suggesting potential inequality in infrastructure development.
(v)Somalia surprisingly tops in electricity production per capita, possibly due to data anomalies or low population vs. output balance.
(vi)Faroe Islands and Cayman Islands produce more electricity than they consume, making them net exporters or self-sufficient in energy.


