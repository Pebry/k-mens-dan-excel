datamiskin.features=datamiskin
datamiskin.features$Wilayah <-NULL
View(datamiskin.features)
result <- kmeans(datamiskin.features, 3)
result
result$size
result$cluster
table(datamiskin$Wilayah, result$cluster)
plot(datamiskin[c("Tahun")], col = result$cluster)
plot(datamiskin[c("Tahun")], col = datamiskin$Tahun)
