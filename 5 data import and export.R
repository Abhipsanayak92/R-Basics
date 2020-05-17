#data importing
data1<- read.csv(file.choose()) #1st method

#2nd method: environment>imprt dataset> text(base)

data2<- read.csv(file="C:/Users/user/Desktop/PUNE UNIVERSITY BANK.csv", header =TRUE) #3rdmethod


#data export into csv
data<-faithful
write.csv(data, file="C:/Users/user/Desktop/R DOCS/imarticus.csv") 


#practising import export
data2<- read.csv(file="C:/Users/user/Desktop/abc.csv", header =TRUE) #3rd method practising

#syntax for data import 3rd method>>>

read.formatname(file="pathname/name of the file.formatextension",header=TRUE) 


#syntax for data export

data2<-read.formatname(file="path/where you want to save or export/which file to export.format extension")
write.csv(data, file="C:/Users/user/Desktop/kotak docs/abc1.csv") #exporting practising
