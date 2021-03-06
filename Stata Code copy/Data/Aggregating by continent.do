
##Labelling continents

#STORM
import delimited "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/Storm_EMDAT_panel.csv"
#code
drop if country=="MA"
drop panelvar
egen panelvar = group(country)
xtset panelvar year
cd "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata"
merge 1:1 country year using data_storm.dta, generate(match2)
replace TOTDEATHS = TOTDEATHS - total_deaths
replace r1_TOTDEATHS = r1_TOTDEATHS - r1_total_deaths
replace r2_TOTDEATHS = r2_TOTDEATHS - r2_total_deaths
replace r3_TOTDEATHS = r3_TOTDEATHS - r3_total_deaths
replace r4_TOTDEATHS = r4_TOTDEATHS - r4_total_deaths
replace r5_TOTDEATHS = r5_TOTDEATHS - r5_total_deaths
replace r6_TOTDEATHS = r6_TOTDEATHS - r6_total_deaths
replace r7_TOTDEATHS = r7_TOTDEATHS - r7_total_deaths
replace r8_TOTDEATHS = r8_TOTDEATHS - r8_total_deaths
replace r9_TOTDEATHS = r9_TOTDEATHS - r9_total_deaths
replace r10_TOTDEATHS = r10_TOTDEATHS - r10_total_deaths
replace TOTDAMAGES = TOTDAMAGES - total_damages_adj
replace r1_TOTDAMAGES = r1_TOTDAMAGES - r1_total_damages_adj
replace r2_TOTDAMAGES = r2_TOTDAMAGES - r2_total_damages_adj
replace r3_TOTDAMAGES = r3_TOTDAMAGES - r3_total_damages_adj
replace r4_TOTDAMAGES = r4_TOTDAMAGES - r4_total_damages_adj
replace r5_TOTDAMAGES = r5_TOTDAMAGES - r5_total_damages_adj
replace r6_TOTDAMAGES = r6_TOTDAMAGES - r6_total_damages_adj
replace r7_TOTDAMAGES = r7_TOTDAMAGES - r7_total_damages_adj
replace r8_TOTDAMAGES = r8_TOTDAMAGES - r8_total_damages_adj
replace r9_TOTDAMAGES = r9_TOTDAMAGES - r9_total_damages_adj
replace r10_TOTDAMAGES = r10_TOTDAMAGES - r10_total_damages_adj
replace TOTAFFECTED = TOTAFFECTED - total_affected
replace r1_TOTAFFECTED = r1_TOTAFFECTED - r1_total_affected
replace r2_TOTAFFECTED = r2_TOTAFFECTED - r2_total_affected
replace r3_TOTAFFECTED = r3_TOTAFFECTED - r3_total_affected
replace r4_TOTAFFECTED = r4_TOTAFFECTED - r4_total_affected
replace r5_TOTAFFECTED = r5_TOTAFFECTED - r5_total_affected
replace r6_TOTAFFECTED = r6_TOTAFFECTED - r6_total_affected
replace r7_TOTAFFECTED = r7_TOTAFFECTED - r7_total_affected
replace r8_TOTAFFECTED = r8_TOTAFFECTED - r8_total_affected
replace r9_TOTAFFECTED = r9_TOTAFFECTED - r9_total_affected
replace r10_TOTAFFECTED = r10_TOTAFFECTED - r10_total_affected
save "/Users/nitashajhala/Desktop/Stata Code/Data/Storms Stata/Continent_storm.dta"

