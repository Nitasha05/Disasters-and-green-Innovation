
#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/2SLS Estimates%/Replication(2SLS)%"
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions%/2SLS Estimates%/Replication_2SLS%.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtivreg ratio_storm_granted gdp_per_capita_lag polity  v6-v26 (lag_storm_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths = lpop r10_combi density_1 combi_1 density_2 combi_2 density_3 combi_3 density_4 combi_4 density_5 combi_5 density_6 combi_6 density_7 combi_7), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_storm_granted gdp_per_capita_lag polity  v6-v26 (lag_storm_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj  = lpop r10_combi density_1 combi_1 density_2 combi_2 density_3 combi_3 density_4 combi_4 density_5 combi_5 density_6 combi_6 density_7 combi_7), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtivreg ratio_drought_granted gdp_per_capita_lag polity  v6-v26 (lag_drought_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths = lpop r10_difmonth density_1 difmonth_1 density_2 difmonth_2 density_3 difmonth_3 density_4 difmonth_4 density_5 difmonth_5), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_drought_granted gdp_per_capita_lag polity  v6-v26 (lag_drought_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj = lpop r10_difmonth density_1 difmonth_1 density_2 difmonth_2 density_3 difmonth_3 density_4 difmonth_4 density_5 difmonth_5), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtivreg ratio_flood_granted gdp_per_capita_lag polity  v6-v26 (lag_flood_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths  = lpop r10_flood density_1 flood_1 density_2 flood_2 density_3 flood_3 density_4 flood_4 density_5 flood_5), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths  
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_flood_granted gdp_per_capita_lag polity  v6-v26 (lag_flood_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj = lpop r10_flood density_1 flood_1 density_2 flood_2 density_3 flood_3 density_4 flood_4 density_5 flood_5 density_6 flood_6 density_7 flood_7), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtivreg ratio_extemp_granted gdp_per_capita_lag polity  v6-v26 (lag_extemp_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths  = lpop r10_dif_temp density_1 dif_temp_1 density_2 dif_temp_2 density_3 dif_temp_3 density_4 dif_temp_4 density_5 dif_temp_5 density_6 dif_temp_6 density_7 dif_temp_7 density_8 dif_temp_8), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_extemp_granted gdp_per_capita_lag polity  v6-v26 (lag_extemp_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj = lpop r10_dif_temp density_1 dif_temp_1 density_2 dif_temp_2 density_3 dif_temp_3 density_4 dif_temp_4 density_5 dif_temp_5 density_6 dif_temp_6 density_7 dif_temp_7 density_8 dif_temp_8), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear
log close

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/2SLS Estimates%/Replication(2SLS)%"
esttab using "R_Replication_2SLSestimates.tex", rename(r1_total_deaths r1_total_damages_adj r2_total_deaths r2_total_damages_adj r3_total_deaths r3_total_damages_adj r4_total_deaths r4_total_damages_adj r5_total_deaths r5_total_damages_adj r6_total_deaths r6_total_damages_adj r7_total_deaths r7_total_damages_adj r8_total_deaths r8_total_damages_adj r9_total_deaths r9_total_damages_adj r10_total_deaths r10_total_damages_adj lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index  ratio_storm_granted Storm_adaptation_patents(granted)  ratio_flood_granted Flood_adaptation_patents(granted) ratio_extemp_granted ExtremeTemperature_adaptation_patents(granted) ratio_drought_granted Drought_adaptation_patents(granted) lag_storm_k_stock Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative r2_o N, labels( "Cumulative effect" "Overall R-square" "Observations"))
est clear


#Second Stage - Mitigation
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions%/2SLS Estimates%/Mitigation_2SLS%.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_storm_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths = lpop r10_combi density_1 combi_1 density_2 combi_2 density_3 combi_3 density_4 combi_4 density_5 combi_5 density_6 combi_6), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_storm_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj = lpop r10_combi density_1 combi_1 density_2 combi_2 density_3 combi_3 density_4 combi_4 density_5 combi_5 density_6 combi_6), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_drought_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths = lpop r10_difmonth density_1 difmonth_1 density_2 difmonth_2 density_3 difmonth_3 density_4 difmonth_4 density_5 difmonth_5 density_6 difmonth_6 density_7 difmonth_7 density_8 difmonth_8 density_9 difmonth_9 density_10 difmonth_10), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_drought_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj = lpop r10_difmonth density_1 difmonth_1 density_2 difmonth_2 density_3 difmonth_3 density_4 difmonth_4 density_5 difmonth_5 density_6 difmonth_6 density_7 difmonth_7 density_8 difmonth_8), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_flood_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths = lpop r10_flood density_1 flood_1 density_2 flood_2 density_3 flood_3 density_4 flood_4 density_5 flood_5 density_6 flood_6 density_7 flood_7 density_8 flood_8), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_flood_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj = lpop r10_flood density_1 flood_1 density_2 flood_2 density_3 flood_3 density_4 flood_4 density_5 flood_5 density_6 flood_6 density_7 flood_7 density_8 flood_8 density_9 flood_9 density_10 flood_10), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_extemp_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths = lpop r10_dif_temp density_1 dif_temp_1 density_2 dif_temp_2 density_3 dif_temp_3 density_4 dif_temp_4 density_5 dif_temp_5 density_6 dif_temp_6 density_7 dif_temp_7 density_8 dif_temp_8 density_9 dif_temp_9 density_10 dif_temp_10), fe vce(robust)
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtivreg ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 (lag_extemp_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj = lpop r10_dif_temp density_1 dif_temp_1 density_2 dif_temp_2 density_3 dif_temp_3 density_4 dif_temp_4 density_5 dif_temp_5 density_6 dif_temp_6 density_7 dif_temp_7 density_8 dif_temp_8 density_9 dif_temp_9 density_10 dif_temp_10), fe vce(robust)
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear
log close 

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/2SLS Estimates%/Mitigation(2SLS)%"
esttab using "R_Mitigation_2SLSestimates.tex", rename(r1_total_deaths r1_total_damages_adj r2_total_deaths r2_total_damages_adj r3_total_deaths r3_total_damages_adj r4_total_deaths r4_total_damages_adj r5_total_deaths r5_total_damages_adj r6_total_deaths r6_total_damages_adj r7_total_deaths r7_total_damages_adj r8_total_deaths r8_total_damages_adj r9_total_deaths r9_total_damages_adj r10_total_deaths r10_total_damages_adj lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop( v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(dam_hat Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7  r8_total_damages_adj Year_t-8 r9_total_damages_adj Year_t-9 r10_total_damages_adj Year_t-10  lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index  ratio_storm_granted Storm_adaptation_patents(granted) lag_storm_k_stock Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative r2_o N, labels( "Cumulative effect" "Overall R-square" "Observations"))
est clear








