##vector arithmetics

a=c(1,3,5,7)
b=c(1,2,4,8)
a+b #addition of 2 
a-b
a*b
a/b
a>b
a<b
a==b      #  = means assigning value, == means equals to
a<=b
a>=b

5*a   #multiplying each value with 5



#recycling rule
u = c(10,20,30)
v = c(1,2,3,4,5,6,7,8,9)    #the shorter/ shortest one will be recycled /replicate no of times
v = c(1,2,3,4,5,6,7,8) #here it will show error bcz v is having only 8 data which is not multiple of 3. 3 is no of elements in shortest row
u + v



#vector index
s=c("aa", "bb", "cc", "dd", "ee")
s[3] #3 is the index no. in R , index starts from 1, no from 0. before comma, it will be row and after comma, it is column


#removing the value at that Position
s[-3]     #remove value on index 3 and print rest


#out-of-range index
s[10]   #for an index which is not present in dataset, gives output NA


#numeric index vector
s= c("aa", "bb", "cc", "dd", "ee")
s[c(2,3)]     #only print the mentioned index value
                                    
#duplicate
s[c(2,3,3)]
[1] "bb" "cc" "cc"


#out-of-order indexes
s[c(2,1,3)]


#range index
s[2:4]    #print values from index 2 to index 4.
s[2:4,-3]   #doubt as giving error
