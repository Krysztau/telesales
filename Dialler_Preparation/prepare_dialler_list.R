## get current working dir to return there after script is executed
WD <- getwd()
setwd("/media/k/Data/Git/telesales-stats/")

## load and prepare data files
data1 <- read.table("data1.txt", sep=",", quote="", skip=1)
data2 <- read.table("data2.txt", sep=",", quote="", skip=1)
data <- rbind(data1, data2)
data [,15] <- data [,18]
class (data [,17]) <- "character"
data [,17] <- paste("0", data [,17], sep="")
names (data) <- c("ARPU","TENURE","USAGE","MOST_CALLED_DEST","TITLE","FIRST_NAME","LAST_NAME","ADDRESS1","ADDRESS2","ADDRESS3","TOWN","COUNTY","POSTCODE","COUNTRY","MSISDN_ID","MSISDN","PHONE1")

## divide dialling list by MOST_CALLED_DEST 
top_destinations <- c("Dest1", "Dest7", "Dest9", "Dest10")

## list of customers who may be more interested in the product
top_data <- data[data$MOST_CALLED_DEST %in% top_destinations,]
write.table (top_data, "top_data.txt", quote=FALSE, sep=",", na="", row.names=FALSE)

## list of other customers
other_data <- data [!data$MOST_CALLED_DEST %in% top_destinations,]
write.table (other_data, "other_data.txt", quote=FALSE, sep=",", na="", row.names=FALSE)


## Set working directory back to the initial value
setwd(WD)