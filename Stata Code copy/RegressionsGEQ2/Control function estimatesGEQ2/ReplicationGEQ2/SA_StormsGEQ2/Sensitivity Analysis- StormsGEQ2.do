use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
#Deaths
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Replication/SA_Storms/SA_storm_deaths.smcl"
eststo: xtpoisson _storm_granted_count  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 , fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Replication/SA_Storms"
esttab using "SA : Storm-deaths (Control Function Estimates).tex", drop(ks2h_fe v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10) replace b(3) se(3) nomtitle label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of storm deaths on storm adaptation innovation response (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands") eform stats(Cumulative ll  N, labels("Cumulative effect" "Log-liklihood" "Observations"))
log close
est clear

#Damages
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Replication/SA_Storms/SA_storm_damages.smcl"
eststo: xtpoisson _storm_granted_count  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson _storm_granted_count  r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_storm_k_stock  gdp_per_capita_lag polity ks2h_fe control_total_patents v6-v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom  r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Replication/SA_Storms"
esttab using "SA : Storm-damages (Control Function Estimates).tex", drop(ks2h_fe v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10) replace b(3) se(3) nomtitle label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of storm damages on storm adaptation innovation response (Control function estimates) \label{reg122}) addnotes("Notes : Damages are measures in billions US\$ at 2015 price.") eform stats(Cumulative ll  N, labels("Cumulative effect" "Log-liklihood" "Observations"))
log close
est clear
clear
