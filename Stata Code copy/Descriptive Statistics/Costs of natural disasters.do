
ssc install estout, replace
#Drought
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: xtreg damages_log gdp_per_capita polity  population_density difmonth v6-v26, vce(robust)
eststo: xtreg affected_log gdp_per_capita polity population_density difmonth v6-v26, vce(robust)
eststo: xtreg deaths_log gdp_per_capita polity population_density difmonth v6-v26, vce(robust) 
clear

#Storm
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: xtreg damages_log  gdp_per_capita polity population_density combi v6-v26, vce(robust)
eststo: xtreg affected_log gdp_per_capita polity population_density combi v6-v26, vce(robust)
eststo: xtreg deaths_log gdp_per_capita polity  population_density combi v6-v26, vce(robust)
clear

#Flood
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: xtreg damages_log gdp_per_capita polity population_density flood v6-v26, vce(robust)
eststo: xtreg affected_log gdp_per_capita polity population_density flood v6-v26, vce(robust)
eststo: xtreg deaths_log gdp_per_capita polity population_density  flood v6-v26, vce(robust)
clear 

#Extreme Temperature
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: xtreg damages_log gdp_per_capita polity  population_density dif_temp v6-v26, vce(robust)
eststo: xtreg affected_log gdp_per_capita polity population_density  dif_temp v6-v26, vce(robust)
eststo: xtreg deaths_log gdp_per_capita polity population_density dif_temp v6-v26, vce(robust)
clear

esttab using "Costs.tex", keep(difmonth combi flood dif_temp) varlabels(difmonth Precipitation_anomaly combi Wind_speed flood Positive_precipitation_anomaly dif_temp Temperature_anomaly)  mtitle("Damages(log)" "Affecetd(log)" "Deaths(log)" "Damages(log)" "Affecetd(log)" "Deaths(log)" "Damages(log)" "Affecetd(log)" "Deaths(log)" "Damages(log)" "Affecetd(log)" "Deaths(log)") mgroups("Droughts" "Storm" "Flood" "Extreme Temperature", pattern(1 0 0 1 0 0 1 0 0 1 0 0)) replace b(3) se(3) label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(The costs of extreme weather events) addnotes("Notes : Deaths and affected are measured in thousands and economic damages are measures in billions US\$ at 2015 price. Unity is added to all before taking logs") scalars("r2_o Overall R-square")

OR

est clear

#Drought
use "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/data_drought.dta"
eststo: zinb total_damages_adj v6-v26 gdp_per_capita polity population_density difmonth, inflate(gdp_per_capita polity)
#noconvergence
eststo: zinb total_affected v6-v26 gdp_per_capita polity population_density difmonth, inflate(gdp_per_capita polity)
#noconvergence
eststo: zinb total_deaths v6-v26  gdp_per_capita polity population_density difmonth, inflate(gdp_per_capita polity) 
#noconvergence
clear

#Storm
use "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/data_storm.dta"
eststo: zinb total_damages_adj v6-v26  gdp_per_capita polity population_density combi, inflate(gdp_per_capita polity)
eststo: zinb total_affected v6-v26 gdp_per_capita polity population_density combi, inflate(gdp_per_capita polity)
eststo: zinb total_deaths v6-v26 gdp_per_capita polity  population_density combi, inflate(gdp_per_capita polity)
clear

#Flood
use "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
eststo: zinb total_damages_adj v6-v26 gdp_per_capita polity population_density flood, inflate(gdp_per_capita polity)
eststo: zinb total_affected v6-v26 gdp_per_capita polity population_density flood, inflate(gdp_per_capita polity)
eststo: zinb total_deaths v6-v26 gdp_per_capita polity population_density  flood, inflate(gdp_per_capita polity)
clear 

#Extreme Temperature
use "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/data_extemp.dta"
eststo: zinb total_damages_adj v6-v26 gdp_per_capita polity  population_density dif_temp, inflate(gdp_per_capita polity)
#noconvergence
eststo: zinb total_affected v6-v26 gdp_per_capita polity population_density  dif_temp, inflate(gdp_per_capita polity)
eststo: zinb total_deaths v6-v26 gdp_per_capita polity population_density dif_temp, inflate(gdp_per_capita polity)
clear

esttab using "CostsZinb.tex", keep(combi flood dif_temp) varlabels(combi Wind_speed flood Positive_precipitation_anomaly dif_temp Temperature_anomaly)  mtitle("Damages(log)" "Affecetd(log)" "Deaths(log)" "Damages(log)" "Affecetd(log)" "Deaths(log)" "Affecetd(log)" "Deaths(log)") mgroups("Storm" "Flood" "Extreme Temperature", pattern(1 0 0 1 0 0 1 0)) replace b(3) se(3) label star(* 0.10 ** 0.05 *** 0.01) booktabs alignment(D{.}{.}{-1}) title(The costs of extreme weather events) addnotes("Notes : Deaths and affected are measured in thousands and economic damages are measures in billions US\$ at 2015 price.") scalars("r2_o Overall R-square")
