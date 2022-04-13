CONTROL FUNCTION ESTIMATOR
#Generating first-stage residuals  - same as before


#Second Stage - Replication
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Replication%"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtreg ratio_storm_granted total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtreg ratio_storm_granted total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtreg ratio_drought_granted total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtreg ratio_drought_granted total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtreg ratio_flood_granted total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtreg ratio_flood_granted total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtreg ratio_extemp_granted total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtreg ratio_extemp_granted total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Replication%"
esttab using "RatioReplication_controlfunctionestimates.tex", keep(total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock lag_flood_k_stock lag_extemp_k_stock lag_drought_k_stock gdp_per_capita polity control_total_patents) varlabels(total_damages_adj Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7   total_deaths Year_t r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita Log_GDP_per_capita polity Institution_index control_total_patents Log_patent_applications)  replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 )) label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear


#In case need to relabel year
lab var total_deaths "Year t"
lab var r1_total_deaths "Year t-1"
lab var r2_total_deaths "Year t-2"
lab var r3_total_deaths "Year t-3"
lab var r4_total_deaths "Year t-4"
lab var r5_total_deaths "Year t-5"
lab var r6_total_deaths "Year t-6"
lab var r7_total_deaths "Year t-7"
lab var r8_total_deaths "Year t-8"
lab var r9_total_deaths "Year t-9"
lab var r10_total_deaths "Year t-10"
lab var r1_total_damages_adj "Year t-1"
lab var total_damages_adj "Year t"
lab var r2_total_damages_adj "Year t-2"
lab var r3_total_damages_adj "Year t-3"
lab var r4_total_damages_adj "Year t-4"
lab var r5_total_damages_adj "Year t-5"
lab var r6_total_damages_adj "Year t-6"
lab var r7_total_damages_adj "Year t-7"
lab var r8_total_damages_adj "Year t-8"
lab var r9_total_damages_adj "Year t-9"
lab var r10_total_damages_adj "Year t-10"


#Second Stage - Mitigation
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Mitigation%"
#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
#Deaths
eststo: xtreg ratio_green_granted lag_k_stock total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 , fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtreg ratio_green_granted lag_k_stock total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#Drought
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtreg ratio_green_granted lag_k_stock total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtreg ratio_green_granted lag_k_stock total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj 
estadd scalar Cumulative = r(estimate)


#Floods
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtreg ratio_green_granted lag_k_stock total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtreg ratio_green_granted lag_k_stock total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear


#Extemp
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtreg ratio_green_granted lag_k_stock total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtreg ratio_green_granted lag_k_stock total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear


#Compiling to Latex
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions%/Control function estimates%/Mitigation%"
esttab using "RatioMitigation (Control Function Estimates).tex", keep(lag_k_stock total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_storm_k_stock lag_flood_k_stock lag_extemp_k_stock lag_drought_k_stock gdp_per_capita polity control_total_patents) varlabels(total_damages_adj Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7  r8_total_damages_adj Year_t-8 r9_total_damages_adj Year_t-9 r10_total_damages_adj Year_t-10 total_deaths Year_t r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita Log_GDP_per_capita polity Institution_index control_total_patents Log_patent_applications lag_storm_k_stock Storm_adaptation_knowledge_stocks(Year_t-1) lag_flood_k_stock Flood_adaptation_knowledge_stocks(Year_t-1) lag_extemp_k_stock ExtremeTemperature_adaptation_knowledge_stocks(Year_t-1)  lag_drought_k_stock Drought_adaptation_knowledge_stocks(Year_t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 )) star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
clear
est clear
