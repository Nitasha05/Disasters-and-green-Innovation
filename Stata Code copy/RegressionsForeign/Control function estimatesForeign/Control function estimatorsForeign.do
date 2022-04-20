ssc install estout, replace
#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/Control function estimatesForeign/ReplicationForeign"
log using "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/Control function estimatesForeign/ReplicationForeign/ReplicationForeign.smcl"
#STORMS
#Deaths(10)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/Continent_storm.dta"
eststo: xtpoisson _storm_granted_count r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths r7_TOTDEATHS r7_total_deaths r8_TOTDEATHS r8_total_deaths r9_TOTDEATHS r9_total_deaths r10_TOTDEATHS r10_total_deaths lag_storm_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10 ,fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths+ r8_total_deaths+ r9_total_deaths+ r10_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS + r7_TOTDEATHS + r8_TOTDEATHS + r9_TOTDEATHS + r10_TOTDEATHS
estadd scalar CumulativeForeign = r(estimate)

#Damages(9)
eststo: xtpoisson _storm_granted_count r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj r7_TOTDAMAGES r7_total_damages_adj r8_TOTDAMAGES r8_total_damages_adj r9_TOTDAMAGES r9_total_damages_adj lag_storm_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 , fe vce(robust)
lincom   r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES  + r8_TOTDAMAGES + r9_TOTDAMAGES 
estadd scalar CumulativeForeign = r(estimate)
clear

#DROUGHTS(6)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/Continent_drought.dta"
#Deaths
eststo: xtpoisson _drought_granted_count r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths lag_drought_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS 
estadd scalar CumulativeForeign = r(estimate)


#Damages(6)
eststo: xtpoisson _drought_granted_count  r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj lag_drought_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+  r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+  r6_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)

clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/Continent_flood.dta"
#Deaths(6)
eststo: xtpoisson _flood_granted_count r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths lag_flood_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS 
estadd scalar CumulativeForeign = r(estimate)


#Damages(10)
eststo: xtpoisson _flood_granted_count  r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj r7_TOTDAMAGES r7_total_damages_adj r8_TOTDAMAGES r8_total_damages_adj r9_TOTDAMAGES r9_total_damages_adj r10_TOTDAMAGES r10_total_damages_adj lag_flood_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj+ r8_total_damages_adj+ r9_total_damages_adj+ r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES + r9_TOTDAMAGES + r10_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/Continent_extemp.dta"
#Deaths(8)
eststo: xtpoisson _extemp_granted_count r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths r7_TOTDEATHS r7_total_deaths r8_TOTDEATHS r8_total_deaths lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS + r7_TOTDEATHS + r8_TOTDEATHS
estadd scalar CumulativeForeign = r(estimate)

#Damages(8)
eststo: xtpoisson _extemp_granted_count  r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj r7_TOTDAMAGES r7_total_damages_adj r8_TOTDAMAGES r8_total_damages_adj lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 , fe vce(robust)
lincom   r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj+ r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES+ r7_TOTDAMAGES + r8_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear
log close




