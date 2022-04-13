use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/Control function estimates/Mitigation/SA_Extreme Temperature"
#Deaths
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 , fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 v2h_fe v2h_fe1 v2h_fe2 v2h_fe3 v2h_fe4 v2h_fe5 v2h_fe6 v2h_fe7 v2h_fe8 v2h_fe9 v2h_fe10, fe vce(robust)
lincom total_deaths + r1_total_deaths  + r2_total_deaths + r3_total_deaths + r4_total_deaths + r5_total_deaths + r6_total_deaths + r7_total_deaths + r8_total_deaths + r9_total_deaths + r10_total_deaths 
estadd scalar Cumulative = r(estimate)
esttab using "SA : Extemp-deaths (Control Function Estimates).tex", keep(total_deaths r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths lag_k_stock lag_extemp_k_stock gdp_per_capita polity control_total_patents) replace b(3) se(3) nomtitle label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of Extreme Temperature deaths on green innovation response (Control function estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands") eform stats(Cumulative ll  N, labels("Cumulative effect" "Log-liklihood" "Observations")) 
est clear

#Damages
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _extemp_granted_count total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_extemp_k_stock gdp_per_capita polity control_total_patents v6-v26 dam_v2h_fe dam_v2h_fe1 dam_v2h_fe2 dam_v2h_fe3 dam_v2h_fe4 dam_v2h_fe5 dam_v2h_fe6 dam_v2h_fe7 dam_v2h_fe8 dam_v2h_fe9 dam_v2h_fe10, fe vce(robust)
lincom total_damages_adj+ r1_total_damages_adj+ r2_total_damages_adj+ r3_total_damages_adj+ r4_total_damages_adj+ r5_total_damages_adj + r6_total_damages_adj + r7_total_damages_adj + r8_total_damages_adj + r9_total_damages_adj + r10_total_damages_adj 
estadd scalar Cumulative = r(estimate)
esttab using "SA : Extemp-damages (Control Function Estimates).tex", keep(total_damages_adj r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj lag_k_stock lag_extemp_k_stock gdp_per_capita polity control_total_patents) replace b(3) se(3) nomtitle label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of Extreme Temperature damages on green innovation response (Control function estimates) \label{reg122}) addnotes("Notes : Damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N, labels("Cumulative effect" "Log-liklihood" "Observations")) 
est clear
clear
