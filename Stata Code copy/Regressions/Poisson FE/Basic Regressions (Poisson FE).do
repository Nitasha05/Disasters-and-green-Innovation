#Second Stage - Replication
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Poisson FE/Replication(Basic)"
#STORMS
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/Poisson FE/Replication(Basic)/PoissonFE_replication.smcl"
#Deaths(7)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtpoisson _storm_granted_count r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages(7)
eststo: xtpoisson _storm_granted_count r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#DROUGHTS(7)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
#Deaths
eststo: xtpoisson _drought_granted_count r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_drought_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26  , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 

#Damages(7)
eststo: xtpoisson _drought_granted_count r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_drought_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26  , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj + r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#FLOODS
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
#Deaths(7)
eststo: xtpoisson _flood_granted_count r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_flood_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26    , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths
estadd scalar Cumulative = r(estimate)

#Damages(7)
eststo: xtpoisson _flood_granted_count r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_flood_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26      , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#EXTREME TEMPERATURES
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
#Deaths(7)
eststo: xtpoisson _extemp_granted_count r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26    , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)

#Damages(7)
eststo: xtpoisson _extemp_granted_count r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26    , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj+ r6_total_damages_adj+ r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear

#Creating Latex file
esttab using "Replication_PoisonFEestimates.tex", rename(total_damages_adj total_deaths r1_total_damages_adj r1_total_deaths r2_total_damages_adj r2_total_deaths r3_total_damages_adj r3_total_deaths r4_total_damages_adj r4_total_deaths r5_total_damages_adj r5_total_deaths r6_total_damages_adj r6_total_deaths r7_total_damages_adj r7_total_deaths r8_total_damages_adj r8_total_deaths r9_total_damages_adj r9_total_deaths r10_total_damages_adj r10_total_deaths lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop(v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26  )  varlabels( r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_KS(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita(t-1) polity Institution_index control_total_patents  Log_patent_applications  lag_storm_k_stock Adaptation_KS(Year_t-1))  replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Adaptation innovation response to extreme weather shocks (Poisson FE estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
est clear
log close


#Second Stage - Mitigation
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/Poisson FE/Mitigation(Basic)/PoissonFE_mitigation.smcl"
est clear
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Poisson FE/Mitigation(Basic)"
#Storms
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
#Deaths(7)
eststo: xtpoisson granted_count lag_k_stock  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26  , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths+ r7_total_deaths
estadd scalar Cumulative = r(estimate)
#Damages(7)
eststo: xtpoisson granted_count lag_k_stock  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26  , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear

#Drought
#Deaths(7)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtpoisson granted_count lag_k_stock  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_drought_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26      , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages(10)
eststo: xtpoisson granted_count lag_k_stock  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_drought_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26      , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)


#Floods
#Deaths(7)
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtpoisson granted_count lag_k_stock  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_flood_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26    , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths
estadd scalar Cumulative = r(estimate)
#Damages(6)
eststo: xtpoisson granted_count lag_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_flood_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26  , fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj
estadd scalar Cumulative = r(estimate)
clear


#Extemp
#Deaths(7)
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtpoisson granted_count lag_k_stock r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26      , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)
#Damages(7)
eststo: xtpoisson granted_count lag_k_stock r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents   v6-v26      , fe vce(robust)
lincom r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
clear


#Compiling to Latex
esttab using "Mitigation (Poisson FE Estimates).tex", rename(total_damages_adj total_deaths r1_total_damages_adj r1_total_deaths r2_total_damages_adj r2_total_deaths r3_total_damages_adj r3_total_deaths r4_total_damages_adj r4_total_deaths r5_total_damages_adj r5_total_deaths r6_total_damages_adj r6_total_deaths r7_total_damages_adj r7_total_deaths r8_total_damages_adj r8_total_deaths r9_total_damages_adj r9_total_deaths r10_total_damages_adj r10_total_deaths lag_flood_k_stock lag_storm_k_stock lag_drought_k_stock lag_storm_k_stock lag_extemp_k_stock lag_storm_k_stock) drop( v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26            )  varlabels( r1_total_deaths Year_t-1 r2_total_deaths Year_t-2 r3_total_deaths Year_t-3 r4_total_deaths Year_t-4 r5_total_deaths Year_t-5 r6_total_deaths Year_t-6 r7_total_deaths Year_t-7 r8_total_deaths Year_t-8 r9_total_deaths Year_t-9 r10_total_deaths Year_t-10 lag_k_stock Green_KS(Year_t-1)  gdp_per_capita_lag Log_Gdp_per_capita(t-1) polity Institution_index control_total_patents  Log_patent_applications  lag_storm_k_stock Adaptation_KS(Year_t-1)) replace b(3) se(3) mtitle("Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages" "Deaths" "Damages") mgroups( "Storm" "Drought" "Flood" "Extreme Temperature", pattern(1 0  1 0  1 0  1 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Green innovation response to extreme weather shocks (Poisson FE estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for knowledge stock.") eform stats(Cumulative ll  N, labels( "Cumulative effect" " Log-liklihood" "Observations"))
log close
clear
est clear
