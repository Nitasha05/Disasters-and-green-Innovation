#STORMS
#Deaths
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Storms Stata/data_storm.dta"
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat + death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat + death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat + death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8  lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat + death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat + death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat + death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 + death_hat10
estadd scalar Cumulative = r(estimate)
esttab using "SA : Storm-deaths (2SLS Estimates).tex", keep(lag_k_stock death_hat death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10  _storm_granted_count lag_storm_k_stock gdp_per_capita polity control_total_patents) replace b(3) se(3) nomtitle label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of storm deaths on green innovation response (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands") eform stats(Cumulative ll  N)
est clear


#Damages
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat + dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6  lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat + dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat + dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat + dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat + dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock _storm_granted_count dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10 lag_storm_k_stock gdp_per_capita polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat + dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9 + dam_hat10
estadd scalar Cumulative = r(estimate)
esttab using "SA : Storm-damages (2SLS Estimates).tex", keep(lag_k_stock dam_hat dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10  _storm_granted_count lag_storm_k_stock gdp_per_capita polity control_total_patents) replace b(3) se(3) nomtitle label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of storm damages on green innovation response (2SLS estimates) \label{reg122}) addnotes("Notes : Economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N)
est clear
clear
