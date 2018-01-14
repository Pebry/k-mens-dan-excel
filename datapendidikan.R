library(readxl)
datapendidikan <- read_excel("F:/datawarehouse/Pendidikan1.xlsx")
View(datapendidikan)
install.packages("cluster")
install.packages("xlsx")
install.packages("fpc")
install.packages("ggplot2")
library(ggplot2)
datapendidikan.features=datapendidikan
datapendidikan.features$Kabupaten <-NULL
view(datapendidikan.features)
result<- kmeans(datapendidikan.features,  3)
result
result$size
result$cluster
table(datapendidikan$Kabupaten, result$cluster)
plot(datapendidikan[c("Sekolah","Murid")], col=result$cluster)
plot(datapendidikan[c("Sekolah","Guru")], col=result$cluster)
plot(datapendidikan[c("Sekolah","Guru","Murid")], col=result$cluster)
