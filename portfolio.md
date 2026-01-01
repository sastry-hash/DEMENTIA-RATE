# Data Portfolio

This portfolio contains a collection of data engineering and analytics projects demonstrating skills in data warehousing, SQL-based ETL, and business intelligence reporting.

---

## Project: Dementia Rates Data Warehouse & Power BI Dashboard

### Overview
An end-to-end data warehousing and analytics project designed to analyse dementia prevalence across local authorities. The project integrates population data, dementia indicators, and geographic lookup data into a SQL Server data warehouse and presents insights through a Power BI dashboard.

---

### Technologies Used
- SQL Server  
- T-SQL  
- Power BI  
- GitHub  

---

### Project Structure
# Data Portfolio

This portfolio contains a collection of data engineering and analytics projects demonstrating skills in data warehousing, SQL-based ETL, and business intelligence reporting.

---

## Project: Dementia Rates Data Warehouse & Power BI Dashboard

### Overview
An end-to-end data warehousing and analytics project designed to analyse dementia prevalence across local authorities. The project integrates population data, dementia indicators, and geographic lookup data into a SQL Server data warehouse and presents insights through a Power BI dashboard.

---

### Technologies Used
- SQL Server  
- T-SQL  
- Power BI  
- GitHub  

---

### Project Structure
DEMENTIA-RATE/
├── dashboard/
│ └── screenshots/
│
├── data/
│ └── raw/
│ ├── mye2_population.csv
│ ├── pcdem_dementia.csv
│ └── lsoa_icb_lad_lookup.csv
│
├── sql/
│ ├── bronze/
│ ├── silver/
│ └── gold/
│
└── README.md

---

### Data Sources
- **Population Estimates (MYE2)** – Population counts by age and local authority  
- **Dementia Indicators (PCDEM)** – Dementia case counts by NHS geographies  
- **Geographic Lookup Table** – Mapping between LSOA, Sub-ICB, ICB, and local authority areas  

---

### Architecture
The project follows a **Medallion Architecture**:

- **Bronze Layer:** Raw ingestion of source datasets  
- **Silver Layer:** Data cleaning, standardisation, and preparation  
- **Gold Layer:** Aggregated analytical models optimised for reporting  

---

### Outputs
- Analytics-ready SQL Server tables and views
- Power BI dashboard visualising:
  - Dementia prevalence by local authority
  - Population aged 65 and over
  - Dementia rates per 1,000 elderly population
  - Geographic and temporal trends

---

### Key Skills Demonstrated
- Data warehousing design
- SQL-based ETL pipelines
- Analytical modelling
- Health data analysis
- Dashboard-driven reporting

---

## Future Projects
Additional projects will be added to this portfolio, each following a similar structure with clear documentation, reproducible pipelines, and analytical outputs.
