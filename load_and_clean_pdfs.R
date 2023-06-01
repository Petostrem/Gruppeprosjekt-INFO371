library(readtext)
library(quanteda)
library(tidyverse)

#This file contains most of our pre-prosessing we performed in order to
#prepare our corpus for this group project. We base this script of the
#provided code for reading pdf files and creating a corpus (load_and_clean_pdfs.R)
#

# load PDF files (I had to adjust five filenames manually)
dat_raw <- readtext("Commission consultation all/*")

table(dat_raw$doc_id)

dat <- dat_raw |> 
    mutate(text = str_squish(text)) |> # remove unnecessary whitespace
    separate(doc_id, into = c("id", "actor", "type_actor"),
             sep = "_") # create docvars based on file names

# remove PDF ending in document-level variable
dat <- dat |> 
    mutate(type_actor = str_remove_all(type_actor, "\\.pdf"))


# save as RDS file
saveRDS(dat, "data_corpus_aiact_group_project.rds")


#Epic NGO
#Set the row index where you want to add the country of origin
row_index <- 1
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Avaaz
#Set the row index where you want to add the country of origin
row_index <- 2
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Linkedin
#Set the row index where you want to add the country of origin
row_index <- 3
#Set the country name
country_name <- "Ireland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#DeepMind
#Set the row index where you want to add the country of origin
row_index <- 4
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Sazka
#Set the row index where you want to add the country of origin
row_index <- 5
#Set the country name
country_name <- "Czechia"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Aniti
#Set the row index where you want to add the country of origin
row_index <- 6
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#DIN
#Set the row index where you want to add the country of origin
row_index <- 7
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#UNI
#Set the row index where you want to add the country of origin
row_index <- 8
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#DIN
#Set the row index where you want to add the country of origin
row_index <- 9
#Set the country name
country_name <- "Finland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#WKO
#Set the row index where you want to add the country of origin
row_index <- 10
#Set the country name
country_name <- "Austria"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#DGB
#Set the row index where you want to add the country of origin
row_index <- 11
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#City Stockholm
#Set the row index where you want to add the country of origin
row_index <- 12
#Set the country name
country_name <- "Sweden"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#MPP
#Set the row index where you want to add the country of origin
row_index <- 13
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#COCIR
#Set the row index where you want to add the country of origin
row_index <- 14
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Citizen
#Set the row index where you want to add the country of origin
row_index <- 15
#Set the country name
country_name <- "Denmark"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Region vestre G??taland
#Set the row index where you want to add the country of origin
row_index <- 16
#Set the country name
country_name <- "Sweden"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#ETSI
#Set the row index where you want to add the country of origin
row_index <- 17
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#CSC
#Set the row index where you want to add the country of origin
row_index <- 18
#Set the country name
country_name <- "Finland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#LO Sweden
#Set the row index where you want to add the country of origin
row_index <- 19
#Set the country name
country_name <- "Sweden"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Teachers Ireland
#Set the row index where you want to add the country of origin
row_index <- 20
#Set the country name
country_name <- "Ireland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Norway open AI lab
#Set the row index where you want to add the country of origin
row_index <- 21
#Set the country name
country_name <- "Norway"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Euralarm
#Set the row index where you want to add the country of origin
row_index <- 22
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Hope
#Set the row index where you want to add the country of origin
row_index <- 23
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Allied
#Set the row index where you want to add the country of origin
row_index <- 24
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Finance Denmark
#Set the row index where you want to add the country of origin
row_index <- 25
#Set the country name
country_name <- "Denmark"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Eurogeographics
#Set the row index where you want to add the country of origin
row_index <- 26
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Anec
#Set the row index where you want to add the country of origin
row_index <- 27
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Civil Liberties
#Set the row index where you want to add the country of origin
row_index <- 28
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Telekom NL
#Set the row index where you want to add the country of origin
row_index <- 29
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#IZEW
#Set the row index where you want to add the country of origin
row_index <- 30
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#EACA
#Set the row index where you want to add the country of origin
row_index <- 31
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Sozialversicherung
#Set the row index where you want to add the country of origin
row_index <- 32
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Google
#Set the row index where you want to add the country of origin
row_index <- 33
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Guild
#Set the row index where you want to add the country of origin
row_index <- 34
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#mrGlauner
#Set the row index where you want to add the country of origin
row_index <- 35
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Vrije
#Set the row index where you want to add the country of origin
row_index <- 36
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Consumer reports
#Set the row index where you want to add the country of origin
row_index <- 37
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#PGEU
#Set the row index where you want to add the country of origin
row_index <- 38 
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#MEDEF
#Set the row index where you want to add the country of origin
row_index <- 39 
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#SICK
#Set the row index where you want to add the country of origin
row_index <- 40
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#CMOS
#Set the row index where you want to add the country of origin
row_index <- 41
#Set the country name
country_name <- "Czechia"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#FIM
#Set the row index where you want to add the country of origin
row_index <- 42
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Danish chamber belgium
#Set the row index where you want to add the country of origin
row_index <- 43
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#SANOFI
#Set the row index where you want to add the country of origin
row_index <- 44
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Co op banks
#Set the row index where you want to add the country of origin
row_index <- 45 
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Droits-de-lhomme
#Set the row index where you want to add the country of origin
row_index <- 46 
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Tech-Alliance
#Set the row index where you want to add the country of origin
row_index <- 47 
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#AMcham
#Set the row index where you want to add the country of origin
row_index <- 48 
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#EnBw
#Set the row index where you want to add the country of origin
row_index <- 49 
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Siemens
#Set the row index where you want to add the country of origin
row_index <- 50
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Blackberry
#Set the row index where you want to add the country of origin
row_index <- 51
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Not for law
#Set the row index where you want to add the country of origin
row_index <- 52
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Applia
#Set the row index where you want to add the country of origin
row_index <- 53
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Eurocities
#Set the row index where you want to add the country of origin
row_index <- 54
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Hangzhou
#Set the row index where you want to add the country of origin
row_index <- 55
#Set the country name
country_name <- "China"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#BDA
#Set the row index where you want to add the country of origin
row_index <- 56
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#European dis
#Set the row index where you want to add the country of origin
row_index <- 57
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Information commisioner
#Set the row index where you want to add the country of origin
row_index <- 58
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#CAIDP
#Set the row index where you want to add the country of origin
row_index <- 59
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#EUCOPE
#Set the row index where you want to add the country of origin
row_index <- 60
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#France
#Set the row index where you want to add the country of origin
row_index <- 61
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#ACEA
#Set the row index where you want to add the country of origin
row_index <- 62
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Societe general
#Set the row index where you want to add the country of origin
row_index <- 63
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#gfii
#Set the row index where you want to add the country of origin
row_index <- 64
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Eurosmart
#Set the row index where you want to add the country of origin
row_index <- 65
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Orange
#Set the row index where you want to add the country of origin
row_index <- 66
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Bayer
#Set the row index where you want to add the country of origin
row_index <- 67
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Eit health
#Set the row index where you want to add the country of origin
row_index <- 68
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#CIPL
#Set the row index where you want to add the country of origin
row_index <- 69
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Agoria
#Set the row index where you want to add the country of origin
row_index <- 70
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Secure identity
#Set the row index where you want to add the country of origin
row_index <- 71
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Info ac
#Set the row index where you want to add the country of origin
row_index <- 72
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#asnef
#Set the row index where you want to add the country of origin
row_index <- 73
#Set the country name
country_name <- "Spain"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Efpia
#Set the row index where you want to add the country of origin
row_index <- 74
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Resmed
#Set the row index where you want to add the country of origin
row_index <- 75
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#idemia
#Set the row index where you want to add the country of origin
row_index <- 76
#Set the country name
country_name <- "Portugal"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Etuce
#Set the row index where you want to add the country of origin
row_index <- 77
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Stm
#Set the row index where you want to add the country of origin
row_index <- 78
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Hoffman la roche
#Set the row index where you want to add the country of origin
row_index <- 79
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#etami
#Set the row index where you want to add the country of origin
row_index <- 80
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#intesa
#Set the row index where you want to add the country of origin
row_index <- 81
#Set the country name
country_name <- "Italy"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Gew
#Set the row index where you want to add the country of origin
row_index <- 82
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Aioti
#Set the row index where you want to add the country of origin
row_index <- 83
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Hospital pharm
#Set the row index where you want to add the country of origin
row_index <- 84
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Italian banking
#Set the row index where you want to add the country of origin
row_index <- 85
#Set the country name
country_name <- "Italy"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Oxford
#Set the row index where you want to add the country of origin
row_index <- 86
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#ERS
#Set the row index where you want to add the country of origin
row_index <- 87
#Set the country name
country_name <- "Austria"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#ECO
#Set the row index where you want to add the country of origin
row_index <- 88
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#BIOGEN
#Set the row index where you want to add the country of origin
row_index <- 89
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Open AI
#Set the row index where you want to add the country of origin
row_index <- 90
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Workday
#Set the row index where you want to add the country of origin
row_index <- 91
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Edrii
#Set the row index where you want to add the country of origin
row_index <- 92
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#SAP
#Set the row index where you want to add the country of origin
row_index <- 93
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Demo & tech
#Set the row index where you want to add the country of origin
row_index <- 94
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Industriall
#Set the row index where you want to add the country of origin
row_index <- 95
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#COV
#Set the row index where you want to add the country of origin
row_index <- 96
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Wikimedia
#Set the row index where you want to add the country of origin
row_index <- 97
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Adigital
#Set the row index where you want to add the country of origin
row_index <- 98
#Set the country name
country_name <- "Spain"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#5rights
#Set the row index where you want to add the country of origin
row_index <- 99
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#ACT
#Set the row index where you want to add the country of origin
row_index <- 100
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#THORN
#Set the row index where you want to add the country of origin
row_index <- 101
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#ETSI
#Set the row index where you want to add the country of origin
row_index <- 102
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Bitkom
#Set the row index where you want to add the country of origin
row_index <- 103
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#ETPG
#Set the row index where you want to add the country of origin
row_index <- 104
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#AI robotics
#Set the row index where you want to add the country of origin
row_index <- 105
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#BIL sweden
#Set the row index where you want to add the country of origin
row_index <- 106
#Set the country name
country_name <- "Sweden"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Lancashire
#Set the row index where you want to add the country of origin
row_index <- 107
#Set the country name
country_name <- "Cyprus"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Kommunaldpertementet
#Set the row index where you want to add the country of origin
row_index <- 108
#Set the country name
country_name <- "Norway"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Finnish ai
#Set the row index where you want to add the country of origin
row_index <- 109
#Set the country name
country_name <- "Finland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Deutche
#Set the row index where you want to add the country of origin
row_index <- 110
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#lne
#Set the row index where you want to add the country of origin
row_index <- 111
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#NEN
#Set the row index where you want to add the country of origin
row_index <- 112
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#AstraZeneca
#Set the row index where you want to add the country of origin
row_index <- 113
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Arbeiter
#Set the row index where you want to add the country of origin
row_index <- 114
#Set the country name
country_name <- "Austria"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Swedish enterprise
#Set the row index where you want to add the country of origin
row_index <- 115
#Set the country name
country_name <- "Sweden"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Aberdeen law
#Set the row index where you want to add the country of origin
row_index <- 116
#Set the country name
country_name <- "Scotland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Accis
#Set the row index where you want to add the country of origin
row_index <- 117
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Algowatch
#Set the row index where you want to add the country of origin
row_index <- 118
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Dev all
#Set the row index where you want to add the country of origin
row_index <- 119
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#VDMA
#Set the row index where you want to add the country of origin
row_index <- 120
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Jeita
#Set the row index where you want to add the country of origin
row_index <- 121
#Set the country name
country_name <- "Japan"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#NEC
#Set the row index where you want to add the country of origin
row_index <- 122
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Savings
#Set the row index where you want to add the country of origin
row_index <- 123
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Lewiatan
#Set the row index where you want to add the country of origin
row_index <- 124
#Set the country name
country_name <- "Poland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Glovo
#Set the row index where you want to add the country of origin
row_index <- 125
#Set the country name
country_name <- "Spain"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#German cons
#Set the row index where you want to add the country of origin
row_index <- 126
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Vub
#Set the row index where you want to add the country of origin
row_index <- 127
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#BSP
#Set the row index where you want to add the country of origin
row_index <- 128
#Set the country name
country_name <- "Poland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Beuc
#Set the row index where you want to add the country of origin
row_index <- 129
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#SPLUNK
#Set the row index where you want to add the country of origin
row_index <- 130
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Verband
#Set the row index where you want to add the country of origin
row_index <- 131
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Thinktech
#Set the row index where you want to add the country of origin
row_index <- 132
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Merck
#Set the row index where you want to add the country of origin
row_index <- 133
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#BBVA
#Set the row index where you want to add the country of origin
row_index <- 134
#Set the country name
country_name <- "Spain"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Semi
#Set the row index where you want to add the country of origin
row_index <- 135
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Huawei
#Set the row index where you want to add the country of origin
row_index <- 136
#Set the country name
country_name <- "China"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Liberty global
#Set the row index where you want to add the country of origin
row_index <- 137
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Mediaset
#Set the row index where you want to add the country of origin
row_index <- 138
#Set the country name
country_name <- "Italy"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Renaissance
#Set the row index where you want to add the country of origin
row_index <- 139
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#ACM
#Set the row index where you want to add the country of origin
row_index <- 140
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#BMW
#Set the row index where you want to add the country of origin
row_index <- 141
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#test pub
#Set the row index where you want to add the country of origin
row_index <- 142
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#bits of free
#Set the row index where you want to add the country of origin
row_index <- 143
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Access
#Set the row index where you want to add the country of origin
row_index <- 144
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#DIHK
#Set the row index where you want to add the country of origin
row_index <- 145
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Novartis
#Set the row index where you want to add the country of origin
row_index <- 146
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Assuralia
#Set the row index where you want to add the country of origin
row_index <- 147
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#Arthur
#Set the row index where you want to add the country of origin
row_index <- 148
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#EON
#Set the row index where you want to add the country of origin
row_index <- 149
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#KMD
#Set the row index where you want to add the country of origin
row_index <- 150
#Set the country name
country_name <- "Denmark"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#KMD
#Set the row index where you want to add the country of origin
row_index <- 150
#Set the country name
country_name <- "Denmark"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#sella
#Set the row index where you want to add the country of origin
row_index <- 151
#Set the country name
country_name <- "Italy"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Deepmind
#Set the row index where you want to add the country of origin
row_index <- 152
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#spectaris
#Set the row index where you want to add the country of origin
row_index <- 153
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#RELX
#Set the row index where you want to add the country of origin
row_index <- 154
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#bvmed
#Set the row index where you want to add the country of origin
row_index <- 155
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#moveeu
#Set the row index where you want to add the country of origin
row_index <- 156
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Standard char
#Set the row index where you want to add the country of origin
row_index <- 157
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#CIO
#Set the row index where you want to add the country of origin
row_index <- 158
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#LEADS
#Set the row index where you want to add the country of origin
row_index <- 159
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#com tech
#Set the row index where you want to add the country of origin
row_index <- 160
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Fujitsu
#Set the row index where you want to add the country of origin
row_index <- 161
#Set the country name
country_name <- "Japan"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#EPIC
#Set the row index where you want to add the country of origin
row_index <- 162
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#deutche bors
#Set the row index where you want to add the country of origin
row_index <- 163
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#bvdw
#Set the row index where you want to add the country of origin
row_index <- 164
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#VKU
#Set the row index where you want to add the country of origin
row_index <- 165
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#j&j
#Set the row index where you want to add the country of origin
row_index <- 166
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#KU
#Set the row index where you want to add the country of origin
row_index <- 167
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#INTEL
#Set the row index where you want to add the country of origin
row_index <- 168
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#sbs
#Set the row index where you want to add the country of origin
row_index <- 169
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#keidanren
#Set the row index where you want to add the country of origin
row_index <- 170
#Set the country name
country_name <- "Japan"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#aesgp
#Set the row index where you want to add the country of origin
row_index <- 171
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#aibelgium
#Set the row index where you want to add the country of origin
row_index <- 172
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#deutchse
#Set the row index where you want to add the country of origin
row_index <- 173
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#thibaut
#Set the row index where you want to add the country of origin
row_index <- 174
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#twilio
#Set the row index where you want to add the country of origin
row_index <- 175
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#global digital
#Set the row index where you want to add the country of origin
row_index <- 176
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#German bank
#Set the row index where you want to add the country of origin
row_index <- 177
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#euro dent
#Set the row index where you want to add the country of origin
row_index <- 178
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Aial
#Set the row index where you want to add the country of origin
row_index <- 179
#Set the country name
country_name <- "Lithuania"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#wolkswagen
#Set the row index where you want to add the country of origin
row_index <- 180
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#enel
#Set the row index where you want to add the country of origin
row_index <- 181
#Set the country name
country_name <- "Italy"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Zvei
#Set the row index where you want to add the country of origin
row_index <- 182
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#negotia
#Set the row index where you want to add the country of origin
row_index <- 183
#Set the country name
country_name <- "Norway"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name





