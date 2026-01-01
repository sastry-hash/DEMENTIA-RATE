DROP TABLE IF EXISTS GOLD1.LA_Dementia_Risk;
GO

CREATE TABLE GOLD1.LA_Dementia_Risk (
    LA_Code VARCHAR(20),
    LA_Name VARCHAR(200),
    Total_Population BIGINT,
    Age65Plus BIGINT,
    Dementia_Measure VARCHAR(100),
    Dementia_Count BIGINT,
    Dementia_Per_1000_Elderly FLOAT,
    Sub_ICB_Code VARCHAR(20),
    Sub_ICB_Name VARCHAR(300),
    Last_Updated_Date DATE
);
GO

INSERT INTO GOLD1.LA_Dementia_Risk
SELECT
    p.LA_Code,
    l.LAD23NM,
    p.Total_Population,
    p.Age65Plus,
    d.Dementia_Measure,
    d.Dementia_Count,
    CASE 
        WHEN p.Age65Plus = 0 THEN NULL
        ELSE d.Dementia_Count * 1000.0 / p.Age65Plus 
    END,
    d.Sub_ICB_Code,
    d.Sub_ICB_Name,
    d.Last_Updated_Date
FROM GOLD1.Population_By_LA p
LEFT JOIN SILVER1.LSOA_TO_SICBL_LAD l 
    ON p.LA_Code = l.LAD23CD
LEFT JOIN GOLD1.Dementia_By_SubICB d 
    ON l.SICBL23CD = d.Sub_ICB_Code;
GO
