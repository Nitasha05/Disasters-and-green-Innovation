
log using "/Users/nitashajhala/Desktop/Stata Code/Descriptive Statistics/First Stage.smcl"
est clear
#Drought
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtreg total_damages_adj v6-v26 lag_drought_k_stock gdp_per_capita_lag polity control_total_patents population_density difmonth, fe
eststo: xtreg total_deaths v6-v26 lag_drought_k_stock gdp_per_capita_lag polity control_total_patents population_density difmonth, fe
eststo: xtreg lag_drought_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents lpop r10_difmonth , fe
clear

#Storm
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtreg total_damages_adj v6-v26 lag_storm_k_stock gdp_per_capita_lag polity control_total_patents population_density combi, fe
eststo: xtreg total_deaths v6-v26 lag_storm_k_stock gdp_per_capita_lag polity control_total_patents population_density combi, fe
eststo: xtreg lag_storm_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents lpop r10_combi, fe

clear

#Flood
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtreg total_damages_adj v6-v26 lag_flood_k_stock gdp_per_capita_lag polity control_total_patents population_density flood, fe
eststo: xtreg total_deaths v6-v26 lag_flood_k_stock gdp_per_capita_lag polity control_total_patents population_density flood, fe
eststo: xtreg lag_flood_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents lpop r10_flood, fe
clear

#Extreme Temperature
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtreg total_damages_adj v6-v26 lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents population_density  dif_temp, fe
eststo: xtreg total_deaths v6-v26 lag_extemp_k_stock gdp_per_capita_lag polity control_total_patents population_density dif_temp, fe
eststo: xtreg lag_extemp_k_stock v6-v26 gdp_per_capita_lag polity control_total_patents lpop r10_dif_temp, fe
clear

cd "/Users/nitashajhala/Desktop/Stata Code/Descriptive Statistics"
esttab using "First Stage Results.tex", rename(r10_dif_temp r10_difmonth r10_combi r10_difmonth r10_flood r10_difmonth flood combi dif_temp combi difmonth combi) keep(r10_difmonth combi gdp_per_capita_lag polity control_total_patents population_density lpop)  varlabels(r10_difmonth Indicator_variable combi Magnitude_variable gdp_per_capita_lag GDP(t-1) polity Institution_index control_total_patents Total_Patents(Log) population_density Pop.Density lpop Pop.(log)) replace b(3) se(3) mtitle("Damages(log)" "Deaths(log)" "Drought KS (log)"  "Damages(log)" "Deaths(log)" "Storm KS (log)" "Damages(log)" "Deaths(log)" "Flood KS (log)" "Damages(log)" "Deaths(log)" "Extemp KS (log)") mgroups("Drought" "Storm" "Flood" "Extreme Temperature", pattern(1 0 0 1 0 0 1 0 0 1 0 0 ) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) label star(% 0.15 * 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(Results of first-stage regressions) addnotes("Notes : Deaths and affected are measured in thousands and economic damages are measures in billions US\$ at 2015 price. KS stands for capital stock. Pop. stands for population.") scalars("r2_o Overall R-square")
est clear
log close
