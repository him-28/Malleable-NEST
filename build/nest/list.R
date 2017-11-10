setwd("/home/bsc15/bsc15982/nest-simulator/change/nest")
l<-list.files(pattern = "datadog.txt$", recursive = TRUE)
for (file in l[order(nchar(l), l)] ){
       
  # if the merged dataset doesn't exist, create it
  if (!exists("dataset")){
    dataset <- read.table(file)
  }
   
  # if the merged dataset does exist, append to it
 else {
    temp_dataset <-read.table(file)
    dataset<-rbind(dataset, temp_dataset)
    rm(temp_dataset)
  }
 
}
write.table(dataset,"dataset.txt")
