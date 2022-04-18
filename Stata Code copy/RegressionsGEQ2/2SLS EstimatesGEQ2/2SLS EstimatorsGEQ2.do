
TWO-STAGE LEAST SQUARES ESTIMATOR

#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsGEQ2/2SLS EstimatesGEQ2/Replication(2SLS)GEQ2"
log using "/Users/nitashajhala/Desktop/Stata Code/RegressionsGEQ2/2SLS EstimatesGEQ2/Replication_2SLSGEQ2.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson _storm_granted_family_ge_2_count death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 stormks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _storm_granted_family_ge_2_count  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 stormks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson _drought_granted_family_ge_2_cou death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 droughtks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _drought_granted_family_ge_2_cou  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 droughtks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson _flood_granted_family_ge_2_count death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 floodks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5  
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _flood_granted_family_ge_2_count  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 floodks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson _extemp_granted_family_ge_2_coun death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 extempks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _extemp_granted_family_ge_2_coun  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 extempks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
clear
log close

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsGEQ2/2SLS EstimatesGEQ2/Replication(2SLS)GEQ2"
esttab using "Replication_2SLSestimatesGEQ2.tex", rename(death_hat1 dam_hat1 death_hat2 dam_hat2 death_hat3 dam_hat3 death_hat4 dam_hat4 death_hat5 dam_hat5 death_hat6 dam_hat6 death_hat7 dam_hat7 death_hat8 dam_hat8 death_hat9 dam_hat9 death_hat10 dam_hat10 floodks_hat stormks_hat droughtks_hat stormks_hat extempks_hat stormks_hat) drop(v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(dam_hat1 Year_t-1 dam_hat2 Year_t-2 dam_hat3 Year_t-3 dam_hat4 Year_t-4 dam_hat5 Year_t-5 dam_hat6 Year_t-6 dam_hat7 Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index  _storm_granted_family_ge_2_count Storm_adaptation_patents(granted)  _flood_granted_family_ge_2_count Flood_adaptation_patents(granted) _extemp_granted_family_ge_2_coun ExtremeTemperature_adaptation_patents(granted) _drought_granted_family_ge_2_cou Drought_adaptation_patents(granted) stormks_hat Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear


#Second Stage - Mitigation
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/RegressionsGEQ2/2SLS EstimatesGEQ2/Mitigation_2SLSGEQ2.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson granted_family_ge_2_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6  stormks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_family_ge_2_count lag_k_stock  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 stormks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson granted_family_ge_2_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 droughtks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 + death_hat10
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_family_ge_2_count lag_k_stock   dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 droughtks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson granted_family_ge_2_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 floodks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_family_ge_2_count lag_k_stock   dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 floodks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9 + dam_hat10
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson granted_family_ge_2_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10  extempks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 + death_hat10
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_family_ge_2_count lag_k_stock  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 extempks_hat gdp_per_capita_lag polity  v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9 + dam_hat10
estadd scalar Cumulative = r(estimate)
clear
log close 

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsGEQ2/2SLS EstimatesGEQ2/Mitigation(2SLS)GEQ2"
esttab using "Mitigation_2SLSestimatesGEQ2.tex", rename(death_hat1 dam_hat1 death_hat2 dam_hat2 death_hat3 dam_hat3 death_hat4 dam_hat4 death_hat5 dam_hat5 death_hat6 dam_hat6 death_hat7 dam_hat7 death_hat8 dam_hat8 death_hat9 dam_hat9 death_hat10 dam_hat10 floodks_hat stormks_hat droughtks_hat stormks_hat extempks_hat stormks_hat) drop( v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(dam_hat Year_t dam_hat1 Year_t-1 dam_hat2 Year_t-2 dam_hat3 Year_t-3 dam_hat4 Year_t-4 dam_hat5 Year_t-5 dam_hat6 Year_t-6 dam_hat7 Year_t-7  dam_hat8 Year_t-8 dam_hat9 Year_t-9 dam_hat10 Year_t-10  lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index  _storm_granted_family_ge_2_count Storm_adaptation_patents(granted) stormks_hat Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear








