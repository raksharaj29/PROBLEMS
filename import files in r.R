data <- read.csv("C:/Users/TEQKAT001/Downloads/bike_sales_data.csv")
print(data)
View(data)

#Write csv
df <- data.frame(Name = c("logi", "sha", "raksha"),
                 Age = c(25, 30, 35),
                 Score = c(90, 85, 88),
                 Gender=c("f","M","f"))
# Write data to CSV
write.csv(df, "output.csv", row.names = FALSE)


install.packages("readxl")
library(readxl)
excel_data <- read_excel("C:/Users/TEQKAT001/Downloads/TASK 1 PAGE LAYOUT.xlsx", sheet = 1)
print(excel_data)
View(excel_data)
head(excel_data)

#excel wirte
install.packages("writexl")
library(writexl)
write_xlsx(df, "output.xlsx")

#web la irunthu

url <- "https://people.sc.fsu.edu/~jburkardt/data/csv/airtravel.csv"
web_data <- read.csv(url)
View(web_data)


#api la irunthu
install.packages("jsonlite")
library(jsonlite)

json_data <- fromJSON("https://api.github.com/users/hadley/orgs")
View(json_data)

#pdf la irunthu
install.packages("pdftools")
library(pdftools)
text <- pdf_text("C:/Users/TEQKAT001/Downloads/adv excel.pdf")
print(text)
print(text[1])

#image la irunthu
install.packages("jpeg")
library(jpeg)
img <- readJPEG("C:/Users/TEQKAT001/Downloads/WhatsApp Image 2025-03-05 at 13.15.03.jpeg")
install.packages("raster")
library(raster)
plot(as.raster(img))
writeJPEG(img, "write_img_output.jpg")