#FLOOD
import delimited "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/Flood_EMDAT_panel.csv"
#code
drop if country=="MA"
drop panelvar
egen panelvar = group(country)
xtset panelvar year
cd "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata"
merge 1:1 country year using data_flood.dta, generate(match2)
replace TOTDEATHS = TOTDEATHS - total_deaths
replace r1_TOTDEATHS = r1_TOTDEATHS - r1_total_deaths
replace r2_TOTDEATHS = r2_TOTDEATHS - r2_total_deaths
replace r3_TOTDEATHS = r3_TOTDEATHS - r3_total_deaths
replace r4_TOTDEATHS = r4_TOTDEATHS - r4_total_deaths
replace r5_TOTDEATHS = r5_TOTDEATHS - r5_total_deaths
replace r6_TOTDEATHS = r6_TOTDEATHS - r6_total_deaths
replace r7_TOTDEATHS = r7_TOTDEATHS - r7_total_deaths
replace r8_TOTDEATHS = r8_TOTDEATHS - r8_total_deaths
replace r9_TOTDEATHS = r9_TOTDEATHS - r9_total_deaths
replace r10_TOTDEATHS = r10_TOTDEATHS - r10_total_deaths
replace TOTDAMAGES = TOTDAMAGES - total_damages_adj
replace r1_TOTDAMAGES = r1_TOTDAMAGES - r1_total_damages_adj
replace r2_TOTDAMAGES = r2_TOTDAMAGES - r2_total_damages_adj
replace r3_TOTDAMAGES = r3_TOTDAMAGES - r3_total_damages_adj
replace r4_TOTDAMAGES = r4_TOTDAMAGES - r4_total_damages_adj
replace r5_TOTDAMAGES = r5_TOTDAMAGES - r5_total_damages_adj
replace r6_TOTDAMAGES = r6_TOTDAMAGES - r6_total_damages_adj
replace r7_TOTDAMAGES = r7_TOTDAMAGES - r7_total_damages_adj
replace r8_TOTDAMAGES = r8_TOTDAMAGES - r8_total_damages_adj
replace r9_TOTDAMAGES = r9_TOTDAMAGES - r9_total_damages_adj
replace r10_TOTDAMAGES = r10_TOTDAMAGES - r10_total_damages_adj
replace TOTAFFECTED = TOTAFFECTED - total_affected
replace r1_TOTAFFECTED = r1_TOTAFFECTED - r1_total_affected
replace r2_TOTAFFECTED = r2_TOTAFFECTED - r2_total_affected
replace r3_TOTAFFECTED = r3_TOTAFFECTED - r3_total_affected
replace r4_TOTAFFECTED = r4_TOTAFFECTED - r4_total_affected
replace r5_TOTAFFECTED = r5_TOTAFFECTED - r5_total_affected
replace r6_TOTAFFECTED = r6_TOTAFFECTED - r6_total_affected
replace r7_TOTAFFECTED = r7_TOTAFFECTED - r7_total_affected
replace r8_TOTAFFECTED = r8_TOTAFFECTED - r8_total_affected
replace r9_TOTAFFECTED = r9_TOTAFFECTED - r9_total_affected
replace r10_TOTAFFECTED = r10_TOTAFFECTED - r10_total_affected
save "/Users/nitashajhala/Desktop/Stata Code/Data/Floods Stata/Continent_flood.dta"

#DROUGHT
import delimited "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/Drought_EMDAT_panel.csv"
#code
drop if country=="PH" | country == "TH"
drop panelvar
egen panelvar = group(country)
xtset panelvar year
cd "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata"
merge 1:1 country year using data_drought.dta, generate(match2)
replace TOTDEATHS = TOTDEATHS - total_deaths
replace r1_TOTDEATHS = r1_TOTDEATHS - r1_total_deaths
replace r2_TOTDEATHS = r2_TOTDEATHS - r2_total_deaths
replace r3_TOTDEATHS = r3_TOTDEATHS - r3_total_deaths
replace r4_TOTDEATHS = r4_TOTDEATHS - r4_total_deaths
replace r5_TOTDEATHS = r5_TOTDEATHS - r5_total_deaths
replace r6_TOTDEATHS = r6_TOTDEATHS - r6_total_deaths
replace r7_TOTDEATHS = r7_TOTDEATHS - r7_total_deaths
replace r8_TOTDEATHS = r8_TOTDEATHS - r8_total_deaths
replace r9_TOTDEATHS = r9_TOTDEATHS - r9_total_deaths
replace r10_TOTDEATHS = r10_TOTDEATHS - r10_total_deaths
replace TOTDAMAGES = TOTDAMAGES - total_damages_adj
replace r1_TOTDAMAGES = r1_TOTDAMAGES - r1_total_damages_adj
replace r2_TOTDAMAGES = r2_TOTDAMAGES - r2_total_damages_adj
replace r3_TOTDAMAGES = r3_TOTDAMAGES - r3_total_damages_adj
replace r4_TOTDAMAGES = r4_TOTDAMAGES - r4_total_damages_adj
replace r5_TOTDAMAGES = r5_TOTDAMAGES - r5_total_damages_adj
replace r6_TOTDAMAGES = r6_TOTDAMAGES - r6_total_damages_adj
replace r7_TOTDAMAGES = r7_TOTDAMAGES - r7_total_damages_adj
replace r8_TOTDAMAGES = r8_TOTDAMAGES - r8_total_damages_adj
replace r9_TOTDAMAGES = r9_TOTDAMAGES - r9_total_damages_adj
replace r10_TOTDAMAGES = r10_TOTDAMAGES - r10_total_damages_adj
replace TOTAFFECTED = TOTAFFECTED - total_affected
replace r1_TOTAFFECTED = r1_TOTAFFECTED - r1_total_affected
replace r2_TOTAFFECTED = r2_TOTAFFECTED - r2_total_affected
replace r3_TOTAFFECTED = r3_TOTAFFECTED - r3_total_affected
replace r4_TOTAFFECTED = r4_TOTAFFECTED - r4_total_affected
replace r5_TOTAFFECTED = r5_TOTAFFECTED - r5_total_affected
replace r6_TOTAFFECTED = r6_TOTAFFECTED - r6_total_affected
replace r7_TOTAFFECTED = r7_TOTAFFECTED - r7_total_affected
replace r8_TOTAFFECTED = r8_TOTAFFECTED - r8_total_affected
replace r9_TOTAFFECTED = r9_TOTAFFECTED - r9_total_affected
replace r10_TOTAFFECTED = r10_TOTAFFECTED - r10_total_affected
save "/Users/nitashajhala/Desktop/Stata Code/Data/Droughts Stata/Continent_drought.dta"

