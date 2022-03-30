Replication
cd "/Users/nitashajhala/Desktop/Disaster_adapt panels/Regressions/Poisson FE/Replication(Basic)"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson _storm_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _storm_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson _drought_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _drought_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear


#FLOODS
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson _flood_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _flood_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear


#Creating Latex file
esttab using "Replication_PoissonFE.tex", keep(total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock lag_flood_k_stock lag_extemp_k_stock lag_drought_k_stock gdp_per_capita polity control_total_patents) varlabels(total_damages_adj Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7   total_deaths Year_t r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita Log_GDP_per_capita polity Institution_index control_total_patents Log_patent_applications _storm_granted_count Storm_adaptation_patents(granted)  _flood_granted_count Flood_adaptation_patents(granted) _extemp_granted_count ExtremeTemperature_adaptation_patents(granted) _drought_granted_count Drought_adaptation_patents(granted)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 )) star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (Poisson-FE estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear

#Mitigation
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear


#DROUGHTS
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock _drought_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock _drought_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_drought_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear


#FLOODS
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Floods Stata/data_flood.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock _flood_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock _flood_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_flood_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/ExTemp Stata/data_extemp.dta"
#Deaths
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear


#Creating Latex file
esttab using "Mitigation_PoissonFE.tex", keep(total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_k_stock _drought_granted_count _storm_granted_count _extemp_granted_count _flood_granted_count lag_storm_k_stock lag_flood_k_stock lag_extemp_k_stock lag_drought_k_stock gdp_per_capita polity control_total_patents) varlabels(total_damages_adj Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7  r8_total_damages_adj Year_t-8 r9_total_damages_adj Year_t-9 r10_total_damages_adj Year_t-10 total_deaths Year_t r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita Log_GDP_per_capita polity Institution_index control_total_patents Log_patent_applications _storm_granted_count Storm_adaptation_patents(granted) lag_storm_k_stock Storm_adaptation_knowledge_stocks(Year_t-1) _flood_granted_count Flood_adaptation_patents(granted) lag_flood_k_stock Flood_adaptation_knowledge_stocks(Year_t-1) _extemp_granted_count ExtremeTemperature_adaptation_patents(granted) lag_extemp_k_stock ExtremeTemperature_adaptation_knowledge_stocks(Year_t-1)  _drought_granted_count Drought_adaptation_patents(granted)  lag_drought_k_stock Drought_adaptation_knowledge_stocks(Year_t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 )) star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (Poisson-FE estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear








