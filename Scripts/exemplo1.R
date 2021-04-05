#### Exercicios disciplina ELT - 2021.1 ####


#Installing packages
install.packages(c("psych", "stargazer", "dplyr", "ggplot2", "ggpubr"))

# Loading packages
library("psych")
library("stargazer")
library("dplyr")
library("ggplot2")
library("ggpubr")

# summary iris dataset
summary(iris)

# plot iris dataset
plot(iris)

# structure iris dataset
str(iris)

# creating vector
vetor <- c(1,2,4)

# running regression model to generate complex vector
reg_iris <- lm(iris$Sepal.Length ~ iris$Species)
str(reg_iris) #analyzing vector structure 