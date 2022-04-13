CONTROL FUNCTION ESTIMATOR
#Generating first-stage residuals

#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
Deaths
xtreg total_deaths gdp_per_capita polity  control_total_patents population_density combi v6-v26, fe
predict double v2h_fe, e
xtreg r1_total_deaths gdp_per_capita polity  control_total_patents density_1 combi_1 v6-v26, fe
predict double v2h_fe1, e
xtreg r2_total_deaths gdp_per_capita polity  control_total_patents density_2 combi_2 v6-v26, fe
predict double v2h_fe2, e
xtreg r3_total_deaths gdp_per_capita polity control_total_patents density_3 combi_3 v6-v26, fe
predict double v2h_fe3, e
xtreg r4_total_deaths gdp_per_capita polity control_total_patents density_4 combi_4 v6-v26, fe
predict double v2h_fe4, e
xtreg r5_total_deaths gdp_per_capita polity control_total_patents density_5 combi_5 v6-v26, fe
predict double v2h_fe5, e
xtreg r6_total_deaths gdp_per_capita polity  control_total_patents density_6 combi_6 v6-v26, fe
predict double v2h_fe6, e
xtreg r7_total_deaths gdp_per_capita polity control_total_patents density_7 combi_7 v6-v26, fe
predict double v2h_fe7, e
xtreg r8_total_deaths gdp_per_capita polity control_total_patents density_8 combi_8 v6-v26, fe
predict double v2h_fe8, e
xtreg r9_total_deaths gdp_per_capita polity control_total_patents density_9 combi_9 v6-v26, fe
predict double v2h_fe9, e
xtreg r10_total_deaths gdp_per_capita polity control_total_patents density_10 combi_10 v6-v26, fe
predict double v2h_fe10, e

Damages
xtreg total_damages_adj gdp_per_capita polity  control_total_patents population_density combi v6-v26, fe
predict double dam_v2h_fe, e
xtreg r1_total_damages_adj gdp_per_capita polity  control_total_patents density_1 combi_1 v6-v26, fe
predict double dam_v2h_fe1, e
xtreg r2_total_damages_adj gdp_per_capita polity  control_total_patents density_2 combi_2 v6-v26, fe
predict double dam_v2h_fe2, e
xtreg r3_total_damages_adj gdp_per_capita polity control_total_patents density_3 combi_3 v6-v26, fe
predict double dam_v2h_fe3, e
xtreg r4_total_damages_adj gdp_per_capita polity control_total_patents density_4 combi_4 v6-v26, fe
predict double dam_v2h_fe4, e
xtreg r5_total_damages_adj gdp_per_capita polity control_total_patents density_5 combi_5 v6-v26, fe
predict double dam_v2h_fe5, e
xtreg r6_total_damages_adj gdp_per_capita polity  control_total_patents density_6 combi_6 v6-v26, fe
predict double dam_v2h_fe6, e
xtreg r7_total_damages_adj gdp_per_capita polity control_total_patents density_7 combi_7 v6-v26, fe
predict double dam_v2h_fe7, e
xtreg r8_total_damages_adj gdp_per_capita polity control_total_patents density_8 combi_8 v6-v26, fe
predict double dam_v2h_fe8, e
xtreg r9_total_damages_adj gdp_per_capita polity control_total_patents density_9 combi_9 v6-v26, fe
predict double dam_v2h_fe9, e
xtreg r10_total_damages_adj gdp_per_capita polity control_total_patents density_10 combi_10 v6-v26, fe
predict double dam_v2h_fe10, e
save "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta", replace
clear


