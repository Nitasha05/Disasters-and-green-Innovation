
TWO-STAGE LEAST SQUARES ESTIMATOR
#Generating first-stage residuals

#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
drop dam_hat death_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 stormks_hat
xtreg lag_storm_k_stock gdp_per_capita_lag polity control_total_patents lpop r10_combi v6-v26, fe
predict stormks_hat
lab var stormks_hat "Storm adaptation KS (t-1)"
Deaths
xtreg total_deaths gdp_per_capita_lag polity  control_total_patents population_density combi v6-v26, fe
predict death_hat
xtreg r1_total_deaths gdp_per_capita_lag polity  control_total_patents density_1 combi_1 v6-v26, fe
predict death_hat1
xtreg r2_total_deaths gdp_per_capita_lag polity  control_total_patents density_2 combi_2 v6-v26, fe
predict death_hat2
xtreg r3_total_deaths gdp_per_capita_lag polity control_total_patents density_3 combi_3 v6-v26, fe
predict death_hat3
xtreg r4_total_deaths gdp_per_capita_lag polity control_total_patents density_4 combi_4 v6-v26, fe
predict death_hat4
xtreg r5_total_deaths gdp_per_capita_lag polity control_total_patents density_5 combi_5 v6-v26, fe
predict death_hat5
xtreg r6_total_deaths gdp_per_capita_lag polity  control_total_patents density_6 combi_6 v6-v26, fe
predict death_hat6
xtreg r7_total_deaths gdp_per_capita_lag polity control_total_patents density_7 combi_7 v6-v26, fe
predict death_hat7
xtreg r8_total_deaths gdp_per_capita_lag polity control_total_patents density_8 combi_8 v6-v26, fe
predict death_hat8
xtreg r9_total_deaths gdp_per_capita_lag polity control_total_patents density_9 combi_9 v6-v26, fe
predict death_hat9
xtreg r10_total_deaths gdp_per_capita_lag polity control_total_patents density_10 combi_10 v6-v26, fe
predict death_hat10
lab var death_hat "Year t"
lab var death_hat1 "Year t-1"
lab var death_hat2 "Year t-2"
lab var death_hat3 "Year t-3"
lab var death_hat4 "Year t-4"
lab var death_hat5 "Year t-5"
lab var death_hat6 "Year t-6"
lab var death_hat7 "Year t-7"
lab var death_hat8 "Year t-8"
lab var death_hat9 "Year t-9"
lab var death_hat10 "Year t-10"


Damages
xtreg total_damages_adj gdp_per_capita_lag polity  control_total_patents population_density combi v6-v26, fe
predict double dam_hat
xtreg r1_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_1 combi_1 v6-v26, fe
predict double dam_hat1
xtreg r2_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_2 combi_2 v6-v26, fe
predict double dam_hat2
xtreg r3_total_damages_adj gdp_per_capita_lag polity control_total_patents density_3 combi_3 v6-v26, fe
predict double dam_hat3
xtreg r4_total_damages_adj gdp_per_capita_lag polity control_total_patents density_4 combi_4 v6-v26, fe
predict double dam_hat4
xtreg r5_total_damages_adj gdp_per_capita_lag polity control_total_patents density_5 combi_5 v6-v26, fe
predict double dam_hat5
xtreg r6_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_6 combi_6 v6-v26, fe
predict double dam_hat6
xtreg r7_total_damages_adj gdp_per_capita_lag polity control_total_patents density_7 combi_7 v6-v26, fe
predict double dam_hat7
xtreg r8_total_damages_adj gdp_per_capita_lag polity control_total_patents density_8 combi_8 v6-v26, fe
predict double dam_hat8
xtreg r9_total_damages_adj gdp_per_capita_lag polity control_total_patents density_9 combi_9 v6-v26, fe
predict double dam_hat9
xtreg r10_total_damages_adj gdp_per_capita_lag polity control_total_patents density_10 combi_10 v6-v26, fe
predict double dam_hat10
lab var dam_hat "Year t"
lab var dam_hat1 "Year t-1"
lab var dam_hat2 "Year t-2"
lab var dam_hat3 "Year t-3"
lab var dam_hat4 "Year t-4"
lab var dam_hat5 "Year t-5"
lab var dam_hat6 "Year t-6"
lab var dam_hat7 "Year t-7"
lab var dam_hat8 "Year t-8"
lab var dam_hat9 "Year t-9"
lab var dam_hat10 "Year t-10"
save "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta", replace
clear


