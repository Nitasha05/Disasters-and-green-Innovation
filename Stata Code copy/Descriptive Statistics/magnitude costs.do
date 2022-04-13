use "/Users/nitashajhala/Desktop/Stata Code/Floods Stata/Flood_data.dta"
drop if deaths_by_pop==0 & affected_by_pop==0  & total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths flood
clear
use "/Users/nitashajhala/Desktop/Stata Code/Droughts Stata/Droughts_data.dta"
drop if deaths_by_pop==0 & affected_by_pop==0 &total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths difmonth
clear
use "/Users/nitashajhala/Desktop/Stata Code/ExTemp Stata/ExTemp data.dta"
drop if deaths_by_pop==0 & affected_by_pop==0 & total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths  dif_temp
clear
use "/Users/nitashajhala/Desktop/Stata Code/Storms Stata/Storm_data.dta"
drop if deaths_by_pop==0 & affected_by_pop==0 & total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths combi 