#Creating Latex file
esttab using "ForeignReplication_controlfunctionestimates.tex", rename(total_damages_adj total_deaths  r1_TOTDAMAGES r1_TOTDEATHS r1_total_damages_adj r1_total_deaths r2_TOTDAMAGES r2_TOTDEATHS r2_total_damages_adj r2_total_deaths r3_TOTDAMAGES r3_TOTDEATHS r3_total_damages_adj r3_total_deaths r4_TOTDAMAGES r4_TOTDEATHS r4_total_damages_adj r4_total_deaths r5_TOTDAMAGES r5_TOTDEATHS  r5_total_damages_adj r5_total_deaths r6_TOTDAMAGES r6_TOTDEATHS r6_total_damages_adj r6_total_deaths r7_TOTDAMAGES r7_TOTDEATHS r7_total_damages_adj r7_total_deaths r8_TOTDAMAGES r8_TOTDEATHS r8_total_damages_adj r8_total_deaths r9_TOTDAMAGES r9_TOTDEATHS  r9_total_damages_adj r9_total_deaths r10_TOTDAMAGES r10_TOTDEATHS  r10_total_damages_adj r10_total_deaths lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(ks2h_fe v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10)  varlabels( r1_TOTDEATHS Year_t-1(Foreign) r1_total_deaths Year_t-1 r2_TOTDEATHS Year_t-2(Foreign) r2_total_deaths Year_t-2 r3_TOTDEATHS Year_t-3(Foreign)  r3_total_deaths Year_t-3 r4_TOTDEATHS Year_t-4(Foreign) r4_total_deaths Year_t-4 r5_TOTDEATHS Year_t-5(Foreign) r5_total_deaths Year_t-5 r6_TOTDEATHS Year_t-6(Foreign) r6_total_deaths Year_t-6 r7_TOTDEATHS Year_t-7(Foreign) r7_total_deaths Year_t-7 r8_TOTDEATHS Year_t-8(Foreign) r8_total_deaths Year_t-8 r9_TOTDEATHS Year_t-9(Foreign) r9_total_deaths Year_t-9 r10_TOTDEATHS Year_t-10(Foreign) r10_total_deaths Year_t-10 lag_k_stock Green_KS(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita(t-1) polity Institution_index control_total_patents  Log_patent_applications  lag_storm_k_stock Adaptation_KS(Year_t-1))  replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to foreign and domestic extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative CumulativeForeign ll  N, labels( "Cumulative(domestic)" "Cumulative(foreign)" " Log-liklihood" "Observations"))
est clear



#Second Stage - Mitigation
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/Control function estimatesForeign/MitigationForeign/MitigationForeign.smcl"
#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/Continent_storm.dta"
#Deaths(6)
eststo: xtpoisson granted_count lag_k_stock  r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths lag_storm_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS 
estadd scalar CumulativeForeign = r(estimate)
#Damages(6)
eststo: xtpoisson granted_count lag_k_stock   r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj lag_storm_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear

#Drought
#Deaths(10)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/Continent_drought.dta"
eststo: xtpoisson granted_count lag_k_stock  r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths r7_TOTDEATHS r7_total_deaths r8_TOTDEATHS r8_total_deaths r9_TOTDEATHS r9_total_deaths r10_TOTDEATHS r10_total_deaths lag_drought_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2  v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10 ,fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths+ r8_total_deaths+ r9_total_deaths+ r10_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS + r7_TOTDEATHS + r8_TOTDEATHS + r9_TOTDEATHS + r10_TOTDEATHS
estadd scalar CumulativeForeign = r(estimate)
#Damages(10)
eststo: xtpoisson granted_count lag_k_stock   r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj r7_TOTDAMAGES r7_total_damages_adj r8_TOTDAMAGES r8_total_damages_adj r9_TOTDAMAGES r9_total_damages_adj r10_TOTDAMAGES r10_total_damages_adj lag_drought_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj+ r8_total_damages_adj+ r9_total_damages_adj+ r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES + r9_TOTDAMAGES + r10_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear

#Floods
#Deaths(8)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/Continent_flood.dta"
eststo: xtpoisson granted_count lag_k_stock  r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths r7_TOTDEATHS r7_total_deaths r8_TOTDEATHS r8_total_deaths lag_flood_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths+ r8_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS  + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS + r7_TOTDEATHS + r8_TOTDEATHS
estadd scalar CumulativeForeign = r(estimate)
#Damages(6)
eststo: xtpoisson granted_count lag_k_stock   r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj lag_flood_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 , fe vce(robust)

lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear


#Extemp
#Deaths(10)
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/Continent_extemp.dta"
eststo: xtpoisson granted_count lag_k_stock r1_TOTDEATHS r1_total_deaths r2_TOTDEATHS r2_total_deaths r3_TOTDEATHS r3_total_deaths r4_TOTDEATHS r4_total_deaths r5_TOTDEATHS r5_total_deaths r6_TOTDEATHS r6_total_deaths r7_TOTDEATHS r7_total_deaths r8_TOTDEATHS r8_total_deaths r9_TOTDEATHS r9_total_deaths r10_TOTDEATHS r10_total_deaths lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 v2h_fe1 v2h_fe2      v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10 ,fe vce(robust)
lincom  r1_total_deaths  +  r2_total_deaths +  r3_total_deaths +  r4_total_deaths +  r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS  + r7_TOTDEATHS + r8_TOTDEATHS + r9_TOTDEATHS + r10_TOTDEATHS  
estadd scalar CumulativeForeign = r(estimate)
#Damages(10)
eststo: xtpoisson granted_count lag_k_stock  r1_TOTDAMAGES r1_total_damages_adj r2_TOTDAMAGES r2_total_damages_adj r3_TOTDAMAGES r3_total_damages_adj r4_TOTDAMAGES r4_total_damages_adj r5_TOTDAMAGES r5_total_damages_adj r6_TOTDAMAGES r6_total_damages_adj r7_TOTDAMAGES r7_total_damages_adj r8_TOTDAMAGES r8_total_damages_adj r9_TOTDAMAGES r9_total_damages_adj r10_TOTDAMAGES r10_total_damages_adj lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents  ks2h_fe v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj+ r8_total_damages_adj+ r9_total_damages_adj+ r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES + r9_TOTDAMAGES + r10_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear
log close

cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/Control function estimatesForeign/MitigationForeign"
#Compiling to Latex
esttab using "Foreign Mitigation (Control Function Estimates).tex", rename(total_damages_adj total_deaths  r1_TOTDAMAGES r1_TOTDEATHS r1_total_damages_adj r1_total_deaths r2_TOTDAMAGES r2_TOTDEATHS r2_total_damages_adj r2_total_deaths r3_TOTDAMAGES r3_TOTDEATHS r3_total_damages_adj r3_total_deaths r4_TOTDAMAGES r4_TOTDEATHS r4_total_damages_adj r4_total_deaths r5_TOTDAMAGES r5_TOTDEATHS  r5_total_damages_adj r5_total_deaths r6_TOTDAMAGES r6_TOTDEATHS r6_total_damages_adj r6_total_deaths r7_TOTDAMAGES r7_TOTDEATHS r7_total_damages_adj r7_total_deaths r8_TOTDAMAGES r8_TOTDEATHS r8_total_damages_adj r8_total_deaths r9_TOTDAMAGES r9_TOTDEATHS  r9_total_damages_adj r9_total_deaths r10_TOTDAMAGES r10_TOTDEATHS  r10_total_damages_adj r10_total_deaths lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(ks2h_fe v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10 )  varlabels( r1_TOTDEATHS Year_t-1(Foreign) r1_total_deaths Year_t-1 r2_TOTDEATHS Year_t-2(Foreign) r2_total_deaths Year_t-2 r3_TOTDEATHS Year_t-3(Foreign)  r3_total_deaths Year_t-3 r4_TOTDEATHS Year_t-4(Foreign) r4_total_deaths Year_t-4 r5_TOTDEATHS Year_t-5(Foreign) r5_total_deaths Year_t-5 r6_TOTDEATHS Year_t-6(Foreign) r6_total_deaths Year_t-6 r7_TOTDEATHS Year_t-7(Foreign) r7_total_deaths Year_t-7 r8_TOTDEATHS Year_t-8(Foreign) r8_total_deaths Year_t-8 r9_TOTDEATHS Year_t-9(Foreign) r9_total_deaths Year_t-9 r10_TOTDEATHS Year_t-10(Foreign) r10_total_deaths Year_t-10  lag_k_stock Green_KS(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita(t-1) polity Institution_index control_total_patents  Log_patent_applications  lag_storm_k_stock Adaptation_KS(Year_t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to foreign and domestic extreme weather shocks (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative CumulativeForeign ll  N, labels( "Cumulative(domestic)" "Cumulative(foreign)" " Log-liklihood" "Observations"))
clear
est clear