#Droughts
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
drop dam_hat death_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 droughtks_hat
xtreg lag_drought_k_stock gdp_per_capita_lag polity control_total_patents lpop r10_difmonth v6-v26, fe
predict droughtks_hat
lab var droughtks_hat "Drought adaptation KS (t-1)"
#Deaths
xtreg total_deaths gdp_per_capita_lag polity  control_total_patents population_density difmonth v6-v26, fe
predict death_hat
xtreg r1_total_deaths gdp_per_capita_lag polity  control_total_patents density_1 difmonth_1 v6-v26, fe
predict death_hat1
xtreg r2_total_deaths gdp_per_capita_lag polity  control_total_patents density_2 difmonth_2 v6-v26, fe
predict death_hat2
xtreg r3_total_deaths gdp_per_capita_lag polity control_total_patents density_3 difmonth_3 v6-v26, fe
predict death_hat3
xtreg r4_total_deaths gdp_per_capita_lag polity control_total_patents density_4 difmonth_4 v6-v26, fe
predict death_hat4
xtreg r5_total_deaths gdp_per_capita_lag polity control_total_patents density_5 difmonth_5 v6-v26, fe
predict death_hat5
xtreg r6_total_deaths gdp_per_capita_lag polity  control_total_patents density_6 difmonth_6 v6-v26, fe
predict death_hat6
xtreg r7_total_deaths gdp_per_capita_lag polity control_total_patents density_7 difmonth_7 v6-v26, fe
predict death_hat7
xtreg r8_total_deaths gdp_per_capita_lag polity control_total_patents density_8 difmonth_8 v6-v26, fe
predict death_hat8
xtreg r9_total_deaths gdp_per_capita_lag polity control_total_patents density_9 difmonth_9 v6-v26, fe
predict death_hat9
xtreg r10_total_deaths gdp_per_capita_lag polity control_total_patents density_10 difmonth_10 v6-v26, fe
predict death_hat10
lab var death_hat "Year t"
lab var death_hat1 "Year t-1"
lab var death_hat2 "Year t-2"
lab var death_hat3 "Year t-3"
lab var death_hat4 "Year t-4"
lab var death_hat5 "Year t-5"
lab var death_hat6 "Year t-6"
lab var death_hat7 "Year t-7"
lab var death_hat8 "Year t-8"
lab var death_hat9 "Year t-9"
lab var death_hat10 "Year t-10"

#Damages
xtreg total_damages_adj gdp_per_capita_lag polity  control_total_patents  population_density difmonth v6-v26, fe
predict double dam_hat
xtreg r1_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_1 difmonth_1 v6-v26, fe
predict double dam_hat1
xtreg r2_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_2 difmonth_2 v6-v26, fe
predict double dam_hat2
xtreg r3_total_damages_adj gdp_per_capita_lag polity control_total_patents density_3 difmonth_3 v6-v26, fe
predict double dam_hat3
xtreg r4_total_damages_adj gdp_per_capita_lag polity control_total_patents density_4 difmonth_4 v6-v26, fe
predict double dam_hat4
xtreg r5_total_damages_adj gdp_per_capita_lag polity control_total_patents density_5 difmonth_5 v6-v26, fe
predict double dam_hat5
xtreg r6_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_6 difmonth_6 v6-v26, fe
predict double dam_hat6
xtreg r7_total_damages_adj gdp_per_capita_lag polity control_total_patents density_7 difmonth_7 v6-v26, fe
predict double dam_hat7
xtreg r8_total_damages_adj gdp_per_capita_lag polity control_total_patents density_8 difmonth_8 v6-v26, fe
predict double dam_hat8
xtreg r9_total_damages_adj gdp_per_capita_lag polity control_total_patents density_9 difmonth_9 v6-v26, fe
predict double dam_hat9
xtreg r10_total_damages_adj gdp_per_capita_lag polity control_total_patents density_10 difmonth_10 v6-v26, fe
predict double dam_hat10
lab var dam_hat "Year t"
lab var dam_hat1 "Year t-1"
lab var dam_hat2 "Year t-2"
lab var dam_hat3 "Year t-3"
lab var dam_hat4 "Year t-4"
lab var dam_hat5 "Year t-5"
lab var dam_hat6 "Year t-6"
lab var dam_hat7 "Year t-7"
lab var dam_hat8 "Year t-8"
lab var dam_hat9 "Year t-9"
lab var dam_hat10 "Year t-10"
save "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta", replace
clear


