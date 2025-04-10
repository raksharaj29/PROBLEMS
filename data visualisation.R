####data visualisation

#data
#mappping(aesthetic)
#geometric reprentation
#facet
#lables  and anotaions
#theme
#install.packages("tidyverse")
#library(tidyverse)
##ggplot(data=BOD,mapping=aes(x=Time,y=demand))
#df=read.csv("C:/Users/TEQKAT001/Downloads/airtravel.csv")
#plot(df)
#head(df)
#ggplot2
install.packages("ggplot2")
library(ggplot2)
#ggplot(df,aes(Month,X1958))+
  #geom_point()+
  #geom_smooth(method="lm")

set.seed(123)  # For reproducibility
my_data <- data.frame(
  ID = 1:1000,  # Unique IDs
  Age = sample(18:80, 1000, replace = TRUE),  # Random ages
  Income = rnorm(1000, mean = 50000, sd = 10000),  # Normally distributed income
  Category = sample(c("A", "B", "C", "D"), 1000, replace = TRUE)  # Random categories
)

head(my_data)  # View first few rows
dim(my_data)   # Check dataset size
ggplot(my_data, aes(x = Age, y = Income)) +
  geom_point(color = "red", alpha = 0.5) +  
  theme_minimal() +
  ggtitle("Scatter Plot of Age vs Income")