#EXTEMP
import delimited "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/Extreme temperature _EMDAT_panel.csv"
#code
drop panelvar
egen panelvar = group(country)
xtset panelvar year
cd "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata"
merge 1:1 country year using data_extemp.dta, generate(match2)
replace TOTDEATHS = TOTDEATHS - total_deaths
replace r1_TOTDEATHS = r1_TOTDEATHS - r1_total_deaths
replace r2_TOTDEATHS = r2_TOTDEATHS - r2_total_deaths
replace r3_TOTDEATHS = r3_TOTDEATHS - r3_total_deaths
replace r4_TOTDEATHS = r4_TOTDEATHS - r4_total_deaths
replace r5_TOTDEATHS = r5_TOTDEATHS - r5_total_deaths
replace r6_TOTDEATHS = r6_TOTDEATHS - r6_total_deaths
replace r7_TOTDEATHS = r7_TOTDEATHS - r7_total_deaths
replace r8_TOTDEATHS = r8_TOTDEATHS - r8_total_deaths
replace r9_TOTDEATHS = r9_TOTDEATHS - r9_total_deaths
replace r10_TOTDEATHS = r10_TOTDEATHS - r10_total_deaths
replace TOTDAMAGES = TOTDAMAGES - total_damages_adj
replace r1_TOTDAMAGES = r1_TOTDAMAGES - r1_total_damages_adj
replace r2_TOTDAMAGES = r2_TOTDAMAGES - r2_total_damages_adj
replace r3_TOTDAMAGES = r3_TOTDAMAGES - r3_total_damages_adj
replace r4_TOTDAMAGES = r4_TOTDAMAGES - r4_total_damages_adj
replace r5_TOTDAMAGES = r5_TOTDAMAGES - r5_total_damages_adj
replace r6_TOTDAMAGES = r6_TOTDAMAGES - r6_total_damages_adj
replace r7_TOTDAMAGES = r7_TOTDAMAGES - r7_total_damages_adj
replace r8_TOTDAMAGES = r8_TOTDAMAGES - r8_total_damages_adj
replace r9_TOTDAMAGES = r9_TOTDAMAGES - r9_total_damages_adj
replace r10_TOTDAMAGES = r10_TOTDAMAGES - r10_total_damages_adj
replace TOTAFFECTED = TOTAFFECTED - total_affected
replace r1_TOTAFFECTED = r1_TOTAFFECTED - r1_total_affected
replace r2_TOTAFFECTED = r2_TOTAFFECTED - r2_total_affected
replace r3_TOTAFFECTED = r3_TOTAFFECTED - r3_total_affected
replace r4_TOTAFFECTED = r4_TOTAFFECTED - r4_total_affected
replace r5_TOTAFFECTED = r5_TOTAFFECTED - r5_total_affected
replace r6_TOTAFFECTED = r6_TOTAFFECTED - r6_total_affected
replace r7_TOTAFFECTED = r7_TOTAFFECTED - r7_total_affected
replace r8_TOTAFFECTED = r8_TOTAFFECTED - r8_total_affected
replace r9_TOTAFFECTED = r9_TOTAFFECTED - r9_total_affected
replace r10_TOTAFFECTED = r10_TOTAFFECTED - r10_total_affected
save "/Users/nitashajhala/Desktop/Stata Code/Data/ExTemp Stata/Continent_extemp.dta"


