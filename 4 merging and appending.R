


#data.frame() is to combine two vectors to create a table
df1= data.frame(CustomerId = c(1:6), Product = c(rep("mobile",3), rep("Radio",3))) #c is for combining and rep is for replicate 3times
df2 = data.frame(CustomerId = c(2,4,6), State = c(rep("kar",2), rep("mum",1)))

names(df1) 
names(df2)

#inner join or merge
merge(df1,df2,by="CustomerId") #wherever there wll be a match, give output


#outer join
merge(x= df1, y = df2, by = "CustomerId", all = TRUE) #all = TRUE means even if there is no match the also give output

#left outer join
merge(x= df1, y = df2, by = "CustomerId", all.x = TRUE) #here we are fixing left table and applying right table on left table

#right outer join
merge(x= df1, y=df2, by = "CustomerId", all.y =TRUE) #here we are fixing right table and applying left table on right table


#merging
Product <- data.frame(loan_account_no = c(234, 235,236,237, 238), interest = c(11,22,33,44,55), data = 1:5)

demo<- data.frame(loan_account_no = c(234,235,236, 4,5), income = c(66,77,88,99,99), data = 1:5)

merge(Product, demo, by = "loan_account_no") 

#create vector obectives
city<- c("Tempa", "Seattle", "Hartford", "Denver")
state <- c("FL", "WA", "CT", "CO")
zipcode<- c(33602, 98104, 061061, 80294)


#combining 3 vecrors into one dataframe
addresses = data.frame(city,state,zipcode)

View(addresses)

#create another data frame using same columns
city =c("Lowry", "Charlotte")
state("CO","FL")
zipcode = c(80230, 33498)

new.addresses <-data.frame(city, state, zipcode)
print(new.addresses)

#rbibd is used to append rows
#rbind cobines or appends data from both data frames
#column name should be same to append , sequence not mandatorily to be same
all.addresses <-rbind(addresses, new.addresses)
print(all.addresses)
names(all.addresses)

#iris is inbuilt dataset
#renaming column
my_data <-iris
names(my_data)
names(my_data)[names(my_data)=="Sepal.Length"] <-"Abhipsa" #sepal length is relaced by Abhipsa
names(my_data)[names(my_data) =="Sepal.Width"]<- "Manoj" #
names(my_data)
names(iris)

#missing value
y<-c(1,2,3,NA) #NA is called missing value in R
is.na(y)

x<- c(1,2,NA,3)
mean(x)

#to remove missing values
mean(x, na.rm= TRUE) #rm stands for Remove

#to remove all missing value
newdata <- na.omit(x) # omit stands for deleting row from the entire dataset where missing values are present
newdata

#replacing missing value
x<- c(1,2,3,NA,6,7,8,NA,NA)
library(gtools) #vvi for interview
na.replace(x, 999)


Math<-c(88,95,85,NA,67,98,NA,67)
mean(Math)
median(Math)
Math[is.na(Math)]
Math[!is.na(Math)]

mean(Math, na.rm =TRUE)
mean(Math[!is.na(Math)]) #mean where there is no missing value
median(Math[!is.na(Math)])
Math[is.na(Math)] <- mean(Math[!is.na(Math)])
Math


