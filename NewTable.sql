SELECT 

	States.State, 
	Climate.Average_High_F, 
	Climate.Precipitation_in,
	Climate.Mold_Count_Allergy_Score,
	CostOfLiving.Median_Household_Income_2021,
	CostOfLiving.Median_Home_Price_2023,
	CostOfLiving.Average_Food_Expenses_2023,
	Crime.Population_Covered,
	Crime.Total_Crime_Rate_Per_100k,
	Crime.Drug_Narcotic_Offenses,
	Education.High_Schools,
	Education.Full_time_Teachers_HS,
	Education.Students_Enrolled_HS,
	Environment.Number_of_State_Parks,
	Environment.Rate_of_State_Covered_In_Parks,
	Environment.Trash_Per_Capita_tons,
	HealthCare.Annual_Average_Healthcare_Cost_2018_2020,
	HealthCare.Primary_Care_Physicians_Per_100k,
	HealthCare.Premature_Deaths_Per_100k,
	JobMarket.Average_Annual_Salary_2023 AS Average_Sa,
	JobMarket.Annual_Unemployment_Rate AS Unemployment,
	Politics.Governor_Party,
	Politics.Political_Leaning,
	Taxes.Annual_State_and_Local_Taxes_on_Median_US_Household AS Taxes_Annual,
	Taxes.Effective_Total_State_and_Local_Tax_Rates_on_Median_US_Household AS Taxes_Rate

INTO StateRankings

From 
	States

	INNER JOIN Climate ON States.State = Climate.State
	INNER JOIN CostOfLiving ON States.State = CostOfLiving.State
	INNER JOIN Crime ON States.State = Crime.State
	INNER JOIN Education ON States.State = Education.State
	INNER JOIN Environment ON States.State = Environment.State
	INNER JOIN HealthCare ON States.State = HealthCare.State
	INNER JOIN JobMarket ON States.State = JobMarket.State
	INNER JOIN Politics ON States.State = Politics.State
	INNER JOIN Taxes ON States.State = Taxes.State