#Droughts
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
xtreg total_deaths gdp_per_capita polity  control_total_patents population_density difmonth v6-v26, fe
predict double v2h_fe, e
xtreg r1_total_deaths gdp_per_capita polity  control_total_patents density_1 difmonth_1 v6-v26, fe
predict double v2h_fe1, e
xtreg r2_total_deaths gdp_per_capita polity  control_total_patents density_2 difmonth_2 v6-v26, fe
predict double v2h_fe2, e
xtreg r3_total_deaths gdp_per_capita polity control_total_patents density_3 difmonth_3 v6-v26, fe
predict double v2h_fe3, e
xtreg r4_total_deaths gdp_per_capita polity control_total_patents density_4 difmonth_4 v6-v26, fe
predict double v2h_fe4, e
xtreg r5_total_deaths gdp_per_capita polity control_total_patents density_5 difmonth_5 v6-v26, fe
predict double v2h_fe5, e
xtreg r6_total_deaths gdp_per_capita polity  control_total_patents density_6 difmonth_6 v6-v26, fe
predict double v2h_fe6, e
xtreg r7_total_deaths gdp_per_capita polity control_total_patents density_7 difmonth_7 v6-v26, fe
predict double v2h_fe7, e
xtreg r8_total_deaths gdp_per_capita polity control_total_patents density_8 difmonth_8 v6-v26, fe
predict double v2h_fe8, e
xtreg r9_total_deaths gdp_per_capita polity control_total_patents density_9 difmonth_9 v6-v26, fe
predict double v2h_fe9, e
xtreg r10_total_deaths gdp_per_capita polity control_total_patents density_10 difmonth_10 v6-v26, fe
predict double v2h_fe10, e

#Damages
xtreg total_damages_adj gdp_per_capita polity  control_total_patents population_density difmonth v6-v26, fe
predict double dam_v2h_fe, e
xtreg r1_total_damages_adj gdp_per_capita polity  control_total_patents density_1 difmonth_1 v6-v26, fe
predict double dam_v2h_fe1, e
xtreg r2_total_damages_adj gdp_per_capita polity  control_total_patents density_2 difmonth_2 v6-v26, fe
predict double dam_v2h_fe2, e
xtreg r3_total_damages_adj gdp_per_capita polity control_total_patents density_3 difmonth_3 v6-v26, fe
predict double dam_v2h_fe3, e
xtreg r4_total_damages_adj gdp_per_capita polity control_total_patents density_4 difmonth_4 v6-v26, fe
predict double dam_v2h_fe4, e
xtreg r5_total_damages_adj gdp_per_capita polity control_total_patents density_5 difmonth_5 v6-v26, fe
predict double dam_v2h_fe5, e
xtreg r6_total_damages_adj gdp_per_capita polity  control_total_patents density_6 difmonth_6 v6-v26, fe
predict double dam_v2h_fe6, e
xtreg r7_total_damages_adj gdp_per_capita polity control_total_patents density_7 difmonth_7 v6-v26, fe
predict double dam_v2h_fe7, e
xtreg r8_total_damages_adj gdp_per_capita polity control_total_patents density_8 difmonth_8 v6-v26, fe
predict double dam_v2h_fe8, e
xtreg r9_total_damages_adj gdp_per_capita polity control_total_patents density_9 difmonth_9 v6-v26, fe
predict double dam_v2h_fe9, e
xtreg r10_total_damages_adj gdp_per_capita polity control_total_patents density_10 difmonth_10 v6-v26, fe
predict double dam_v2h_fe10, e
save "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta", replace
clear


#Flood
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
xtreg total_deaths gdp_per_capita polity  control_total_patents population_density flood v6-v26, fe
predict double v2h_fe, e
xtreg r1_total_deaths gdp_per_capita polity  control_total_patents density_1 flood_1 v6-v26, fe
predict double v2h_fe1, e
xtreg r2_total_deaths gdp_per_capita polity  control_total_patents density_2 flood_2 v6-v26, fe
predict double v2h_fe2, e
xtreg r3_total_deaths gdp_per_capita polity control_total_patents density_3 flood_3 v6-v26, fe
predict double v2h_fe3, e
xtreg r4_total_deaths gdp_per_capita polity control_total_patents density_4 flood_4 v6-v26, fe
predict double v2h_fe4, e
xtreg r5_total_deaths gdp_per_capita polity control_total_patents density_5 flood_5 v6-v26, fe
predict double v2h_fe5, e
xtreg r6_total_deaths gdp_per_capita polity  control_total_patents density_6 flood_6 v6-v26, fe
predict double v2h_fe6, e
xtreg r7_total_deaths gdp_per_capita polity control_total_patents density_7 flood_7 v6-v26, fe
predict double v2h_fe7, e
xtreg r8_total_deaths gdp_per_capita polity control_total_patents density_8 flood_8 v6-v26, fe
predict double v2h_fe8, e
xtreg r9_total_deaths gdp_per_capita polity control_total_patents density_9 flood_9 v6-v26, fe
predict double v2h_fe9, e
xtreg r10_total_deaths gdp_per_capita polity control_total_patents density_10 flood_10 v6-v26, fe
predict double v2h_fe10, e

