use "/Users/nitashajhala/Desktop/Disaster_adapt panels/ExTemp Stata/ExTemp data.dta"
tabstat total_deaths total_damages_adj, by(country) s(mean)
egen sum_extemp_patents = total(_extemp_granted_count), by(country)
egen sum_green_patents = total(granted_count), by(country)
tabstat sum_extemp_patents sum_green_patents, by(country) s(mean)
clear

use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Droughts Stata/Droughts_data.dta"
tabstat total_deaths total_damages_adj, by(country) s(mean)
egen sum_drought_patents = total(_drought_granted_count), by(country)
egen sum_green_patents = total(granted_count), by(country)
tabstat sum_drought_patents sum_green_patents, by(country) s(mean)
clear

use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Storms Stata/Storm_data.dta"
tabstat total_deaths total_damages_adj, by(country) s(mean)
egen sum_storm_patents = total(_storm_granted_count), by(country)
egen sum_green_patents = total(granted_count), by(country)
tabstat sum_storm_patents sum_green_patents, by(country) s(mean)
clear

use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Floods Stata/Flood_data.dta"
tabstat total_deaths total_damages_adj, by(country) s(mean)
egen sum_flood_patents = total(_flood_granted_count), by(country)
egen sum_green_patents = total(granted_count), by(country)
tabstat sum_flood_patents sum_green_patents, by(country) s(mean)
clear
