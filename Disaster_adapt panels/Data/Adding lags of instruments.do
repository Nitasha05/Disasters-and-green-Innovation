use "/Users/nitashajhala/Downloads/IfoGAME_balanced_panel.dta"
egen panelvar = group(country)
xtset panelvar year
sort country year
       
by country: gen combi_1 = combi[_n-1]
by country: gen combi_2 = combi[_n-2]
by country: gen combi_3 = combi[_n-3]
by country: gen combi_4 = combi[_n-4]
by country: gen combi_5 = combi[_n-5]
by country: gen combi_6 = combi[_n-6]
by country: gen combi_7 = combi[_n-7]
by country: gen combi_8 = combi[_n-8]
by country: gen combi_9 = combi[_n-9]
by country: gen combi_10 = combi[_n-10]
by country: gen dif_temp_1 = dif_temp[_n-1]
by country: gen dif_temp_2 = dif_temp[_n-2]
by country: gen dif_temp_3 = dif_temp[_n-3]
by country: gen dif_temp_4 = dif_temp[_n-4]
by country: gen dif_temp_5 = dif_temp[_n-5]
by country: gen dif_temp_6 = dif_temp[_n-6]
by country: gen dif_temp_7 = dif_temp[_n-7]
by country: gen dif_temp_8 = dif_temp[_n-8]
by country: gen dif_temp_9 = dif_temp[_n-9]
by country: gen dif_temp_10 = dif_temp[_n-10]
by country: gen difmonth_1 = difmonth[_n-1]
by country: gen difmonth_2 = difmonth[_n-2]
by country: gen difmonth_3 = difmonth[_n-3]
by country: gen difmonth_4 = difmonth[_n-4]
by country: gen difmonth_5 = difmonth[_n-5]
by country: gen difmonth_6 = difmonth[_n-6]
by country: gen difmonth_7 = difmonth[_n-7]
by country: gen difmonth_8 = difmonth[_n-8]
by country: gen difmonth_9 = difmonth[_n-9]
by country: gen difmonth_10 = difmonth[_n-10]
by country: gen flood_1 = flood[_n-1]
by country: gen flood_2 = flood[_n-2]
by country: gen flood_3 = flood[_n-3]
by country: gen flood_4 = flood[_n-4]
by country: gen flood_5 = flood[_n-5]
by country: gen flood_6 = flood[_n-6]
by country: gen flood_7 = flood[_n-7]
by country: gen flood_8 = flood[_n-8]
by country: gen flood_9 = flood[_n-9]
by country: gen flood_10 = flood[_n-10]
drop id income_group lcgdp lpop polity open interest credit gross fdi cpi balance open_ww kaopen oecd noil safrica low middle high quake storm sdisaster disaster damage_cor damage_gdp disasterla sdisasterla mag maxvei combi difmonth abs_diff dif_temp drought flood magla maxveila combila difmonthla abs_diffla dif_templa droughtla floodla disindex disindexla indexla dindex maglaxopen_ww maglaxpolity maglaxkaopen maxveilaxopen_ww maxveilaxpolity maxveilaxkaopen combilaxopen_ww combilaxpolity combilaxkaopen floodlaxopen_ww floodlaxpolity floodlaxkaopen droughtlaxopen_ww droughtlaxpolity droughtlaxkaopen dif_templaxopen_ww dif_templaxpolity dif_templaxkaopen indexlaxopen_ww indexlaxpolity indexlaxkaopen disindexlaxopen_ww disindexlaxpolity disindexlaxkaopen iso
keep if country =="Argentina" | country == "Australia" | country == "Belgium" | country == "Bulgaria" | country == "Brazil" | country == "Canada" | country == "Switzerland" | country == "China" | country == "Germany" | country == "Denmark" | country == "Egypt, Arab Rep." | country == "Spain"| country == "Finland" | country == "France" | country == "United Kingdom" | country == "Greece" | country == "Hungary" | country == "Ireland" | country == "Israel" | country == "India" | country == "Italy" | country == "Japan" | country == "Korea, Rep." | country == "Morocco"| country == "Mexico"| country == "Malaysia" | country == "Netherlands" | country == "Norway" | country == "New Zealand" | country == "Panama" | country == "Philippines" | country == "Poland" | country == "Russian Federation" | country == "Sweden" | country == "Singapore" | country == "Slovenia" | country == "Thailand" | country == "Ukraine" | country == "United States" | country == "South Africa"
replace country = "AR" if country=="Argentina"
replace country = "AU" if country=="Australia"
replace country = "BE" if country=="Belgium"
replace country = "BG" if country=="Bulgaria"
replace country = "BR" if country=="Brazil"
replace country = "CA" if country=="Canada"
replace country = "CH" if country=="Switzerland"
replace country = "CN" if country=="China"
replace country = "DE" if country=="Germany"
replace country = "DK" if country=="Denmark"
replace country = "EG" if country=="Egypt, Arab Rep."
replace country = "ES" if country=="Spain"
replace country = "FI" if country=="Finland"
replace country = "FR" if country=="France"
replace country = "GB" if country=="United Kingdom"
replace country = "GR" if country=="Greece"
replace country = "HU" if country=="Hungary"
replace country = "IE" if country=="Ireland"
replace country = "IL" if country=="Israel"
replace country = "IN" if country=="India"
replace country = "IT" if country=="Italy"
replace country = "JP" if country=="Japan"
replace country = "KR" if country=="Korea, Rep."
replace country = "MA" if country=="Morocco"
replace country = "MX" if country=="Mexico"
replace country = "MY" if country=="Malaysia"
replace country = "NL" if country=="Netherlands"
replace country = "NO" if country=="Norway"
replace country = "NZ" if country=="New Zealand"
replace country = "PA" if country=="Panama"
replace country = "PH" if country=="Philippines"
replace country = "PL" if country=="Poland"
replace country = "RU" if country=="Russian Federation"
replace country = "SE" if country=="Sweden"
replace country = "SG" if country=="Singapore"
replace country = "SI" if country=="Slovenia"
replace country = "TH" if country=="Thailand"
replace country = "UA" if country=="Ukraine"
replace country = "US" if country=="United States"
replace country = "ZA" if country=="South Africa"




