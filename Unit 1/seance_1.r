sport <- c(9,6,5,7)
lbls <- c("Rugby", "Football", "Basketball", "Other")

pie(sport, labels = lbls, main="Pie chart of favourite Sports")

barplot(sport, names.arg = lbls, main="Bar Chart of favourite Sports",
        col = c("red", "blue", "orange", "pink"))

data <- read.csv2("Unit1_Piechart.csv", header=T)
sport_vector <- data$Favourite_Sport
sport_vector

frenquency_vector <- data$frenquency_vector
frenquency_vector

data_heights <- read.csv("Unit1_Heights.csv", header = T)
data_heights

Heights <- data_heights[ , 1]
Heights

mean(Heights)
median(Heights)

hist(Heights, breaks = c(1.6, 1.7, 1.8, 1.9), col ="blue",
     main = "Histo in R", xlab = "Height", ylab = "Frequency")

quantile(Heights, 0.35)

range_height <- max(Heights)-min(Heights)
range_height

range(Heights)

IQR(Heights)

quantile(Heights)

sd(Heights)

var(Heights)

CV = function(data_vector){
  (sd(data_vector)/mean(data_vector))*100
}

CV(Heights)

install.packages("moments")
library(moments)
skewness(Heights)
kurtosis(Heights)

boxplot(Heights, horizontal = TRUE, main = "Box-whisker plot",
        xlab = "Heights", ylab = "Values")

abline(v=mean(Heights), col="red")

dataExp = read.csv2("Data_Expenses.csv", header = T)
expenses_vect <- data$ExpensesJune



dataExpense <- read.csv2("Data_Expenses.csv", header=T)

dataE <- dataExpense$ExpensesJune

#print(dataE)

print(mean(dataE))
print(median(dataE))
print(quantile(dataE))


print(sd(dataE))
print(var(dataE))

print(quantile(dataE, 0.35))
print(range(dataE))
print(IQR(dataE))

boxplot(dataE, horizontal=TRUE, xlab = "DataE", ylab = "Values")
abline(v=mean(dataE), col="red")

AC(dataE)

print(skewness(dataE))



