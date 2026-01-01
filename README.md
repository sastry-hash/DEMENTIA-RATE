# Dementia Rates Data Warehouse & Power BI Dashboard

## Project Overview
This project implements an end-to-end data pipeline and analytical dashboard to analyse dementia prevalence across local authorities. Raw population, dementia, and geographic lookup data are ingested into a SQL Server data warehouse using a medallion architecture (Bronze, Silver, Gold), with final analytical models consumed by a Power BI dashboard to visualise dementia rates and related demographic indicators.

---

## Data Sources
The project uses three core datasets:

- **Population Estimates (MYE2)**  
  Population counts by age and local authority, used to calculate total population and the population aged 65 and over.

- **Dementia Indicators (PCDEM)**  
  Reported dementia case counts by NHS geographies (Sub-ICB, ICB, region) and reporting period, used to measure dementia prevalence.

- **Geographic Lookup Table**  
  Lookup data mapping Lower Layer Super Output Areas (LSOAs) to Sub-ICB, ICB, and local authority codes, enabling consistent geographic joins across datasets.

---

## Warehouse Architecture
The data warehouse follows a Medallion Architecture:

### Bronze Layer
- Raw ingestion of source CSV files  
- No transformations applied  
- Preserves original data structure  

### Silver Layer
- Data cleaning and standardisation  
- Trimming of text fields  
- Data type conversions (e.g. dates)  
- Prepared for analytical joins  

### Gold Layer
- Aggregated and analytics-ready tables  
- Business logic applied  
- Optimised for dashboard consumption  

---

## Key Gold Tables and Views
- **Population_By_LA** – Aggregated population metrics by local authority  
- **Dementia_By_SubICB** – Dementia counts by Sub-ICB and measure  
- **LA_Dementia_Risk** – Final analytical table combining population and dementia data  
- **vw_LA_Dementia_Latest** – Latest dementia values per local authority  
- **vw_LA_Dementia_Trend** – Historical dementia trends over time  

---

## Power BI Dashboard
The Power BI dashboard is built on the Gold layer of the data warehouse, primarily using the `LA_Dementia_Risk` table and supporting views. It visualises dementia prevalence, population aged 65 and over, dementia rates per 1,000 elderly population, and geographic and temporal trends.

---

## Tools & Technologies
- SQL Server – Data warehousing and transformations  
- T-SQL – ETL logic and analytical modelling  
- Power BI – Data visualisation and dashboarding  
- GitHub – Version control and documentation  

---

## How to Run
1. Load raw CSV files into the specified local directory.
2. Execute SQL scripts in order:
   - Bronze layer
   - Silver layer
   - Gold layer
3. Connect Power BI to the Gold tables and views.
4. Refresh the dashboard.

---

## Purpose
This project demonstrates practical skills in data warehousing, SQL-based ETL, and analytical dashboard development, with a focus on health data analysis and geographic reporting.