#Flood
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
drop dam_hat death_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 floodks_hat
xtreg lag_flood_k_stock gdp_per_capita_lag polity control_total_patents lpop r10_flood v6-v26, fe
predict floodks_hat
lab var floodks_hat "Flood adaptation KS(t-1)"
#Deaths
xtreg total_deaths gdp_per_capita_lag polity  control_total_patents population_density flood v6-v26, fe
predict death_hat
xtreg r1_total_deaths gdp_per_capita_lag polity  control_total_patents density_1 flood_1 v6-v26, fe
predict death_hat1
xtreg r2_total_deaths gdp_per_capita_lag polity  control_total_patents density_2 flood_2 v6-v26, fe
predict death_hat2
xtreg r3_total_deaths gdp_per_capita_lag polity control_total_patents density_3 flood_3 v6-v26, fe
predict death_hat3
xtreg r4_total_deaths gdp_per_capita_lag polity control_total_patents density_4 flood_4 v6-v26, fe
predict death_hat4
xtreg r5_total_deaths gdp_per_capita_lag polity control_total_patents density_5 flood_5 v6-v26, fe
predict death_hat5
xtreg r6_total_deaths gdp_per_capita_lag polity  control_total_patents density_6 flood_6 v6-v26, fe
predict death_hat6
xtreg r7_total_deaths gdp_per_capita_lag polity control_total_patents density_7 flood_7 v6-v26, fe
predict death_hat7
xtreg r8_total_deaths gdp_per_capita_lag polity control_total_patents density_8 flood_8 v6-v26, fe
predict death_hat8
xtreg r9_total_deaths gdp_per_capita_lag polity control_total_patents density_9 flood_9 v6-v26, fe
predict death_hat9
xtreg r10_total_deaths gdp_per_capita_lag polity control_total_patents density_10 flood_10 v6-v26, fe
predict death_hat10
lab var death_hat "Year t"
lab var death_hat1 "Year t-1"
lab var death_hat2 "Year t-2"
lab var death_hat3 "Year t-3"
lab var death_hat4 "Year t-4"
lab var death_hat5 "Year t-5"
lab var death_hat6 "Year t-6"
lab var death_hat7 "Year t-7"
lab var death_hat8 "Year t-8"
lab var death_hat9 "Year t-9"
lab var death_hat10 "Year t-10"

#Damages
xtreg total_damages_adj gdp_per_capita_lag polity  control_total_patents population_density flood v6-v26, fe
predict double dam_hat
xtreg r1_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_1 flood_1 v6-v26, fe
predict double dam_hat1
xtreg r2_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_2 flood_2 v6-v26, fe
predict double dam_hat2
xtreg r3_total_damages_adj gdp_per_capita_lag polity control_total_patents density_3 flood_3 v6-v26, fe
predict double dam_hat3
xtreg r4_total_damages_adj gdp_per_capita_lag polity control_total_patents density_4 flood_4 v6-v26, fe
predict double dam_hat4
xtreg r5_total_damages_adj gdp_per_capita_lag polity control_total_patents density_5 flood_5 v6-v26, fe
predict double dam_hat5
xtreg r6_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_6 flood_6 v6-v26, fe
predict double dam_hat6
xtreg r7_total_damages_adj gdp_per_capita_lag polity control_total_patents density_7 flood_7 v6-v26, fe
predict double dam_hat7
xtreg r8_total_damages_adj gdp_per_capita_lag polity control_total_patents density_8 flood_8 v6-v26, fe
predict double dam_hat8
xtreg r9_total_damages_adj gdp_per_capita_lag polity control_total_patents density_9 flood_9 v6-v26, fe
predict double dam_hat9
xtreg r10_total_damages_adj gdp_per_capita_lag polity control_total_patents density_10 flood_10 v6-v26, fe
predict double dam_hat10
lab var dam_hat "Year t"
lab var dam_hat1 "Year t-1"
lab var dam_hat2 "Year t-2"
lab var dam_hat3 "Year t-3"
lab var dam_hat4 "Year t-4"
lab var dam_hat5 "Year t-5"
lab var dam_hat6 "Year t-6"
lab var dam_hat7 "Year t-7"
lab var dam_hat8 "Year t-8"
lab var dam_hat9 "Year t-9"
lab var dam_hat10 "Year t-10"
save "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta", replace
clear


