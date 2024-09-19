#Código para problema 1

car_data <- mtcars #define variable
car_data$qsec
sort(car_data$qsec) #ordena de -a+

qsec_intervals <- cut(car_data$qsec, breaks = 4) #cut in x intervals 
qsec_intervals

#frequency table
ni <- table(qsec_intervals)
fi <- ni/sum(ni) #relative frequencies
fi #print variable in console
pie(fi)#pie chart
Fi <- cumsum(fi)#cumulative sum
Ni <- cumsum(ni)
cbind(ni, fi, Ni, Fi)

##CENTRALIDAD de los datos
hist(car_data$qsec, breaks = 10) #make histogram with x-1 columns
mean(car_data$qsec) #media/mitjana

car_data$drat
sort(car_data$drat) #the number in the middle is the median/mediana
median(car_data$drat)#median/mediana
quantile(car_data$drat) #cuartil

quantile(car_data$mpg, 0.18) #cut in the desired percentage

##DISPERSIÓN de los datos
quantile(car_data$cyl, 0.75)
quantile(car_data$cyl, 0.25)
#dispersión alrededor de la mediana
quantile(car_data$cyl, 0.75)-quantile(car_data$cyl, 0.25) #rango intercuartil
IQR(car_data$cyl) #rango intercuartil
boxplot(car_data$cyl)
#dispersión alrededor de la media
var(car_data$cyl)#varianza muestral
sd(car_data$cyl)#desviación típica

