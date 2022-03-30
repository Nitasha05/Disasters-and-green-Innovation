
ssc install estout, replace
est clear
#Drought
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Droughts Stata/data_drought.dta"
eststo: xtreg total_damages_adj v6-v26 lag_drought_k_stock gdp_per_capita polity control_total_patents population_density lpop difmonth, fe
eststo: xtreg total_damages_adj v6-v26 lag_drought_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_difmonth, fe
eststo: xtreg total_deaths v6-v26 lag_drought_k_stock gdp_per_capita polity control_total_patents population_density lpop difmonth, fe
eststo: xtreg total_deaths v6-v26 lag_drought_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_difmonth, fe
eststo: xtreg total_affected v6-v26 lag_drought_k_stock gdp_per_capita polity control_total_patents population_density lpop difmonth , fe
eststo: xtreg total_affected v6-v26 lag_drought_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_difmonth, fe
clear

#Storm
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Storms Stata/data_storm.dta"
eststo: xtreg total_damages_adj v6-v26 lag_storm_k_stock gdp_per_capita polity control_total_patents population_density lpop combi, fe
eststo: xtreg total_damages_adj v6-v26 lag_storm_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_combi, fe
eststo: xtreg total_deaths v6-v26 lag_storm_k_stock gdp_per_capita polity control_total_patents population_density lpop combi, fe
eststo: xtreg total_deaths v6-v26 lag_storm_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_combi, fe
eststo: xtreg total_affected v6-v26 lag_storm_k_stock gdp_per_capita polity control_total_patents population_density lpop combi, fe
eststo: xtreg total_affected v6-v26 lag_storm_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_combi, fe

clear

#Flood
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Floods Stata/data_flood.dta"
eststo: xtreg total_damages_adj v6-v26 lag_flood_k_stock gdp_per_capita polity control_total_patents population_density lpop flood, fe
eststo: xtreg total_damages_adj v6-v26 lag_flood_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_flood, fe
eststo: xtreg total_deaths v6-v26 lag_flood_k_stock gdp_per_capita polity control_total_patents population_density lpop flood, fe
eststo: xtreg total_deaths v6-v26 lag_flood_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_flood, fe
eststo: xtreg total_affected v6-v26 lag_flood_k_stock gdp_per_capita polity control_total_patents population_density lpop flood, fe
eststo: xtreg total_affected v6-v26 lag_flood_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_flood, fe

clear

#Extreme Temperature
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/ExTemp Stata/data_extemp.dta"
eststo: xtreg total_damages_adj v6-v26 lag_extemp_k_stock gdp_per_capita polity control_total_patents population_density lpop dif_temp, fe
eststo: xtreg total_damages_adj v6-v26 lag_extemp_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_dif_temp, fe
eststo: xtreg total_deaths v6-v26 lag_extemp_k_stock gdp_per_capita polity control_total_patents population_density lpop dif_temp, fe
eststo: xtreg total_deaths v6-v26 lag_extemp_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_dif_temp, fe
eststo: xtreg total_affected v6-v26 lag_extemp_k_stock gdp_per_capita polity control_total_patents population_density lpop dif_temp, fe
eststo: xtreg total_affected v6-v26 lag_extemp_k_stock gdp_per_capita polity control_total_patents population_density lpop r10_dif_temp, fe

clear

esttab using "First_stage.tex", keep(difmonth r10_difmonth combi r10_combi flood r10_flood dif_temp r10_dif_temp)  varlabels(difmonth Precipitation_anomaly r10_difmonth Drought_indicator combi Wind_speed r10_combi Storm_indicator flood Positive_precipitation_anomaly r10_flood Flood_indicator dif_temp Temperature_anomaly r10_dif_temp Temperature_indicator) replace b(3) se(3) mtitle("Damages(log)" "Damages(log)" "Deaths(log)" "Deaths(log)" "Affecetd(log)" "Affecetd(log)" "Damages(log)" "Damages(log)" "Deaths(log)" "Deaths(log)" "Affecetd(log)" "Affecetd(log)" "Damages(log)" "Damages(log)" "Deaths(log)" "Deaths(log)" "Affecetd(log)" "Affecetd(log)" "Damages(log)" "Damages(log)" "Deaths(log)" "Deaths(log)" "Affecetd(log)" "Affecetd(log)") mgroups("Droughts" "Storm" "Flood" "Extreme Temperature", pattern(1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 )) label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Results of first-stage regressions) addnotes("Notes : Deaths and affected are measured in thousands and economic damages are measures in billions US\$ at 2015 price.") scalars("r2_o Overall R-square")
