use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Floods Stata/data_flood.dta"
estpost tabstat  population_density polity low middle high _flood_total_count _flood_granted_count _flood_granted_family_ge_2_count _flood_k_stock flood total_deaths total_affected total_damages_adj granted_count granted_family_ge_2_count total_count k_stock dindex e_gdp_per_capita e_control_total_patents, c(stat) stat(sum mean sd n)
drop if country=="AR" | country=="BE" | country=="BG" | country=="BR" | country=="DK" | country=="ES" | country=="FI" | country=="GR" | country=="IE" | country=="IL" | country=="IN" | country=="MX" | country=="MY" | country=="NL" | country=="NZ" | country=="PA" | country=="PH" | country=="SG" | country=="SI" | country=="TH" | country=="UA" | country=="ZA" 
estpost tabstat  population_density polity low middle high _flood_total_count _flood_granted_count _flood_granted_family_ge_2_count _flood_k_stock flood total_deaths total_affected total_damages_adj granted_count granted_family_ge_2_count total_count k_stock dindex e_gdp_per_capita e_control_total_patents, c(stat) stat(sum mean sd n)


use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Droughts Stata/data_drought.dta"
estpost tabstat  population_density polity low middle high _drought_total_count _drought_granted_count _drought_granted_family_ge_2_cou _drought_k_stock drought difmonth total_deaths total_affected total_damages_adj granted_count granted_family_ge_2_count total_count k_stock dindex e_gdp_per_capita e_control_total_patents, c(stat) stat(sum mean sd n)
drop if country=="AR" | country=="BR"  | country=="DK" | country=="EG" | country=="FI" | country=="GR" | country=="IE" | country=="IT" | country=="MA" | country=="MY" | country=="NO" | country=="PA" | country=="PL" | country=="SG" | country=="SI" | country=="UA" | country=="ZA" 
estpost tabstat  population_density polity low middle high _drought_total_count _drought_granted_count _drought_granted_family_ge_2_cou _drought_k_stock drought difmonth total_deaths total_affected total_damages_adj granted_count granted_family_ge_2_count total_count k_stock dindex e_gdp_per_capita e_control_total_patents, c(stat) stat(sum mean sd n)

use "/Users/nitashajhala/Desktop/Disaster_adapt panels/ExTemp Stata/data_extemp.dta"
estpost tabstat  population_density polity low middle high _extemp_total_count _extemp_granted_count _extemp_granted_family_ge_2_coun _extemp_k_stock dif_temp total_deaths total_affected total_damages_adj granted_count granted_family_ge_2_count total_count k_stock dindex e_gdp_per_capita e_control_total_patents, c(stat) stat(sum mean sd n)
xtreg total_affected total_damages_adj
