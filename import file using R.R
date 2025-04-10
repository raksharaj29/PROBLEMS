name=readline("enter input")

# Read a CSV file from your computer
data <- read.csv("C:/Users/TEQKAT001/Downloads/bike_sales_data.csv")
# Display the first few rows
head(data)
print(data)

# Create sample data
df <- data.frame(Name = c("shafic", "DrStrange", "Xmen"),
                 Age = c(25, 30, 35),
                 Score = c(90, 85, 88))

# Write data to CSV
write.csv(df, "output.csv", row.names = FALSE)


nstall.packages("readxl")
library(readxl)
data <- read_excel("C:/Users/TEQKAT001/Downloads/dashboard.xlsx", sheet = 1)
print(data)      # Displays all rows in the console
View(data)       # Opens the data in a spreadsheet-like viewer (RStudio)

head(data)   # Show first few rows
tail(data)   # Show last few rows
dim(data)    # Get dimensions (rows & columns)
str(data)    # Get structure of the data


install.packages("jsonlite")
library(jsonlite)  
json_data <- fromJSON("https://api.github.com/users/hadley/orgs")
tail(json_data)
dim(json_data)
str(json_data)
View(json_data)