#cpme
#Set the row index where you want to add the country of origin
row_index <- 184
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#Equifax
#Set the row index where you want to add the country of origin
row_index <- 185
#Set the country name
country_name <- "Spain"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#sodi
#Set the row index where you want to add the country of origin
row_index <- 186
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#Mastercard
#Set the row index where you want to add the country of origin
row_index <- 187
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#sky
#Set the row index where you want to add the country of origin
row_index <- 188
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#moje
#Set the row index where you want to add the country of origin
row_index <- 189
#Set the country name
country_name <- "Poland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#epf
#Set the row index where you want to add the country of origin
row_index <- 190
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#medtech
#Set the row index where you want to add the country of origin
row_index <- 191
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#bsa
#Set the row index where you want to add the country of origin
row_index <- 192
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#financial markets
#Set the row index where you want to add the country of origin
row_index <- 193
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#iti
#Set the row index where you want to add the country of origin
row_index <- 194
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#fna
#Set the row index where you want to add the country of origin
row_index <- 195
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#japan
#Set the row index where you want to add the country of origin
row_index <- 196
#Set the country name
country_name <- "Japan"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#me onc
#Set the row index where you want to add the country of origin
row_index <- 197
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#onfido
#Set the row index where you want to add the country of origin
row_index <- 198
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Siemens energy
#Set the row index where you want to add the country of origin
row_index <- 199
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#future of life
#Set the row index where you want to add the country of origin
row_index <- 200
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#insurance
#Set the row index where you want to add the country of origin
row_index <- 201
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Hogen lovell
#Set the row index where you want to add the country of origin
row_index <- 202
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#Edtech alliance
#Set the row index where you want to add the country of origin
row_index <- 203
#Set the country name
country_name <- "Denmark"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#europlace
#Set the row index where you want to add the country of origin
row_index <- 204
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#trilateral  
#Set the row index where you want to add the country of origin
row_index <- 205
#Set the country name
country_name <- "Ireland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#microsoft
#Set the row index where you want to add the country of origin
row_index <- 206
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#acc sys
#Set the row index where you want to add the country of origin
row_index <- 207
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#therapautic
#Set the row index where you want to add the country of origin
row_index <- 208
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#openforum
#Set the row index where you want to add the country of origin
row_index <- 209
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#beltug
#Set the row index where you want to add the country of origin
row_index <- 210
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#tic
#Set the row index where you want to add the country of origin
row_index <- 211
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#nokia
#Set the row index where you want to add the country of origin
row_index <- 212
#Set the country name
country_name <- "Finland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#bvi
#Set the row index where you want to add the country of origin
row_index <- 213
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#medtronic
#Set the row index where you want to add the country of origin
row_index <- 214
#Set the country name
country_name <- "Ireland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#digital sme
#Set the row index where you want to add the country of origin
row_index <- 215
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#open 
#Set the row index where you want to add the country of origin
row_index <- 216
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#women ai
#Set the row index where you want to add the country of origin
row_index <- 217
#Set the country name
country_name <- "Austria"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#techuk
#Set the row index where you want to add the country of origin
row_index <- 218
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#evangelical
#Set the row index where you want to add the country of origin
row_index <- 219
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#sherpa
#Set the row index where you want to add the country of origin
row_index <- 220
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#infenion
#Set the row index where you want to add the country of origin
row_index <- 221
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#phillips
#Set the row index where you want to add the country of origin
row_index <- 222
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#unipol
#Set the row index where you want to add the country of origin
row_index <- 223
#Set the country name
country_name <- "Italy"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#impact
#Set the row index where you want to add the country of origin
row_index <- 224
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#croatian ai
#Set the row index where you want to add the country of origin
row_index <- 225
#Set the country name
country_name <- "Croatia"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#gleif
#Set the row index where you want to add the country of origin
row_index <- 226
#Set the country name
country_name <- "Switzerland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#linkedin
#Set the row index where you want to add the country of origin
row_index <- 227
#Set the country name
country_name <- "Ireland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#infobalt
#Set the row index where you want to add the country of origin
row_index <- 228
#Set the country name
country_name <- "Lithuania"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#citizen
#Set the row index where you want to add the country of origin
row_index <- 229
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#cgc
#Set the row index where you want to add the country of origin
row_index <- 230
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#engine
#Set the row index where you want to add the country of origin
row_index <- 231
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#fessenko
#Set the row index where you want to add the country of origin
row_index <- 232
#Set the country name
country_name <- "Bulgaria"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#bundesverband
#Set the row index where you want to add the country of origin
row_index <- 233
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#eurpean ai forum
#Set the row index where you want to add the country of origin
row_index <- 234
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#siemens
#Set the row index where you want to add the country of origin
row_index <- 235
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#fraud
#Set the row index where you want to add the country of origin
row_index <- 236
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#facebook
#Set the row index where you want to add the country of origin
row_index <- 237
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#la poste
#Set the row index where you want to add the country of origin
row_index <- 238
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#gaig
#Set the row index where you want to add the country of origin
row_index <- 239
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#abb
#Set the row index where you want to add the country of origin
row_index <- 240
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#future society
#Set the row index where you want to add the country of origin
row_index <- 241
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#finnish tech
#Set the row index where you want to add the country of origin
row_index <- 242
#Set the country name
country_name <- "Finland"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#ibm
#Set the row index where you want to add the country of origin
row_index <- 243
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#fna
#Set the row index where you want to add the country of origin
row_index <- 244
#Set the country name
country_name <- "France"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#insurance
#Set the row index where you want to add the country of origin
row_index <- 245
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#5g
#Set the row index where you want to add the country of origin
row_index <- 246
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#climate change
#Set the row index where you want to add the country of origin
row_index <- 247
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#johner
#Set the row index where you want to add the country of origin
row_index <- 248
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#avaaz
#Set the row index where you want to add the country of origin
row_index <- 249
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#leverhulme
#Set the row index where you want to add the country of origin
row_index <- 250
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#burden
#Set the row index where you want to add the country of origin
row_index <- 251
#Set the country name
country_name <- "Sweden"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#psycolog
#Set the row index where you want to add the country of origin
row_index <- 252
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#allai
#Set the row index where you want to add the country of origin
row_index <- 253
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#better finance
#Set the row index where you want to add the country of origin
row_index <- 254
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#digieurope
#Set the row index where you want to add the country of origin
row_index <- 255
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#amnesty
#Set the row index where you want to add the country of origin
row_index <- 256
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#getty
#Set the row index where you want to add the country of origin
row_index <- 257
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#employment
#Set the row index where you want to add the country of origin
row_index <- 258
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#isf
#Set the row index where you want to add the country of origin
row_index <- 259
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#bublitz
#Set the row index where you want to add the country of origin
row_index <- 260
#Set the country name
country_name <- "Germany"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#chamber
#Set the row index where you want to add the country of origin
row_index <- 261
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#camdge
#Set the row index where you want to add the country of origin
row_index <- 262
#Set the country name
country_name <- "Netherlands"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#claire
#Set the row index where you want to add the country of origin
row_index <- 263
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name