#Droughts
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Droughts Stata/data_drought.dta"
sum panelvar
cd "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Droughts Stata"
merge 1:1 country year using IfoGAME.dta
drop combi_1 combi_2 combi_3 combi_4 combi_5 combi_6 combi_7 combi_8 combi_9 combi_10 dif_temp_1 dif_temp_2 dif_temp_3 dif_temp_4 dif_temp_5 dif_temp_6 dif_temp_7 dif_temp_8 dif_temp_9 dif_temp_10 flood_1 flood_2 flood_3 flood_4 flood_5 flood_6 flood_7 flood_8 flood_9 flood_10
drop if country=="PH" | country=="TH"
drop if year==1979 | year==1980 | year==1981 | year==1982 | year==1983 | year==1984 | year==1985 | year==1986 | year==1987 | year==1988 | year==1989
sum panelvar
save "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Droughts Stata/data_drought.dta", replace

#ExTemp
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/ExTemp Stata/data_extemp.dta"
sum panelvar
cd "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/ExTemp Stata"
merge 1:1 country year using IfoGAME.dta
drop combi_1 combi_2 combi_3 combi_4 combi_5 combi_6 combi_7 combi_8 combi_9 combi_10 flood_1 flood_2 flood_3 flood_4 flood_5 flood_6 flood_7 flood_8 flood_9 flood_10 difmonth_1 difmonth_2 difmonth_3 difmonth_4 difmonth_5 difmonth_6 difmonth_7 difmonth_8 difmonth_9 difmonth_10
drop if year==1979 | year==1980 | year==1981 | year==1982 | year==1983 | year==1984 | year==1985 | year==1986 | year==1987 | year==1988 | year==1989
sum panelvar
save "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/ExTemp Stata/data_extemp.dta", replace

#Floods
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Floods Stata/data_flood.dta"
sum panelvar
cd "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Floods Stata"
merge 1:1 country year using IfoGAME.dta
drop combi_1 combi_2 combi_3 combi_4 combi_5 combi_6 combi_7 combi_8 combi_9 combi_10  difmonth_1 difmonth_2 difmonth_3 difmonth_4 difmonth_5 difmonth_6 difmonth_7 difmonth_8 difmonth_9 difmonth_10 dif_temp_1 dif_temp_2 dif_temp_3 dif_temp_4 dif_temp_5 dif_temp_6 dif_temp_7 dif_temp_8 dif_temp_9 dif_temp_10
drop if year==1979 | year==1980 | year==1981 | year==1982 | year==1983 | year==1984 | year==1985 | year==1986 | year==1987 | year==1988 | year==1989
drop if country=="MA"
sum panelvar
save "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Floods Stata/data_flood.dta", replace

#Storm
use "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Storms Stata/data_storm.dta"
sum panelvar
cd "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Storms Stata"
merge 1:1 country year using IfoGAME.dta
drop difmonth_1 difmonth_2 difmonth_3 difmonth_4 difmonth_5 difmonth_6 difmonth_7 difmonth_8 difmonth_9 difmonth_10 dif_temp_1 dif_temp_2 dif_temp_3 dif_temp_4 dif_temp_5 dif_temp_6 dif_temp_7 dif_temp_8 dif_temp_9 dif_temp_10 flood_1 flood_2 flood_3 flood_4 flood_5 flood_6 flood_7 flood_8 flood_9 flood_10
drop if year==1979 | year==1980 | year==1981 | year==1982 | year==1983 | year==1984 | year==1985 | year==1986 | year==1987 | year==1988 | year==1989
drop if country=="MA"
sum panelvar
save "/Users/nitashajhala/Desktop/Disaster_adapt panels/Data/Storms Stata/data_storm.dta", replace


































