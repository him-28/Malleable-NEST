x<-read.table("del.txt",fill = TRUE , header = FALSE)
t<-subset(x,is.na(x$V2))
g<-data.frame(t)
write.table(g,"del1.txt")