#Extreme Temperatures
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
drop dam_hat death_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 extempks_hat
xtreg lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents lpop r10_dif_temp v6-v26, fe
predict extempks_hat
lab var extempks_hat "Extemp adaptation KS(t-1)"
#Deaths
xtreg total_deaths gdp_per_capita_lag polity  control_total_patents population_density dif_temp v6-v26, fe
predict death_hat
xtreg r1_total_deaths gdp_per_capita_lag polity  control_total_patents density_1 dif_temp_1 v6-v26, fe
predict death_hat1
xtreg r2_total_deaths gdp_per_capita_lag polity  control_total_patents density_2 dif_temp_2 v6-v26, fe
predict death_hat2
xtreg r3_total_deaths gdp_per_capita_lag polity control_total_patents density_3 dif_temp_3 v6-v26, fe
predict death_hat3
xtreg r4_total_deaths gdp_per_capita_lag polity control_total_patents density_4 dif_temp_4 v6-v26, fe
predict death_hat4
xtreg r5_total_deaths gdp_per_capita_lag polity control_total_patents density_5 dif_temp_5 v6-v26, fe
predict death_hat5
xtreg r6_total_deaths gdp_per_capita_lag polity  control_total_patents density_6 dif_temp_6 v6-v26, fe
predict death_hat6
xtreg r7_total_deaths gdp_per_capita_lag polity control_total_patents density_7 dif_temp_7 v6-v26, fe
predict death_hat7
xtreg r8_total_deaths gdp_per_capita_lag polity control_total_patents density_8 dif_temp_8 v6-v26, fe
predict death_hat8
xtreg r9_total_deaths gdp_per_capita_lag polity control_total_patents density_9 dif_temp_9 v6-v26, fe
predict death_hat9
xtreg r10_total_deaths gdp_per_capita_lag polity control_total_patents density_10 dif_temp_10 v6-v26, fe
predict death_hat10
lab var death_hat "Year t"
lab var death_hat1 "Year t-1"
lab var death_hat2 "Year t-2"
lab var death_hat3 "Year t-3"
lab var death_hat4 "Year t-4"
lab var death_hat5 "Year t-5"
lab var death_hat6 "Year t-6"
lab var death_hat7 "Year t-7"
lab var death_hat8 "Year t-8"
lab var death_hat9 "Year t-9"
lab var death_hat10 "Year t-10"

#Damages
xtreg total_damages_adj gdp_per_capita_lag polity  control_total_patents population_density dif_temp v6-v26, fe
predict double dam_hat
xtreg r1_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_1 dif_temp_1 v6-v26, fe
predict double dam_hat1
xtreg r2_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_2 dif_temp_2 v6-v26, fe
predict double dam_hat2
xtreg r3_total_damages_adj gdp_per_capita_lag polity control_total_patents density_3 dif_temp_3 v6-v26, fe
predict double dam_hat3
xtreg r4_total_damages_adj gdp_per_capita_lag polity control_total_patents density_4 dif_temp_4 v6-v26, fe
predict double dam_hat4
xtreg r5_total_damages_adj gdp_per_capita_lag polity control_total_patents density_5 dif_temp_5 v6-v26, fe
predict double dam_hat5
xtreg r6_total_damages_adj gdp_per_capita_lag polity  control_total_patents density_6 dif_temp_6 v6-v26, fe
predict double dam_hat6
xtreg r7_total_damages_adj gdp_per_capita_lag polity control_total_patents density_7 dif_temp_7 v6-v26, fe
predict double dam_hat7
xtreg r8_total_damages_adj gdp_per_capita_lag polity control_total_patents density_8 dif_temp_8 v6-v26, fe
predict double dam_hat8
xtreg r9_total_damages_adj gdp_per_capita_lag polity control_total_patents density_9 dif_temp_9 v6-v26, fe
predict double dam_hat9
xtreg r10_total_damages_adj gdp_per_capita_lag polity control_total_patents density_10 dif_temp_10 v6-v26, fe
predict double dam_hat10
lab var dam_hat "Year t"
lab var dam_hat1 "Year t-1"
lab var dam_hat2 "Year t-2"
lab var dam_hat3 "Year t-3"
lab var dam_hat4 "Year t-4"
lab var dam_hat5 "Year t-5"
lab var dam_hat6 "Year t-6"
lab var dam_hat7 "Year t-7"
lab var dam_hat8 "Year t-8"
lab var dam_hat9 "Year t-9"
lab var dam_hat10 "Year t-10"
save "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta", replace
clear



