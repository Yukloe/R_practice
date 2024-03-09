install.packages("TeachingDemos")
library(TeachingDemos)

income <- c(125,135,145,130,120,145,125,130,150,145)

#To get the interval of mean with a confidence level of 95% for mew. Page 3
print(t.test(income, conf.level = 0.95))
#Prop.test is to estimate p, Z.test is like t.test if you know the standard deviation

#If p-value is smaller than alpha, then reject the hypothesis

#Example:
#The speed of n=9 different cars on a certain point of a rural road (normally distributed) was:
 # 69,60,80,85,68,74,60,86,92. Can we admit that the average speed in this point is 70? Use
#the standard significance level 𝛼 = 0.05.
# Either 70 or not. So two-sided test

speed = c(69,60,80,85,68,74,60,86,92)
mean(speed)
t.test(speed, mu=70, alternative = "two.sided") #If not two-sided, we must write either greater or less
#We get p-value = 0.2406 which is higher than 𝛼 = 0.05. So we can validate our hypothesis

#: Is the average speed in this point less than 70?
t.test(speed, mu=70, alternative = "less")
#0.8797, We mustn't reject the hypothesis either

#Is the average speed in this point more than 70?
t.test(speed, mu=70, alternative = "greater")
#0.1203, We mustn't reject the hypothesis either



#A certain production process typically produces 5% of
#defective units. You want to check whether this process
#works as usual or not. For this aim you verify 20 randomly
#chosen units, out of which two are defective. With a
#significance level of α=0.05, what can you conclude?
prop.test(2, 20, p=0.05, alternative = "two.sided")
#We do not reject the hypothesis, the process is going as it should

#What if the sample size was 200, and 20 of them were defective?
prop.test(20, 200, p=0.05, alternative = "two.sided")
#p-value is lower than alpha. So we can conclude it's not going as it should

#What if the question was “p>0.05”?
prop.test(2, 20, p=0.05, alternative = "greater")
#P-value is greater so we can consider the hypothesis that we've more than 5%of defective units



#Due to the crisis, you want to check whether or not there has been an increase 
#in the bankruptcy risk in the technological sector 
#(number of companies in risk of bankruptcy divided by the total number of technological companies),
#which usually is less or equal to 0.02. For this aim, 200 randomly chosen
#companies have been analysed, out of which 6 were in risk of bankruptcy. 
#With a significance level of 5%, what can you conclude?
prop.test(6, 200, p=0.02, alternative = "greater")
#P-value is highter, so we can't exclude the possibility that there is an increase in bankruptcy risk



#In order to compare the effectiveness in public institutions of two
#countries, there is data available about the needed extra hours in 9
#different offices in each country along one month. In country A: 200, 230,
#205, 185, 190, 300, 250, 245, 208. In country B: 190, 220, 200, 180, 190,
#260, 240, 241, 200. Assuming that the number of extra hours follow a
#normal distribution with equal variance in both countries, and taking
#significance level equal to 0.05, what can you conclude about the
#efficiency of both countries' institutions?

country_A = c(200, 230, 205, 185, 190, 300, 250, 245, 208)
country_B = c(190, 220, 200, 180, 190, 260, 240, 241, 200)
var.test(country_A, country_B)
t.test(country_A, country_B, var.equal = TRUE) 
#var.equal = FALSE si var.test < 0.05 and add alternative = "greater" if wanting to see if more


BEFORE = c(200, 230, 205, 185, 190, 300, 250, 245, 208)
AFTER = c(190, 220, 200, 180, 190, 260, 240, 241, 200)
t.test(BEFORE, AFTER, paired = TRUE)
# =
t.test(BEFORE-AFTER)


# LAB SESSION

dataExpense <- read.csv2("Data_Expenses.csv", header=T)

t.test(dataE, conf.level = 0.95)

t.test(dataE, mu=300, alternative = "greater")



dataE <- dataExpense$ExpensesMay
dataE2 <- dataExpense$ExpensesJune
var.test(dataE, dataE2)
t.test(dataE, dataE2, paired = TRUE, alternative = "two.sided")

t.test(dataE-dataE2)