#Damages
xtreg total_damages_adj gdp_per_capita polity  control_total_patents population_density flood v6-v26, fe
predict double dam_v2h_fe, e
xtreg r1_total_damages_adj gdp_per_capita polity  control_total_patents density_1 flood_1 v6-v26, fe
predict double dam_v2h_fe1, e
xtreg r2_total_damages_adj gdp_per_capita polity  control_total_patents density_2 flood_2 v6-v26, fe
predict double dam_v2h_fe2, e
xtreg r3_total_damages_adj gdp_per_capita polity control_total_patents density_3 flood_3 v6-v26, fe
predict double dam_v2h_fe3, e
xtreg r4_total_damages_adj gdp_per_capita polity control_total_patents density_4 flood_4 v6-v26, fe
predict double dam_v2h_fe4, e
xtreg r5_total_damages_adj gdp_per_capita polity control_total_patents density_5 flood_5 v6-v26, fe
predict double dam_v2h_fe5, e
xtreg r6_total_damages_adj gdp_per_capita polity  control_total_patents density_6 flood_6 v6-v26, fe
predict double dam_v2h_fe6, e
xtreg r7_total_damages_adj gdp_per_capita polity control_total_patents density_7 flood_7 v6-v26, fe
predict double dam_v2h_fe7, e
xtreg r8_total_damages_adj gdp_per_capita polity control_total_patents density_8 flood_8 v6-v26, fe
predict double dam_v2h_fe8, e
xtreg r9_total_damages_adj gdp_per_capita polity control_total_patents density_9 flood_9 v6-v26, fe
predict double dam_v2h_fe9, e
xtreg r10_total_damages_adj gdp_per_capita polity control_total_patents density_10 flood_10 v6-v26, fe
predict double dam_v2h_fe10, e
save "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta", replace
clear


#Extreme Temperatures
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
xtreg total_deaths gdp_per_capita polity  control_total_patents population_density dif_temp v6-v26, fe
predict double v2h_fe, e
xtreg r1_total_deaths gdp_per_capita polity  control_total_patents density_1 dif_temp_1 v6-v26, fe
predict double v2h_fe1, e
xtreg r2_total_deaths gdp_per_capita polity  control_total_patents density_2 dif_temp_2 v6-v26, fe
predict double v2h_fe2, e
xtreg r3_total_deaths gdp_per_capita polity control_total_patents density_3 dif_temp_3 v6-v26, fe
predict double v2h_fe3, e
xtreg r4_total_deaths gdp_per_capita polity control_total_patents density_4 dif_temp_4 v6-v26, fe
predict double v2h_fe4, e
xtreg r5_total_deaths gdp_per_capita polity control_total_patents density_5 dif_temp_5 v6-v26, fe
predict double v2h_fe5, e
xtreg r6_total_deaths gdp_per_capita polity  control_total_patents density_6 dif_temp_6 v6-v26, fe
predict double v2h_fe6, e
xtreg r7_total_deaths gdp_per_capita polity control_total_patents density_7 dif_temp_7 v6-v26, fe
predict double v2h_fe7, e
xtreg r8_total_deaths gdp_per_capita polity control_total_patents density_8 dif_temp_8 v6-v26, fe
predict double v2h_fe8, e
xtreg r9_total_deaths gdp_per_capita polity control_total_patents density_9 dif_temp_9 v6-v26, fe
predict double v2h_fe9, e
xtreg r10_total_deaths gdp_per_capita polity control_total_patents density_10 dif_temp_10 v6-v26, fe
predict double v2h_fe10, e

