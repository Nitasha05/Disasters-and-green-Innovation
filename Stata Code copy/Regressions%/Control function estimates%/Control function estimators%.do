CONTROL FUNCTION ESTIMATOR

use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
replace ratio_storm_granted = _storm_granted_count/TOTPAT_granted
replace ratio_green_granted = granted_count/TOTPAT_granted
save "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta", replace
clear
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
replace ratio_flood_granted = _flood_granted_count/TOTPAT_granted
replace ratio_green_granted = granted_count/TOTPAT_granted
save "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta", replace
clear
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
replace ratio_drought_granted = _drought_granted_count/TOTPAT_granted
replace ratio_green_granted = granted_count/TOTPAT_granted
save "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta", replace
clear
use "/Users/nitashajhala/Desktop/Stata Code/Data/Extemp Stata/data_extemp.dta"
replace ratio_extemp_granted = _extemp_granted_count/TOTPAT_granted
replace ratio_green_granted = granted_count/TOTPAT_granted
save "/Users/nitashajhala/Desktop/Stata Code/Data/Extemp Stata/data_extemp.dta", replace
clear

#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Replication%"
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Replication%/Replication%"
#STORMS
#Deaths(10)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtreg ratio_storm_granted r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_storm_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths+ r8_total_deaths+ r9_total_deaths+ r10_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages(9)
eststo: xtreg ratio_storm_granted r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj lag_storm_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS(6)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtreg ratio_drought_granted r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths lag_drought_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages(6)
eststo: xtreg ratio_drought_granted r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj lag_drought_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths(6)
eststo: xtreg ratio_flood_granted r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths lag_flood_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages(10)
eststo: xtreg ratio_flood_granted r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_flood_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj+ r8_total_damages_adj+ r9_total_damages_adj+ r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths(8)
eststo: xtreg ratio_extemp_granted r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths lag_extemp_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages(8)
eststo: xtreg ratio_extemp_granted r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj lag_extemp_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear
log close

#Creating Latex file
esttab using "R_Replication_controlfunctionestimates.tex", rename(total_damages_adj total_deaths r1_total_damages_adj r1_total_deaths r2_total_damages_adj r2_total_deaths r3_total_damages_adj r3_total_deaths r4_total_damages_adj r4_total_deaths r5_total_damages_adj r5_total_deaths r6_total_damages_adj r6_total_deaths r7_total_damages_adj r7_total_deaths r8_total_damages_adj r8_total_deaths r9_total_damages_adj r9_total_deaths r10_total_damages_adj r10_total_deaths lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(ks2h_fe v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10)  varlabels( r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_KS(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita(t-1) polity Institution_index     lag_storm_k_stock Adaptation_KS(Year_t-1))  replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative r2_o N, labels( "Cumulative effect" "Overall R-square" "Observations"))
est clear


#Second Stage - Mitigation
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Mitigation%"
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Mitigation%/Mitigation%"
#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
#Deaths(6)
eststo: xtreg ratio_green_granted lag_k_stock  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths lag_storm_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths
estadd scalar Cumulative = r(estimate)
#Damages(6)
eststo: xtreg ratio_green_granted lag_k_stock  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj lag_storm_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#Drought
#Deaths(10)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtreg ratio_green_granted lag_k_stock  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_drought_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages(10)
eststo: xtreg ratio_green_granted lag_k_stock  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_drought_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)


#Floods
#Deaths(8)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtreg ratio_green_granted lag_k_stock  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths lag_flood_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths
estadd scalar Cumulative = r(estimate)
#Damages(6)
eststo: xtreg ratio_green_granted lag_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj lag_flood_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear


#Extemp
#Deaths(10)
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtreg ratio_green_granted lag_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_extemp_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages(10)
eststo: xtreg ratio_green_granted lag_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_extemp_k_stock gdp_per_capita_lag polity   ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear
log close

#Compiling to Latex
esttab using "R_Mitigation (Control Function Estimates).tex", rename(total_damages_adj total_deaths r1_total_damages_adj r1_total_deaths r2_total_damages_adj r2_total_deaths r3_total_damages_adj r3_total_deaths r4_total_damages_adj r4_total_deaths r5_total_damages_adj r5_total_deaths r6_total_damages_adj r6_total_deaths r7_total_damages_adj r7_total_deaths r8_total_damages_adj r8_total_deaths r9_total_damages_adj r9_total_deaths r10_total_damages_adj r10_total_deaths lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(ks2h_fe v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10)  varlabels( r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_KS(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita(t-1) polity Institution_index     lag_storm_k_stock Adaptation_KS(Year_t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.")  eform stats(Cumulative r2_o N, labels( "Cumulative effect" "Overall R-square" "Observations"))
clear
est clear
