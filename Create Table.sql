USE Capstone
GO

SELECT
    Climate.State,
    Climate.Temperature,
    Climate.Weather,
    Politics.Political_Leaning,
    CostOfLiving.Category_Points AS cost_of_living_points,
    Crime.Category_Points AS crime_points,
    Education.Category_Points AS education_points,
    Environment.Category_Points AS environment_points,
    HealthCare.Category_Points AS health_care_points,
    JobMarket.Category_Points AS job_market_points,
    Taxes.Category_Points AS taxes_points
INTO StateRankings
FROM 
    Climate
INNER JOIN CostOfLiving ON Climate.State = CostOfLiving.State
INNER JOIN Crime ON Climate.State = Crime.State
INNER JOIN Education ON Climate.State = Education.State
INNER JOIN Environment ON Climate.State = Environment.State
INNER JOIN HealthCare ON Climate.State = HealthCare.State
INNER JOIN JobMarket ON Climate.State = JobMarket.State
INNER JOIN Taxes ON Climate.State = Taxes.State
INNER JOIN Politics ON Climate.State = Politics.State;