#CODE

generate str Continent = ""
replace Continent="Africa" if country =="Algeria" |  country =="Angola" |  country =="Benin" |  country =="Botswana" |  country  =="Burkina Faso" |  country  =="Burundi" |  country  =="Cabo Verde" |  country  =="Cameroon" |  country  =="Canary Is" |  country  =="Central African Republic" |  country  =="Chad" |  country  =="Comoros (the)" |  country  =="Congo (the Democratic Republic of the)" |  country  =="Congo (the) " |  country =="C????te d??Ivoire" |  country  =="Djibouti" |  country  =="Egypt" |  country  =="Equatorial Guinea" |  country  =="Eritrea" |  country  =="Eswatini" |  country  =="Ethiopia" |  country  =="Gabon" |  country  =="Gambia (the)" |  country  =="Ghana" |  country  =="Guinea" |  country  =="Guinea-Bissau" |  country  =="Kenya" |  country  =="Lesotho" |  country  =="Liberia" |  country  =="Libya" |  country  =="Madagascar" |  country  =="Malawi " |  country =="Mali" |  country  =="Mauritania" |  country  =="Mauritius" |  country  =="Mayotte" |  country  =="Morocco" |  country  =="Mozambique" |  country  =="Namibia" |  country  =="Niger (the)" |  country  =="Nigeria" |  country  =="Rwanda" |  country  =="R????union" |  country  =="Saint Helena, Ascension and Tristan d.." |  country  =="Sao Tome and Principe" |  country  =="Senegal" |  country  =="Seychelles" |  country  =="Sierra Leone" |  country  =="Somalia" |  country  =="South Africa" |  country  =="South Sudan" |  country  =="Sudan (the)" |  country  =="Tanzania, United Republic of" |  country  =="Togo" |  country  =="Tunisia" |  country  =="Uganda" |  country  =="Zambia" |  country  =="Zimbabwe"
replace Continent="Asia" if country =="Afghanistan" | country =="Armenia" | country =="Azerbaijan" | country =="Bahrain" | country =="Bangladesh" | country =="Bhutan" | country =="Brunei Darussalam" | country =="Cambodia" | country =="China" | country =="Georgia" | country =="Hong Kong" | country =="India" | country =="Indonesia" | country =="Iran (Islamic Republic of)" | country =="Iraq" | country =="Israel" | country =="Japan" | country =="Jordan" | country =="Kazakhstan" | country =="Korea (the Democratic People's Republ.." | country =="Korea (the Republic of)" | country =="Kuwait" | country =="Kyrgyzstan" | country =="Lao People's Democratic Republic (the)" | country =="Lebanon" | country =="Macao" | country =="Malaysia" | country =="Maldives" | country =="Mongolia" | country =="Myanmar" | country =="Nepal" | country =="Oman" | country =="Pakistan" | country =="Palestine, State of" | country =="Philippines (the)" | country =="Qatar" | country =="Saudi Arabia" | country =="Singapore" | country =="Sri Lanka" | country =="Syrian Arab Republic" | country =="Taiwan (Province of China)" | country =="Tajikistan" | country =="Thailand" | country =="Timor-Leste" | country =="Turkmenistan" | country =="United Arab Emirates (the)" | country =="Uzbekistan" | country =="Viet Nam" | country =="Yemen" | country =="Yemen Arab Rep" | country =="Yemen P Dem Rep"
replace Continent="Europe" if country =="Albania" | country =="Austria" | country =="Azores Islands" | country =="Belarus" | country =="Belgium" | country =="Bosnia and Herzegovina" | country =="Bulgaria" | country =="Croatia" | country =="Cyprus" | country =="Czech Republic (the)" | country =="Czechoslovakia" | country =="Denmark" | country =="Estonia" | country =="Finland" | country =="France" | country =="Germany" | country =="Germany Dem Rep" | country =="Germany Fed Rep" | country =="Greece" | country =="Hungary" | country =="Iceland" | country =="Ireland" | country =="Isle of Man" | country =="Italy" | country =="Latvia" | country =="Lithuania" | country =="Luxembourg" | country =="Macedonia (the former Yugoslav Republ.." | country =="Malta" | country =="Moldova (the Republic of)" | country =="Montenegro" | country =="Netherlands (the)" | country =="Norway" | country =="Poland" | country =="Portugal" | country =="Romania" | country =="Russian Federation (the)" | country =="Serbia" | country =="Serbia Montenegro" | country =="Slovakia" | country =="Slovenia" | country =="Soviet Union" | country =="Spain" | country =="Sweden" | country =="Switzerland" | country =="Turkey" | country =="Ukraine" | country =="United Kingdom of Great Britain and N.." | country =="Yugoslavia"
replace Continent="North America" if country =="Anguilla" |  country =="Antigua and Barbuda" |  country =="Bahamas (the)" |  country =="Barbados" |  country =="Belize" |  country =="Bermuda" |  country =="Canada" |  country =="Cayman Islands (the)" |  country =="Costa Rica" |  country =="Cuba" |  country =="Cura????ao" |  country =="Dominica" |  country =="Dominican Republic (the)" |  country =="El Salvador" |  country =="Grenada" |  country =="Guadeloupe" |  country =="Guatemala" |  country =="Haiti" |  country =="Honduras" |  country =="Jamaica" |  country =="Martinique" |  country =="Mexico" |  country =="Montserrat" |  country =="Netherlands Antilles" |  country =="Nicaragua" |  country =="Panama" |  country =="Puerto Rico" |  country =="Saint Barth????lemy" |  country =="Saint Kitts and Nevis" |  country =="Saint Lucia" |  country =="Saint Martin (French Part)" |  country =="Saint Vincent and the Grenadines" |  country =="Sint Maarten (Dutch part)" |  country =="Trinidad and Tobago" |  country =="Turks and Caicos Islands (the)" |  country =="United States of America (the)" |  country =="Virgin Island (British)" |  country =="Virgin Island (U.S.)"
replace Continent="Oceania" if country =="American Samoa" |  country =="Australia" |  country =="Cook Islands (the)" |  country =="Fiji" |  country =="French Polynesia" |  country =="Guam" |  country =="Kiribati" |  country =="Marshall Islands (the)" |  country =="Micronesia (Federated States of)" |  country =="New Caledonia" |  country =="New Zealand" |  country =="Niue" |  country =="Northern Mariana Islands (the)" |  country =="Palau" |  country =="Papua New Guinea" |  country =="Samoa" |  country =="Solomon Islands" |  country =="Tokelau" |  country =="Tonga" |  country =="Tuvalu" |  country =="Vanuatu" |  country =="Wallis and Futuna"
replace Continent="South America" if country =="Argentina" | country=="Bolivia (Plurinational State of)" | country=="Brazil" | country=="Chile" | country=="Colombia" | country=="Ecuador" | country=="French Guiana" | country=="Guyana" | country=="Paraguay" | country=="Peru" | country=="Suriname" | country=="Uruguay" | country=="Venezuela (Bolivarian Republic of)"
tab Continent