#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Replication(2SLS)"
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Replication_2SLS.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson _storm_granted_count death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 stormks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _storm_granted_count  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 stormks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson _drought_granted_count death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 droughtks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _drought_granted_count  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 droughtks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson _flood_granted_count death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 floodks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5  
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _flood_granted_count  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 floodks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson _extemp_granted_count death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 extempks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _extemp_granted_count  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 extempks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
clear
log close

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Replication(2SLS)"
esttab using "Replication_2SLSestimates.tex", rename(death_hat1 dam_hat1 death_hat2 dam_hat2 death_hat3 dam_hat3 death_hat4 dam_hat4 death_hat5 dam_hat5 death_hat6 dam_hat6 death_hat7 dam_hat7 death_hat8 dam_hat8 death_hat9 dam_hat9 death_hat10 dam_hat10 floodks_hat stormks_hat droughtks_hat stormks_hat extempks_hat stormks_hat) drop(v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(dam_hat1 Year_t-1 dam_hat2 Year_t-2 dam_hat3 Year_t-3 dam_hat4 Year_t-4 dam_hat5 Year_t-5 dam_hat6 Year_t-6 dam_hat7 Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index control_total_patents Log_patent_applications _storm_granted_count Storm_adaptation_patents(granted)  _flood_granted_count Flood_adaptation_patents(granted) _extemp_granted_count ExtremeTemperature_adaptation_patents(granted) _drought_granted_count Drought_adaptation_patents(granted) stormks_hat Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear


#Second Stage - Mitigation
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Mitigation_2SLS.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson granted_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6  stormks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 stormks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 droughtks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 + death_hat10
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock   dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 droughtks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 floodks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock   dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 floodks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9 + dam_hat10
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10  extempks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom  death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 + death_hat10
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 extempks_hat gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom   dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9 + dam_hat10
estadd scalar Cumulative = r(estimate)
clear
log close 

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Mitigation(2SLS)"
esttab using "Mitigation_2SLSestimates.tex", rename(death_hat1 dam_hat1 death_hat2 dam_hat2 death_hat3 dam_hat3 death_hat4 dam_hat4 death_hat5 dam_hat5 death_hat6 dam_hat6 death_hat7 dam_hat7 death_hat8 dam_hat8 death_hat9 dam_hat9 death_hat10 dam_hat10 floodks_hat stormks_hat droughtks_hat stormks_hat extempks_hat stormks_hat) drop(v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(dam_hat Year_t dam_hat1 Year_t-1 dam_hat2 Year_t-2 dam_hat3 Year_t-3 dam_hat4 Year_t-4 dam_hat5 Year_t-5 dam_hat6 Year_t-6 dam_hat7 Year_t-7  dam_hat8 Year_t-8 dam_hat9 Year_t-9 dam_hat10 Year_t-10  lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index control_total_patents Log_patent_applications _storm_granted_count Storm_adaptation_patents(granted) stormks_hat Adaptation_KS(t-1) _flood_granted_count Flood_adaptation_patents(granted) _extemp_granted_count ExtremeTemperature_adaptation_patents(granted)   _drought_granted_count Drought_adaptation_patents(granted)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear








