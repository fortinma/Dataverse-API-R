#from https://github.com/IQSS/dataverse-client-r
library("dataverse")
library("curl")
Dkey<-Sys.setenv("DATAVERSE_KEY" = "9de0f120-afca-4bb1-8f88-43ce0ff3a07d")
#Sys.setenv("DATAVERSE_KEY" = "9de0f120-afca-4bb1-8f88-43ce0ff3a07d")
Dserver<-Sys.setenv("DATAVERSE_SERVER" = "https://dataverse.scholarsportal.info/dataverse/MDL/")
#Sys.setenv("DATAVERSE_SERVER" = "https://dataverse.scholarsportal.info/dataverse/MDL/")
#simple text search
#str(dataverse_search("Don Valley Historical"), 1)
#more sophisticated 
#str(dataverse_search(author = "Marcel Fortin", title = "Don Valley"), 1)
#str(dataverse_search(title = "Don Valley Historical Mapping Project", type = "dataset"), 1)
#str(dataverse_search(author = "Conrad E. Heidenreich"), 1)
#searching for the DOI from the DOI url https://doi.org/10.5683/SP2/SBZVFY
#get_dataset("doi:10.5683/SP2/SBZVFY") #heidenreich
get_dataset("doi:10.5683/SP2/PONAP6") #Don Valley Historical Mapping Project - testing the API
#Dbody<-get_dataset("doi:10.5683/SP2/PONAP6")
metadat<-list(productionDate = "2009")
DVid<-"doi:10.5683/SP2/PONAP6"
update_dataset(dataset=DVid, 
               key = Dkey,
               server = Dserver,
               body = metadat)