#Damages
xtreg total_damages_adj gdp_per_capita polity  control_total_patents population_density dif_temp v6-v26, fe
predict double dam_v2h_fe, e
xtreg r1_total_damages_adj gdp_per_capita polity  control_total_patents density_1 dif_temp_1 v6-v26, fe
predict double dam_v2h_fe1, e
xtreg r2_total_damages_adj gdp_per_capita polity  control_total_patents density_2 dif_temp_2 v6-v26, fe
predict double dam_v2h_fe2, e
xtreg r3_total_damages_adj gdp_per_capita polity control_total_patents density_3 dif_temp_3 v6-v26, fe
predict double dam_v2h_fe3, e
xtreg r4_total_damages_adj gdp_per_capita polity control_total_patents density_4 dif_temp_4 v6-v26, fe
predict double dam_v2h_fe4, e
xtreg r5_total_damages_adj gdp_per_capita polity control_total_patents density_5 dif_temp_5 v6-v26, fe
predict double dam_v2h_fe5, e
xtreg r6_total_damages_adj gdp_per_capita polity  control_total_patents density_6 dif_temp_6 v6-v26, fe
predict double dam_v2h_fe6, e
xtreg r7_total_damages_adj gdp_per_capita polity control_total_patents density_7 dif_temp_7 v6-v26, fe
predict double dam_v2h_fe7, e
xtreg r8_total_damages_adj gdp_per_capita polity control_total_patents density_8 dif_temp_8 v6-v26, fe
predict double dam_v2h_fe8, e
xtreg r9_total_damages_adj gdp_per_capita polity control_total_patents density_9 dif_temp_9 v6-v26, fe
predict double dam_v2h_fe9, e
xtreg r10_total_damages_adj gdp_per_capita polity control_total_patents density_10 dif_temp_10 v6-v26, fe
predict double dam_v2h_fe10, e
save "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta", replace
clear


#Second Stage - Replication
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Replication"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson _storm_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _storm_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson _drought_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _drought_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson _flood_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _flood_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#Creating Latex file
esttab using "Replication_controlfunctionestimates.tex", keep(total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock lag_flood_k_stock lag_extemp_k_stock lag_drought_k_stock gdp_per_capita polity control_total_patents) varlabels(total_damages_adj Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7   total_deaths Year_t r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita Log_GDP_per_capita polity Institution_index control_total_patents Log_patent_applications _storm_granted_count Storm_adaptation_patents(granted)  _flood_granted_count Flood_adaptation_patents(granted) _extemp_granted_count ExtremeTemperature_adaptation_patents(granted)   _drought_granted_count Drought_adaptation_patents(granted))  replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 )) label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
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
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Mitigation"
#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 , fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#Drought
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtpoisson granted_count lag_k_stock _drought_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtpoisson granted_count lag_k_stock _drought_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj 
estadd scalar Cumulative = r(estimate)


#Floods
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtpoisson granted_count lag_k_stock _flood_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages
eststo: xtpoisson granted_count lag_k_stock _flood_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear


#Extemp
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear


#Compiling to Latex
esttab using "Mitigation (Control Function Estimates).tex", keep(lag_k_stock _storm_granted_count _flood_granted_count _extemp_granted_count _drought_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_storm_k_stock lag_flood_k_stock lag_extemp_k_stock lag_drought_k_stock gdp_per_capita polity control_total_patents) varlabels(total_damages_adj Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7  r8_total_damages_adj Year_t-8 r9_total_damages_adj Year_t-9 r10_total_damages_adj Year_t-10 total_deaths Year_t r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita Log_GDP_per_capita polity Institution_index control_total_patents Log_patent_applications _storm_granted_count Storm_adaptation_patents(granted) lag_storm_k_stock Storm_adaptation_knowledge_stocks(Year_t-1) _flood_granted_count Flood_adaptation_patents(granted) lag_flood_k_stock Flood_adaptation_knowledge_stocks(Year_t-1) _extemp_granted_count ExtremeTemperature_adaptation_patents(granted) lag_extemp_k_stock ExtremeTemperature_adaptation_knowledge_stocks(Year_t-1)  _drought_granted_count Drought_adaptation_patents(granted)  lag_drought_k_stock Drought_adaptation_knowledge_stocks(Year_t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 )) star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
clear
est clear
