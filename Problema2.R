#Código para problema 2
rm(list=ls()) #equivalent to clear all in matlab

car_data <- mtcars
car_data
hist(car_data$mpg, breaks = 10)
