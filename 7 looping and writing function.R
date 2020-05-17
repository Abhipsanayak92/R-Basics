

x=7
if(x<10){
  x<-x+1
  cat("decrease")
}else{
  x<-x-1
cat("increase")
}



for(i in(1:10)-3){
  print(c(i,i*i))
}

car<-c("hyundai", "tata", "honda")

for(j in car) {
  print(paste(j, "-ALLvariates")) #paste is for concatenation
}


i<- 2.999
while(i<=4.999){
  i<-i+0.999
    print(c(i,i-2, i*i))}


a<-1
repeat{
  print(a)
  a<-a+1
  if(a>3)
    break
}

x<- 1:10
for(i in x){
  if(i==5){
    break
  }
  print(i)
}




x<-1:4
for(i in x){
  if(i==2){
    next
  }
  print(i)
}


addingpercent<-function(x){percent<-round(x*100,digits=2)
output<- paste(percent, "%", sep="")
return(output)
}
x<-c(0.678,2.99999,0.7678,0.3343)
addingpercent(x)


