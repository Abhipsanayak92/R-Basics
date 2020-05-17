
#outlier treatment
d <- 1:20
d
library(scales)
d2 <- squish(d, round(quantile(d,c(.10,.90)))) #in quantile if you write %, it will become percentile
#squish is same as capping and flooring method
#squish is a function for replacement in which bothsides outliers are present, it camt be applicable if one side outlier is there
#in the example, value below 10% and above 90% will be replaced by 10% value and 90% value respectively
d2


#outlier replacement using boxplot and quantile strategy (whinzorising technique)
old<- mtcars
mtcars<- mtcars

summary(mtcars$hp)
boxplot(mtcars$hp)

upper<- 180+1.5*IQR(mtcars$hp) #upper whisker line formula = Q3+1.5*IQR
upper
lower<- 96.5-1.5*IQR(mtcars$hp) #lower whisker line formula = Q1 - 1.5*IQR
lower
#we dont have outliers in lower side

mtcars$hp[mtcars$hp > upper]<- upper #if any value in hp column is >upper, then that will be replaced by upper
summary(mtcars$hp)
boxplot(mtcars$hp)


mtcars$hp[mtcars$hp< lower] <-lower #if any value in hp column is <lower, then that will be replaced by lower
summary(mtcars$hp)


#capping and flooring by manual method >>>outlier treatment with quantile
a<-faithful
outputQuantile <- quantile(faithful$waiting,seq(0,1,by=0.05)); outputQuantile 
#seq is sequence. i need data by every 5% so o.o5 is written

cbind(outputQuantile)#converting data into column wise

qn=quantile(faithful$waiting, c(0.01,0.99), na.rm= TRUE)#at 1% and 99% what is the value

df= within(faithful, {waiting =ifelse(waiting < qn[1], qn[1], waiting) #if any value in waiting column <qn[1] i.e 45 then replace it with 45 else keep as it is
waiting = ifelse(waiting >qn[2], qn[2], waiting)}) #if any value in waiting column >qn[2] i.e 93 then replace it with 93

summary(faithful)
summary(df)
