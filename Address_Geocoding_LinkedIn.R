library(tidygeocoder)
library(tidyverse)
#========================================================
# reading source sheet to dataframe
location_file <- read.csv("C:\\......csv") #write full path with file name

#select the column that contains address. Not needed if the source sheet has only one column
location_list<-data.frame(location_file$Location)

#create destination data frame for storing the geocoding output
coordinates<-data.frame("address","latitude","Lonngitude")

#Loop for geocoding every single location
for (i in 1:nrow(addr_list)) {
  coordinates_df[nrow(coordinates_df)+1,]<-geo_arcgis(location_list[i, ]) 
}

#writing the output dataframe to an csv file
write.csv(coordinates_df,file = "C:\\.....csv") #write full path with file name
