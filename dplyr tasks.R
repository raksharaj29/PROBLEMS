library(tibble)
install.packages("dplyr")
library(dplyr)
car_data <- tibble::tribble(
  ~car_name,         ~mpg, ~hp,  ~wt, ~cyl, ~gear,
  "Toyota Corolla",   33.9,  65, 1.835,  4,    4,
  "Ford Mustang",     17.8, 175, 3.440,  8,    4,
  "Honda Civic",      30.5,  75, 2.150,  4,    5,
  "Chevrolet Impala", 14.7, 180, 4.100,  8,    3,
  "Mazda RX4",        21.0, 110, 2.620,  6,    4,
  "Dodge Challenger", 15.5, 230, 3.800,  8,    3,
  "Nissan Sentra",    32.2,  69, 1.870,  4,    5,
  "BMW 320i",         23.0, 102, 2.315,  4,    5,
  "Mercedes-Benz 280",18.1, 123, 3.440,  6,    4,
  "Porsche 911",      22.5, 190, 2.200,  6,    5,
  "Subaru Forester",  26.4, 140, 3.100,  4,    5,
  "Hyundai Elantra",  28.6, 132, 2.800,  4,    5,
  "Volkswagen Golf",  29.8,  90, 2.200,  4,    5,
  "Fiat 500",         36.1,  58, 1.700,  4,    4,
  "Lexus IS300",      20.3, 215, 3.530,  6,    5,
  "Tesla Model 3",    141.0, 283, 3.500,  0,    1,
  "Chevrolet Camaro", 16.0, 275, 3.900,  8,    6,
  "Mazda MX-5",       34.0, 155, 2.300,  4,    6,
  "Jeep Wrangler",    17.3, 285, 4.000,  6,    5,
  "Toyota Prius",     50.0, 121, 2.850,  4,    4
)
#rename
remaned_cardata<-car_data %>% rename(miles_per_gallon=mpg)
print(renamed_cardata)
#select
selected_cardata=car_data %>% select(car_name)
selected_cardata
#filter
filtered_cardata=car_data %>% filter(mpg>25)
filtered_cardata
#mutate
mutate_cardata=car_data %>% mutate(mtcars=mpg * 0.425)
mutate_cardata
#summarize
summarize_cardata=car_data %>% summarise(average=mean(mpg))
summarize_cardata
#district
distinct_cardata=car_data %>% distinct(cyl)
distinct_cardata
#groupby
group_sum=c
ar_data %>%
  group_by(cyl)%>%
  summarise(average=mean(hp))
group_sum
#drop
drop_cardata=car_data%>%drop_na(hp)
drop_cardata

summarize_cardataa=car_data %>% summarize(max(hp))
summarize_cardataa

#select mpg, hp, and wt from mtcars where mpg > 20
filter_and_Select=car_data%>%
  select(mpg,hp,wt)%>%
  filter(mpg>20)
filter_and_Select
#Create Multiple New Columns: Add power_to_weight (hp/wt) and mpg_kmpl (mpg * 0.425).
mutate_cardattaa=car_data%>%
  mutate(power_to_weight=hp/wt)
  mutate(mpg_kmpl=mpg * 0.425)
mutate_cardattaa
install.packages("lattice")
library(lattice)
library(datasets)
mtcars
x <- 1:10
y <- x^2
plot(x, y, type = "l", col = "red", lwd = 5, main = "Line Plot")

plot(x, y, col = "red", pch = 17, main = "Scatter Plot")

values <- c(5, 10, 15, 20)
barplot(values, col = "skyblue", main = "Bar Chart")


data <- rnorm(1000)  # Generate 1000 random normal values
hist(data, col = "purple", main = "Histogram")

help(dplyr) 


values <- c(20, 30, 50,100)
labels <- c("A", "B", "C","D")

pie(values, labels = labels, main = "Pie Chart", col = rainbow(23))


plot(x, y, type = "l", col = "blue", lwd = 2, main = "Basic Line Graph", xlab = "X Values", ylab = "Y Values")

boxplot(data, main = "Basic Box Plot", col = "black")


data <- rnorm(10)
data *100

