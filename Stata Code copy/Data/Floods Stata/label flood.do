import delimited "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/4_Flood_panel_combined_instruments_updated.csv"
destring gdp_per_capita, replace force float
egen panelvar = group(country)
xtset panelvar
replace total_deaths = total_deaths/1000
replace total_affected = total_affected/1000
replace total_damages_adj = total_damages_adj/1000000
replace r1_total_deaths = r1_total_deaths/1000
drop r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths r1_total_affected r2_total_affected r3_total_affected r4_total_affected r5_total_affected r6_total_affected r7_total_affected r8_total_affected r9_total_affected r10_total_affected r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj
sort country year
by country: replace control_total_patents = control_total_patents[_n-1] if control_total_patents == 0
gen ratio_green_granted = granted_count / exp(control_total_patents)
lab var ratio_green_granted "Share of green patents (granted)"
gen ratio_flood_granted = _flood_granted_count / exp(control_total_patents)
lab var ratio_flood_granted "Share of flood patents (granted)"
by country: gen r1_total_deaths = total_deaths[_n-1]
by country: gen r2_total_deaths = total_deaths[_n-2]
by country: gen r3_total_deaths = total_deaths[_n-3]
by country: gen r4_total_deaths = total_deaths[_n-4]
by country: gen r5_total_deaths = total_deaths[_n-5]
by country: gen r6_total_deaths = total_deaths[_n-6]
by country: gen r7_total_deaths = total_deaths[_n-7]
by country: gen r8_total_deaths = total_deaths[_n-8]
by country: gen  r9_total_deaths= total_deaths[_n-9]
by country: gen  r10_total_deaths= total_deaths[_n-10]
by country: gen r1_total_damages_adj = total_damages_adj[_n-1]
by country: gen r2_total_damages_adj = total_damages_adj[_n-2]
by country: gen r3_total_damages_adj = total_damages_adj[_n-3]
by country: gen r4_total_damages_adj = total_damages_adj[_n-4]
by country: gen r5_total_damages_adj = total_damages_adj[_n-5]
by country: gen r6_total_damages_adj = total_damages_adj[_n-6]
by country: gen r7_total_damages_adj = total_damages_adj[_n-7]
by country: gen r8_total_damages_adj = total_damages_adj[_n-8]
by country: gen  r9_total_damages_adj= total_damages_adj[_n-9]
by country: gen  r10_total_damages_adj= total_damages_adj[_n-10]
by country: gen r1_total_affected = total_affected[_n-1]
by country: gen r2_total_affected = total_affected[_n-2]
by country: gen r3_total_affected = total_affected[_n-3]
by country: gen r4_total_affected = total_affected[_n-4]
by country: gen r5_total_affected = total_affected[_n-5]
by country: gen r6_total_affected = total_affected[_n-6]
by country: gen r7_total_affected = total_affected[_n-7]
by country: gen r8_total_affected = total_affected[_n-8]
by country: gen  r9_total_affected= total_affected[_n-9]
by country: gen  r10_total_affected= total_affected[_n-10]
by country: gen gdp_per_capita_lag = gdp_per_capita[_n-1]
lab var gdp_per_capita_lag "Log GDP per capita (t-1)"
lab var gdp_per_capita "Log GDP per capita"
lab var control_total_patents "Log patent applications"
gen e_gdp_per_capita = exp(gdp_per_capita)
lab var e_gdp_per_capita "GDP per capita (constant 2015 US$)"
sort country year
by country: gen lag_k_stock = k_stock[_n-1]
lab var lag_k_stock "Log green knowledge stock (year t-1)"
order lag_k_stock, after(k_stock)
by country: gen lag_flood_k_stock = _flood_k_stock[_n-1]
lab var lag_flood_k_stock "Log flood adaptation knowledge stock (year t-1)"
order lag_flood_k_stock, after(_flood_k_stock)
lab var _flood_k_stock "Log flood adaptation knowledge stocks"
lab var r10_flood "Flood indicator"
lab var flood "Flood (not lagged)"
order flood r10_flood , after(_flood_k_stock)
lab var _flood_total_count "Total flood adaptation patents"
lab var _flood_granted_count "Flood adaptation patents (granted)"
lab var _flood_granted_family_ge_2_count "Flood adaptation patents (famsiz>=2)"
lab var total_deaths "Deaths"
lab var total_damages_adj "Damages (2015 US$, thousand)"
sum total_damages_adj
lab var r1_total_deaths "Deaths (Year t-1)"
lab var r2_total_deaths "Deaths (Year t-2)"
lab var r3_total_deaths "Deaths (Year t-3)"
lab var r4_total_deaths "Deaths (Year t-4)"
lab var r5_total_deaths "Deaths (Year t-5)"
lab var r6_total_deaths "Deaths (Year t-6)"
lab var r7_total_deaths "Deaths (Year t-7)"
lab var r8_total_deaths "Deaths (Year t-8)"
lab var r9_total_deaths "Deaths (Year t-9)"
lab var r10_total_deaths "Deaths (Year t-10)"
lab var r10_total_damages_adj "Damages (Year t-10)"
lab var r9_total_damages_adj "Damages (Year t-9)"
lab var r8_total_damages_adj "Damages (Year t-8)"
lab var r7_total_damages_adj "Damages (Year t-7)"
lab var r6_total_damages_adj "Damages (Year t-6)"
lab var r5_total_damages_adj "Damages (Year t-5)"
lab var r4_total_damages_adj "Damages (Year t-4)"
lab var r3_total_damages_adj "Damages (Year t-3)"
lab var r2_total_damages_adj "Damages (Year t-2)"
lab var r1_total_damages_adj "Damages (Year t-1)"
lab var total_count "Total green patents"
lab var granted_count "Green patents (granted)"
lab var granted_family_ge_2_count "Green patents (famsiz>=2)"
lab var k_stock "Log green knowledge stocks (year t-1)"
lab var total_affected "Affected victims"
lab var r10_total_affected "Affected victims (Year t-10)"
lab var r9_total_affected "Affected victims (Year t-9)"
lab var r8_total_affected "Affected victims (Year t-8)"
lab var r7_total_affected "Affected victims (Year t-7)"
lab var r6_total_affected "Affected victims (Year t-6)"
lab var r5_total_affected "Affected victims (Year t-5)"
lab var r4_total_affected "Affected victims (Year t-4)"
lab var r3_total_affected "Affected victims (Year t-3)"
lab var r2_total_affected "Affected victims (Year t-2)"
lab var r1_total_affected "Affected victims (Year t-1)"
lab var polity "Institution index"
lab var population_density "Population density (people per square kilometer)"
lab var dindex "Disaster index"
sort country year
by country: gen density_1 = population_density[_n-1]
by country: gen density_2 = population_density[_n-2]
by country: gen density_3 = population_density[_n-3]
by country: gen density_4 = population_density[_n-4]
by country: gen density_5 = population_density[_n-5]
by country: gen density_6 = population_density[_n-6]
by country: gen density_7 = population_density[_n-7]
by country: gen density_8 = population_density[_n-8]
by country: gen density_9 = population_density[_n-9]
by country: gen density_10 = population_density[_n-10]
drop v1 v2 v3 v4 v5 v16 polity_x combi abs_diff r10_lpop r10_polity r10_low r10_middle r10_high r10_damage_cor r10_damage_gdp r10_combi r10_abs_diff r10_disindex r10_disindexla r10_indexla r10_dindex r10_region r10_income_group r10_difmonth r10_drought drought difmonth dif_temp r10_dif_temp 
drop v27 v28 v29 v30 v31 v32 v33 v34
order region income_group polity low middle high population_density density_1 density_2 density_3 density_4 density_5 density_6 density_7 density_8 density_9 density_10 lpop, after(gdp_per_capita)
gen deaths_log = log(total_deaths+1)
lab var deaths_log "Deaths(log)"
gen affected_log = log(total_affected+1)
lab var affected_log "Affected(log)"
gen damages_log = log(total_damages_adj +1)
lab var damages_log "Damages(log)"
drop if year==1985 | year==1986 | year==1987| year==1988 | year == 1989
xtset panelvar year
gen deaths_by_pop = total_deaths/exp(lpop)
lab var deaths_by_pop "Killed over Population"
gen affected_by_pop = total_affected/exp(lpop)
lab var affected_by_pop "Affected over Population"
order r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths, after(total_deaths)
order r1_total_affected r2_total_affected r3_total_affected r4_total_affected r5_total_affected r6_total_affected r7_total_affected r8_total_affected r9_total_affected r10_total_affected, after(total_affected)
order r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj, after(total_damages_adj)
cd "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata"
merge 1:1 country year using TOTPAT.dta, generate(merge2)
sort country year
drop if country=="MA"
replace control_total_patents = log(count)
lab var count "Total Patents(count)"
save "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/data_flood.dta"
