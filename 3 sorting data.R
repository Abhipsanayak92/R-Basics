
data()   #to find howmany datasets available in R
mtcars<-mtcars  #assigning

names(mtcars)   #names() gives header(column name) name in entire dataset
attach(mtcars)  #attach() is used to fix datset on which we need to perform tasks. it is used when there are same columns (e.g age) in different datasets, so to avoid confusion from where task needs to be performed, we need to fix a dataset so that software will not be confused, so attach() is used
View(mtcars)    #View() V is capital. used to visualize my data
head(mtcars)    #default top 6 rows
head(mtcars,10) #top 10 rows
tail(mtcars)    #default bottom 6 rows
summary(mtcars) #shows behaviour of data in each and every column. also called univariant analysis (bcz works on one column) / exploratory data
boxplot(mtcars) # shows boxplot
boxplot(mtcars$hp)  #boxplot for specified column. syntax ->before $ dataset name, after $ column name
summary(mtcars$hp)  #summary of one specified column


#sort by mpg
#ascending order sorting
newdata <- mtcars[order(mpg),]   #before , (comma) row name and after ,(comma) column name. if comma is not there then by default it will be considered as column name

#sorting in 2 columns
newdata  <- mtcars[order(mpg,cyl),] #highest priority column will be written 1st then other columns

newdata  <- mtcars[order(mtcars$mpg,mtcars$cyl),] #if we will not fix any column using attach() then this will be the syntax

#descending sorting (- sign represents descending order)
newdata<- mtcars[order(mpg, -cyl),]

detach(mtcars)

#subsetting data

myvars<- c("mpg" , "cyl", "disp")

#dimension
dim(mtcars) #dimension

newdata1 <- mtcars[myvars]

newdata2<- mtcars[c(1,5:10)] #bcz there is no comma, so by default it will be considered as column. c is for combining


#delete one variale (NULL is used to delete only one variable)
newdata$mpg <- NULL #NULL is used to delete the variable. here mpg is getting deleted 


#excluding variables (- sign is used to delete)
newdata <-mtcars
newdata1 <- newdata[c(-3,-5)] #Null is used to delete only 1 column but - sign is used to delete multiple columns


#subset function (vvi for interview)
newdata2 <- subset(mtcars, mpg >= 20 & wt < 10, select = c(gear, qsec)) #& is logical AND

















