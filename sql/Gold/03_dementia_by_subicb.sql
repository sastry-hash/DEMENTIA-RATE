DROP TABLE IF EXISTS GOLD1.Dementia_By_SubICB;
GO

SELECT
    SUB_ICB_ODS_CODE AS Sub_ICB_Code,
    SUB_ICB_NAME AS Sub_ICB_Name,
    Measure AS Dementia_Measure,
    SUM(Value) AS Dementia_Count,
    MAX(ACH_DATE) AS Last_Updated_Date
INTO GOLD1.Dementia_By_SubICB
FROM SILVER1.PCDEM_CLEAN
GROUP BY SUB_ICB_ODS_CODE, SUB_ICB_NAME, Measure;
GO
