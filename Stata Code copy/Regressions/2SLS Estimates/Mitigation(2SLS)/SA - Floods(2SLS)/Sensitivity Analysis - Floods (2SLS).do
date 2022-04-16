#Floods
#Deaths
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Mitigation(2SLS)/SA - Floods(2SLS)/2SLS_Flood_deaths.smcl"
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
lab var floodks_hat "Flood adaptation KS(t-1)"
lab var death_hat "Year t"
lab var death_hat1 "Year t-1"
lab var death_hat2 "Year t-2"
lab var death_hat3 "Year t-3"
lab var death_hat4 "Year t-4"
lab var death_hat5 "Year t-5"
lab var death_hat6 "Year t-6"
lab var death_hat7 "Year t-7"
lab var death_hat8 "Year t-8"
lab var death_hat9 "Year t-9"
lab var death_hat10 "Year t-10"
lab var dam_hat "Year t"
lab var dam_hat1 "Year t-1"
lab var dam_hat2 "Year t-2"
lab var dam_hat3 "Year t-3"
lab var dam_hat4 "Year t-4"
lab var dam_hat5 "Year t-5"
lab var dam_hat6 "Year t-6"
lab var dam_hat7 "Year t-7"
lab var dam_hat8 "Year t-8"
lab var dam_hat9 "Year t-9"
lab var dam_hat10 "Year t-10"
est clear
eststo: xtpoisson granted_count lag_k_stock death_hat1 death_hat2 death_hat3 death_hat4 death_hat5  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock   death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock  death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8   floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom death_hat1 + death_hat2 + death_hat3 + death_hat4 + death_hat5 + death_hat6 + death_hat7 + death_hat8 + death_hat9 + death_hat10
estadd scalar Cumulative = r(estimate)
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Mitigation(2SLS)/SA - Floods(2SLS)"
esttab using "SA : Flood-deaths (2SLS Estimates).tex", keep(lag_k_stock death_hat1 death_hat2 death_hat3 death_hat4 death_hat5 death_hat6 death_hat7 death_hat8 death_hat9 death_hat10     floodks_hat   gdp_per_capita_lag polity control_total_patents) replace b(3) se(3) nomtitle label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of flood deaths on green innovation response (2SLS estimates) \label{reg122}) addnotes("Notes : Deaths are measured in thousands") eform stats(Cumulative ll  N)
log close


#Damages
est clear
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Mitigation(2SLS)/SA - Floods(2SLS)/2SLS_Flood_damages.smcl"
eststo: xtpoisson granted_count lag_k_stock dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6   floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9
estadd scalar Cumulative = r(estimate)
eststo: xtpoisson granted_count lag_k_stock dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10  floodks_hat   gdp_per_capita_lag polity control_total_patents v6-v26, fe vce(robust)
lincom dam_hat1 + dam_hat2 + dam_hat3 + dam_hat4 + dam_hat5 + dam_hat6 + dam_hat7 + dam_hat8 + dam_hat9 + dam_hat10
estadd scalar Cumulative = r(estimate)
cd "/Users/nitashajhala/Desktop/Stata Code/Regressions/2SLS Estimates/Mitigation(2SLS)/SA - Floods(2SLS)"
esttab using "SA : Flood-damages (2SLS Estimates).tex", keep(lag_k_stock  dam_hat1 dam_hat2 dam_hat3 dam_hat4 dam_hat5 dam_hat6 dam_hat7 dam_hat8 dam_hat9 dam_hat10     floodks_hat   gdp_per_capita_lag polity control_total_patents) replace b(3) se(3) nomtitle label star(% 0.15  * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Sensitivity analysis: effect of flood damages on green innovation response (2SLS estimates) \label{reg122}) addnotes("Notes : Economic damages are measures in billions US\$ at 2015 price") eform stats(Cumulative ll  N)
log close
clear