egen panelvar = group(country)
xtset panelvar year
replace total_deaths = total_deaths/1000
replace total_affected = total_affected/1000
replace total_damages_adj = total_damages_adj/1000000
replace r1_total_deaths = r1_total_deaths/1000

egen TOTDEATHS = total(total_deaths), by(Continent year)
replace TOTDEATHS = TOTDEATHS - total_deaths
egen TOTDAMAGES = total(total_damages_adj), by(Continent year)
replace TOTDAMAGES = TOTDAMAGES - total_damages_adj
egen TOTAFFECTED = total(total_affected), by(Continent year)
replace TOTAFFECTED = TOTAFFECTED - total_affected

drop r1_total_deaths r2_total_deaths r3_total_deaths r4_total_deaths r5_total_deaths r6_total_deaths r7_total_deaths r8_total_deaths r9_total_deaths r10_total_deaths r1_total_affected r2_total_affected r3_total_affected r4_total_affected r5_total_affected r6_total_affected r7_total_affected r8_total_affected r9_total_affected r10_total_affected r1_total_damages_adj r2_total_damages_adj r3_total_damages_adj r4_total_damages_adj r5_total_damages_adj r6_total_damages_adj r7_total_damages_adj r8_total_damages_adj r9_total_damages_adj r10_total_damages_adj
sort country year
by country: gen r1_TOTDEATHS = TOTDEATHS[_n-1]
by country: gen r2_TOTDEATHS = TOTDEATHS[_n-2]
by country: gen r3_TOTDEATHS = TOTDEATHS[_n-3]
by country: gen r4_TOTDEATHS = TOTDEATHS[_n-4]
by country: gen r5_TOTDEATHS = TOTDEATHS[_n-5]
by country: gen r6_TOTDEATHS = TOTDEATHS[_n-6]
by country: gen r7_TOTDEATHS = TOTDEATHS[_n-7]
by country: gen r8_TOTDEATHS = TOTDEATHS[_n-8]
by country: gen  r9_TOTDEATHS= TOTDEATHS[_n-9]
by country: gen  r10_TOTDEATHS= TOTDEATHS[_n-10]
by country: gen r1_TOTDAMAGES = TOTDAMAGES[_n-1]
by country: gen r2_TOTDAMAGES = TOTDAMAGES[_n-2]
by country: gen r3_TOTDAMAGES = TOTDAMAGES[_n-3]
by country: gen r4_TOTDAMAGES = TOTDAMAGES[_n-4]
by country: gen r5_TOTDAMAGES = TOTDAMAGES[_n-5]
by country: gen r6_TOTDAMAGES = TOTDAMAGES[_n-6]
by country: gen r7_TOTDAMAGES = TOTDAMAGES[_n-7]
by country: gen r8_TOTDAMAGES = TOTDAMAGES[_n-8]
by country: gen  r9_TOTDAMAGES= TOTDAMAGES[_n-9]
by country: gen  r10_TOTDAMAGES= TOTDAMAGES[_n-10]
by country: gen r1_TOTAFFECTED = TOTAFFECTED[_n-1]
by country: gen r2_TOTAFFECTED = TOTAFFECTED[_n-2]
by country: gen r3_TOTAFFECTED = TOTAFFECTED[_n-3]
by country: gen r4_TOTAFFECTED = TOTAFFECTED[_n-4]
by country: gen r5_TOTAFFECTED = TOTAFFECTED[_n-5]
by country: gen r6_TOTAFFECTED = TOTAFFECTED[_n-6]
by country: gen r7_TOTAFFECTED = TOTAFFECTED[_n-7]
by country: gen r8_TOTAFFECTED = TOTAFFECTED[_n-8]
by country: gen  r9_TOTAFFECTED= TOTAFFECTED[_n-9]
by country: gen  r10_TOTAFFECTED= TOTAFFECTED[_n-10]
lab var r1_TOTDEATHS "Deaths (Year t-1)"
lab var r2_TOTDEATHS "Deaths (Year t-2)"
lab var r3_TOTDEATHS "Deaths (Year t-3)"
lab var r4_TOTDEATHS "Deaths (Year t-4)"
lab var r5_TOTDEATHS "Deaths (Year t-5)"
lab var r6_TOTDEATHS "Deaths (Year t-6)"
lab var r7_TOTDEATHS "Deaths (Year t-7)"
lab var r8_TOTDEATHS "Deaths (Year t-8)"
lab var r9_TOTDEATHS "Deaths (Year t-9)"
lab var r10_TOTDEATHS "Deaths (Year t-10)"
lab var r10_TOTDAMAGES "Damages (Year t-10)"
lab var r9_TOTDAMAGES "Damages (Year t-9)"
lab var r8_TOTDAMAGES "Damages (Year t-8)"
lab var r7_TOTDAMAGES "Damages (Year t-7)"
lab var r6_TOTDAMAGES "Damages (Year t-6)"
lab var r5_TOTDAMAGES "Damages (Year t-5)"
lab var r4_TOTDAMAGES "Damages (Year t-4)"
lab var r3_TOTDAMAGES "Damages (Year t-3)"
lab var r2_TOTDAMAGES "Damages (Year t-2)"
lab var r1_TOTDAMAGES "Damages (Year t-1)"
lab var TOTAFFECTED "Affected victims"
lab var r10_TOTAFFECTED "Affected victims (Year t-10)"
lab var r9_TOTAFFECTED "Affected victims (Year t-9)"
lab var r8_TOTAFFECTED "Affected victims (Year t-8)"
lab var r7_TOTAFFECTED "Affected victims (Year t-7)"
lab var r6_TOTAFFECTED "Affected victims (Year t-6)"
lab var r5_TOTAFFECTED "Affected victims (Year t-5)"
lab var r4_TOTAFFECTED "Affected victims (Year t-4)"
lab var r3_TOTAFFECTED "Affected victims (Year t-3)"
lab var r2_TOTAFFECTED "Affected victims (Year t-2)"
lab var r1_TOTAFFECTED "Affected victims (Year t-1)"
drop if year==1984 | year==1985 | year==1986 | year==1987| year==1988 | year == 1989 | year==2011 | year==2012 | year==2013 | year==2014 | year==2014 | year==2015 | year==2016 | year==2017 | year==2018 | year==2019 | year==2020