#american 
#Set the row index where you want to add the country of origin
row_index <- 264
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#fairtrials
#Set the row index where you want to add the country of origin
row_index <- 265
#Set the country name
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#crowdstrike
#Set the row index where you want to add the country of origin
row_index <- 266
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#berkely
#Set the row index where you want to add the country of origin
row_index <- 267
#Set the country name
country_name <- "United States"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#digital courage
#Set the row index where you want to add the country of origin
row_index <- 268
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name


#ai austria
#Set the row index where you want to add the country of origin
row_index <- 269
#Set the country name
country_name <- "Austria"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name




#equinet
#Set the row index where you want to add the country of origin
row_index <- 270
#Set the country name
country_name <- "Belgium"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name

#Pre processing part to. Checking spelling errors elsewhere:

row_index <- 27
#Set the country name
type_actor <- "Consumer-Organization"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

row_index <- 37
#Set the country name
type_actor <- "Consumer-Organization"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

row_index <- 114
#Set the country name
type_actor <- "Consumer-Organization"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

row_index <- 126
#Set the country name
type_actor <- "Consumer-Organization"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

view(dat)

row_index <- 36
#Set the country name
type_actor <- "Trade-Union"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

row_index <- 230
#Set the country name
type_actor <- "Trade-Union"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

view(dat)

row_index <- 267
#Set the country name
type_actor <- "Academic"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor


row_index <- 12
#Set the country name
type_actor <- "Public-Authority"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor



row_index <- 261
#Set the country name
type_actor <- "Trade-Union"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor


row_index <- 248
#Set the country name
type_actor <- "Business"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "type_actor"] <- type_actor

row_index <- 116
#Change scotland to UK
country_name <- "United Kingdom"
#Add the country to the "Country of origin" column for the selected row
dat[row_index, "Country of origin"] <- country_name
view(dat)
view(df)


#Double check any spelling mistakes or faulty language
view(dat)
unique(dat$type_actor)
unique(dat$`Country of origin`)

#Add continents to the data for further analysis at later stages.
# checks each row for Country of origin, and assigns the correct continent
install.packages("countrycode")
library(countrycode)
df <- dat %>%
  mutate(Continent = countrycode(sourcevar = dat$`Country of origin`, origin = "country.name", destination = "continent"))

view(df)
unique(df$type_actor)
unique(df$`Country of origin`)
unique(df$Continent)


saveRDS(df, "data_corpus_aiact_INFO371_GroupProject.rds")


