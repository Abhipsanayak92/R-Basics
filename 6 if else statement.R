

mtcars<-mtcars
mtcars$hpcat <-as.factor(ifelse(mtcars$hp > 70, c("older"), c("younger"))) #factor in R called categorcal variable

levels(mtcars$hpcat)
rm(mtcars) #remove mtcars from environment



mtcars<-mtcars
attach(mtcars)
mtcars$hpcat[hp>75] <- "Elder"
mtcars$hpcat[hp>60 & hp<=75] <-"Middle hpd"
mtcars$hpcat[hp<=60] <- "Young"

str(mtcars$hpcat)
mtcars$hpcat <- as.factor(mtcars$hpcat) #convert to categorical

str(mtcars)
levels(mtcars$hpcat)
rm(mtcars) #remove from environment
