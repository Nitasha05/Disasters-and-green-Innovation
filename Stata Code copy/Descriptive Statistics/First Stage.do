cd "/Users/nitashajhala/Desktop/Stata Code/Descriptive Statistics"
log using "/Users/nitashajhala/Desktop/Stata Code/Regressions/First Stage.smcl"
est clear
#Drought
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtreg total_damages_adj v6-v26 lag_drought_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop difmonth, fe
eststo: xtreg total_deaths v6-v26 lag_drought_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop difmonth, fe
eststo: xtreg total_affected v6-v26 lag_drought_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop difmonth , fe
eststo: xtreg lag_drought_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents population_density lpop r10_difmonth , fe
clear

#Storm
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtreg total_damages_adj v6-v26 lag_storm_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop combi, fe
eststo: xtreg total_deaths v6-v26 lag_storm_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop combi, fe
eststo: xtreg total_affected v6-v26 lag_storm_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop combi, fe
eststo: xtreg lag_storm_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents population_density lpop r10_combi, fe

clear

#Flood
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtreg total_damages_adj v6-v26 lag_flood_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop flood, fe
eststo: xtreg total_deaths v6-v26 lag_flood_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop flood, fe
eststo: xtreg total_affected v6-v26 lag_flood_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop flood, fe
eststo: xtreg lag_flood_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents population_density lpop r10_flood, fe
clear

#Extreme Temperature
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtreg total_damages_adj v6-v26 lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop dif_temp, fe
eststo: xtreg total_deaths v6-v26 lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop dif_temp, fe
eststo: xtreg total_affected v6-v26 lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents population_density lpop dif_temp, fe
eststo: xtreg lag_extemp_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents population_density lpop r10_dif_temp, fe
clear

esttab using "First Stage Results.tex", keep(difmonth r10_difmonth combi r10_combi flood r10_flood dif_temp r10_dif_temp gdp_per_capita_lag polity control_total_patents population_density lpop)  varlabels(difmonth Precipitation_anomaly r10_difmonth Drought_indicator combi Wind_speed r10_combi Storm_indicator flood Positive_precipitation_anomaly r10_flood Flood_indicator dif_temp Temperature_anomaly r10_dif_temp Temperature_indicator gdp_per_capita_lag GDP(t-1) polity Institution_index control_total_patents Total_Patents(Log) population_density Pop.Density lpop Pop.(log)) replace b(3) se(3) mtitle("Damages(log)" "Deaths(log)" "Affecetd(log)" "Drought KS (log)"  "Damages(log)" "Deaths(log)" "Affecetd(log)" "Storm KS (log)" "Damages(log)" "Deaths(log)" "Affecetd(log)" "Flood KS (log)" "Damages(log)" "Deaths(log)" "Affecetd(log)" "Extemp KS (log)") mgroups("Drought" "Storm" "Flood" "Extreme Temperature", pattern(1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Results of first-stage regressions) addnotes("Notes : Deaths and affected are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for capital stock. Pop. stands for population.") scalars("r2_o Overall R-square")
est clear
log close
