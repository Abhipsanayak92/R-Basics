Age<-c(56,34,67,33, 25,28)

Weight<-c(78,67,56,44,56,89)
Height<-c(165, 171, 167, 167,166,181)


BMI_df<-data.frame(Age, Weight,Height)
BMI_df

#apply is used in data explore analysis(DEA)
#row wise sum up of data frame
apply(BMI_df, 1, sum) #1 stands for row in R

#column wise sum up of data frame
apply(BMI_df, 2, sum) # 2 stands for column in R

#columnwise mean of dataframe
apply(BMI_df, 2, mean)


#lapply function = answer will be given in terms of list format (row format)
lapply(BMI_df, function(BMI_df) BMI_df/2) #each and every row is divided by2


lapply(BMI_df, mean) #finding mean in list format

#sapply is used to find answer in column format
sapply(BMI_df, function(BMI_df) BMI_df/2)
sapply(BMI_df, mean)

str(mtcars$cyl)#str stands for structure (finding type of data eg int, num, char etc)

levels(as.factor(mtcars$cyl))

#tapply is used to compute certain values what is the behavior
tapply(mtcars$mpg,mtcars$cyl, mean) #we need to find the mean value of mpg for a certain cylinder value
