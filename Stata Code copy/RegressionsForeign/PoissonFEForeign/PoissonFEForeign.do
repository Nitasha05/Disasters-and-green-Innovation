

#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/PoissonFEForeign/ReplicationForeign"
log using "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/PoissonFEForeign/Replication_2SLSForeign.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/Continent_storm.dta"
eststo: xtpoisson _storm_granted_count gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS   r6_TOTDEATHS    r7_TOTDEATHS lag_storm_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths, robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS  + r7_TOTDEATHS   
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson _storm_granted_count gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES   r7_TOTDAMAGES lag_storm_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/Continent_drought.dta"
#Deaths
eststo: xtpoisson _flood_drought_count gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS lag_drought_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths, robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS 
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson _flood_drought_count gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES lag_drought_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj 
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES 
estadd scalar CumulativeForeign = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/Continent_flood.dta"
#Deaths
eststo: xtpoisson _flood_granted_count gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS lag_flood_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths , robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths  
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS 
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson _flood_granted_count gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES   r7_TOTDAMAGES   r8_TOTDAMAGES lag_flood_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES 
estadd scalar CumulativeForeign = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/Continent_extemp.dta"
#Deaths
eststo: xtpoisson _flood_extemp_count gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS   r6_TOTDEATHS    r7_TOTDEATHS   r8_TOTDEATHS lag_extemp_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths , robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS  + r7_TOTDEATHS + r8_TOTDEATHS  
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson _flood_extemp_count gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES   r7_TOTDAMAGES   r8_TOTDAMAGES lag_extemp_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES 
estadd scalar CumulativeForeign = r(estimate)
clear
log close

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/PoissonFEForeign/ReplicationForeign"
esttab using "Foreign_Replication_PoissonFE.tex", rename(r1_total_deaths r1_total_damages_adj r2_total_deaths r2_total_damages_adj r3_total_deaths r3_total_damages_adj r4_total_deaths r4_total_damages_adj r5_total_deaths r5_total_damages_adj r6_total_deaths r6_total_damages_adj r7_total_deaths r7_total_damages_adj r8_total_deaths r8_total_damages_adj r9_total_deaths r9_total_damages_adj r10_total_deaths r10_total_damages_adj lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7 lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index  _storm_granted_count Storm_adaptation_patents(granted)  _flood_granted_count Flood_adaptation_patents(granted) _flood_extemp_count ExtremeTemperature_adaptation_patents(granted) _flood_drought_count Drought_adaptation_patents(granted) lag_storm_k_stock Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (PoissonFE) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.")eform stats(Cumulative CumulativeForeign ll  N, labels( "Cumulative(domestic)" "Cumulative(foreign)" " Log-liklihood" "Observations"))
est clear


#Second Stage - Mitigation
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/PoissonFEForeign/Mitigation_2SLSForeign.smcl"
#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/Continent_storm.dta"
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS   r6_TOTDEATHS lag_storm_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths, robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS    
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES lag_storm_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj , robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj 
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES 
estadd scalar CumulativeForeign = r(estimate)
clear

#DROUGHTS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/Continent_drought.dta"
#Deaths
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS   r6_TOTDEATHS    r7_TOTDEATHS   r8_TOTDEATHS   r9_TOTDEATHS   r10_TOTDEATHS lag_drought_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths, robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS  + r7_TOTDEATHS + r8_TOTDEATHS + r9_TOTDEATHS + r10_TOTDEATHS  
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES   r7_TOTDAMAGES   r8_TOTDAMAGES lag_drought_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/Continent_flood.dta"
#Deaths
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS   r6_TOTDEATHS    r7_TOTDEATHS   r8_TOTDEATHS lag_flood_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths, robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths 
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS  + r7_TOTDEATHS + r8_TOTDEATHS  
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES   r7_TOTDAMAGES   r8_TOTDAMAGES   r9_TOTDAMAGES   r10_TOTDAMAGES lag_flood_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES + r9_TOTDAMAGES + r10_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/Continent_extemp.dta"
#Deaths
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDEATHS   r2_TOTDEATHS   r3_TOTDEATHS   r4_TOTDEATHS   r5_TOTDEATHS   r6_TOTDEATHS    r7_TOTDEATHS   r8_TOTDEATHS   r9_TOTDEATHS   r10_TOTDEATHS lag_extemp_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths, robust i(nContinent) fe
lincom  r1_total_deaths + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths
estadd scalar Cumulative = r(estimate)
lincom r1_TOTDEATHS + r2_TOTDEATHS + r3_TOTDEATHS + r4_TOTDEATHS + r5_TOTDEATHS + r6_TOTDEATHS  + r7_TOTDEATHS + r8_TOTDEATHS + r9_TOTDEATHS + r10_TOTDEATHS  
estadd scalar CumulativeForeign = r(estimate)

#Damages
eststo: xtpoisson ratio_green_granted lag_k_stock gdp_per_capita_lag polity  v6-v26 r1_TOTDAMAGES   r2_TOTDAMAGES   r3_TOTDAMAGES   r4_TOTDAMAGES   r5_TOTDAMAGES   r6_TOTDAMAGES   r7_TOTDAMAGES   r8_TOTDAMAGES   r9_TOTDAMAGES   r10_TOTDAMAGES lag_extemp_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj, robust i(nContinent) fe
lincom   r1_total_damages_adj + r2_total_damages_adj + r3_total_damages_adj + r4_total_damages_adj + r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj
estadd scalar Cumulative = r(estimate)
lincom   r1_TOTDAMAGES + r2_TOTDAMAGES + r3_TOTDAMAGES + r4_TOTDAMAGES + r5_TOTDAMAGES + r6_TOTDAMAGES + r7_TOTDAMAGES + r8_TOTDAMAGES + r9_TOTDAMAGES + r10_TOTDAMAGES
estadd scalar CumulativeForeign = r(estimate)
clear
log close 

#Creating Latex file
cd "/Users/nitashajhala/Desktop/Stata Code/RegressionsForeign/PoissonFEForeign/MitigationForeign"
esttab using "Foreign_Mitigation_PoissonFE.tex", rename(r1_total_deaths r1_total_damages_adj r2_total_deaths r2_total_damages_adj r3_total_deaths r3_total_damages_adj r4_total_deaths r4_total_damages_adj r5_total_deaths r5_total_damages_adj r6_total_deaths r6_total_damages_adj r7_total_deaths r7_total_damages_adj r8_total_deaths r8_total_damages_adj r9_total_deaths r9_total_damages_adj r10_total_deaths r10_total_damages_adj lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop( v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26) varlabels(dam_hat Year_t r1_total_damages_adj Year_t-1 r2_total_damages_adj Year_t-2 r3_total_damages_adj Year_t-3 r4_total_damages_adj Year_t-4 r5_total_damages_adj Year_t-5 r6_total_damages_adj Year_t-6 r7_total_damages_adj Year_t-7  r8_total_damages_adj Year_t-8 r9_total_damages_adj Year_t-9 r10_total_damages_adj Year_t-10  lag_k_stock Green_technology_knowledge_stocks(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita_lag polity Institution_index  _storm_granted_count Storm_adaptation_patents(granted) lag_storm_k_stock Adaptation_KS(t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (PoissonFE) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative CumulativeForeign ll  N, labels( "Cumulative(domestic)" "Cumulative(foreign)" " Log-liklihood" "Observations"))
est clear








