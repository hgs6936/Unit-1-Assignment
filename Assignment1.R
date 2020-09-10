#1
print("Hannah Saxena.R") #name and operating system
# list of R packages
library(ggplot2)
#list of datafiles
paddles.anova<- read.csv(file = "C:/Users/hgs/Documents/BioStats/ANOVA paddles summeer 2020.csv", header = TRUE)

#2
SetA<-rnorm(5000)# random dataset called SetA in standard distribution
mean(SetA) #mean of SetA
sd(SetA) #standard dev of SetA
ggplot(Set, aes(x=SetA)) + geom_histogram(binwidth=1) #histogram

#density plot overlay
my_density<-ggplot(Set, aes(x=SetA)) + geom_histogram(aes(y=..density..), binwidth = 1) + geom_density(color="green")
print(my_density)

#fitted normal curve
normal_fitted_curve <-ggplot(Set, aes(x=SetA)) + geom_histogram(aes(y=..density..), binwidth = 1) + stat_function(fun=dnorm, args = list(mean = mean(SetA), sd = sd(SetA)), color = "blue")
print(normal_fitted_curve)

#3 using the sink function
sink("desc.txt")
mean(SetA) #mean of SetAsd(SetA) #standard dev of SetA
sd(SetA) #standard dev of SetA
sink()
#save plots
dev.copy(pdf,'histo.pdf')
dev.off()

#4 One Way ANOVA
paddles.anova<- read.csv("C:/Users/hgs/Documents/BioStats/ANOVA paddles summeer 2020.csv", header = TRUE)
print("Ho:the means between the groups are identical")
print("Ha:the mean of at least one group is diferent")
