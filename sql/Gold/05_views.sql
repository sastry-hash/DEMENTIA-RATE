-- Latest dementia values per Local Authority
DROP VIEW IF EXISTS GOLD1.vw_LA_Dementia_Latest;
GO

CREATE VIEW GOLD1.vw_LA_Dementia_Latest AS
SELECT *
FROM GOLD1.LA_Dementia_Risk
WHERE Last_Updated_Date = (
    SELECT MAX(Last_Updated_Date)
    FROM GOLD1.LA_Dementia_Risk
);
GO

-- Historical trend view
DROP VIEW IF EXISTS GOLD1.vw_LA_Dementia_Trend;
GO

CREATE VIEW GOLD1.vw_LA_Dementia_Trend AS
SELECT
    LA_Code,
    LA_Name,
    Dementia_Measure,
    Last_Updated_Date,
    Dementia_Count,
    Dementia_Per_1000_Elderly
FROM GOLD1.LA_Dementia_Risk;
GO
