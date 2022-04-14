use "/Users/nitashajhala/Desktop/Stata Code/Data//Floods Stata/data_flood.dta"
drop if deaths_by_pop==0 & affected_by_pop==0  & total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths flood
clear
use "/Users/nitashajhala/Desktop/Stata Code/Data//Droughts Stata/data_drought.dta"
drop if deaths_by_pop==0 & affected_by_pop==0 &total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths difmonth
clear
use "/Users/nitashajhala/Desktop/Stata Code/Data//ExTemp Stata/data_extemp.dta"
drop if deaths_by_pop==0 & affected_by_pop==0 & total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths  dif_temp
clear
use "/Users/nitashajhala/Desktop/Stata Code/Data//Storms Stata/data_storm.dta"
drop if deaths_by_pop==0 & affected_by_pop==0 & total_damages_adj==0
sum deaths_by_pop affected_by_pop total_damages_adj total_deaths combi 