#RESTRICT TO SAMPLE
keep if country=="Argentina" | country=="Australia"  | country=="Belgium" | country== "Brazil" | country== "Bulgaria"  | country=="Canada" | country== "China" | country== "Denmark"  | country=="Egypt"  | country=="Finland"  | country=="France" | country== "Germany"  | country=="Greece"  | country=="Hungary"  | country=="India"  | country=="Ireland"  | country=="Israel"  | country=="Italy"  | country=="Japan" | country== "Korea (the Republic of)" | country== "Malaysia" | country== "Mexico"  | country=="Morocco"  | country=="Netherlands (the)" | country== "New Zealand"  | country=="Norway"  | country=="Panama"  | country=="Philippines (the)" | country== "Poland"  | country=="Russian Federation (the)"  | country=="Singapore"  | country=="Slovenia" | country== "South Africa"  | country=="Spain"  | country=="Sweden" | country=="Switzerland" | country== "Thailand" | country== "Ukraine" | country== "United Kingdom of Great Britain and Northern Ireland (the)" | country== "United States of America (the)"

#USE CODES
replace country = "AR" if country=="Argentina" 
replace country = "AU" if country=="Australia"  
replace country = "BE" if country=="Belgium" 
replace country = "BR" if country== "Brazil" 
replace country = "BG" if country== "Bulgaria"  
replace country = "CA" if country=="Canada" 
replace country = "CN" if country== "China" 
replace country = "DK" if country== "Denmark"  
replace country = "EG" if country=="Egypt"  
replace country = "FI" if country=="Finland"  
replace country = "FR" if country=="France" 
replace country = "DE" if country== "Germany"  
replace country = "GR" if country=="Greece"  
replace country = "HU" if country=="Hungary"  
replace country = "IN" if country=="India"  
replace country = "IE" if country=="Ireland"  
replace country = "IL" if country=="Israel"  
replace country = "IT" if country=="Italy"  
replace country = "JP" if country=="Japan" 
replace country = "KR" if country== "Korea (the Republic of)" 
replace country = "MY" if country== "Malaysia" 
replace country = "MX" if country== "Mexico"  
replace country = "MA" if country=="Morocco"  
replace country = "NL" if country=="Netherlands (the)" 
replace country = "NZ" if country== "New Zealand"  
replace country = "NO" if country=="Norway"  
replace country = "PA" if country=="Panama"  
replace country = "PH" if country=="Philippines (the)" 
replace country = "PL" if country== "Poland"  
replace country = "RU" if country=="Russian Federation (the)"  
replace country = "SG" if country=="Singapore"  
replace country = "SI" if country=="Slovenia" 
replace country = "ZA" if country== "South Africa"  
replace country = "ES" if country=="Spain"  
replace country = "SE" if country=="Sweden" 
replace country = "CH" if country=="Switzerland" 
replace country = "TH" if country== "Thailand" 
replace country = "UA" if country== "Ukraine" 
replace country = "GB" if country== "United Kingdom of Great Britain and Northern Ireland (the)" 
replace country = "US" if country== "United States of America (the)"

######################################################################################################################
##Aggregating by continent

replace region = "Europe" if country == "BE" |country == "BG" |country == "CH" |country == "DE" |country == "DK" |country == "ES" |country == "FI" |country == "FR" |country =="GB" |country == "GR" |country == "HU" |country == "IE" |country == "IT" |country == "NL" |country == "NO" |country == "PL" |country == "SE" |country == "SI" | country == "UA" | country == "RU" 
replace region = "North America" if country == "US" |country == "CA" |country == "MX" | country == "PA"
replace region = "South America" if country == "AR" |country == "BR" 
replace region = "Asia" if country == "JP" |country == "KR" |country == "SG" | country == "IL" | country == "CN" | country == "IN" | country == "MY" | country == "PH"  | country == "TH" 
replace region = "Africa" if country == "ZA" | country == "EG" | country == "MA" 
replace region = "Australia" if country == "AU" |country == "NZ" 



