#variable assignment
# = or <- means assign
x=1
x
# function and c is combining values into a vector or list (num[1:3]in environment means one column and 3rows
c(1,2,3)
a=c(1,2,3)

#here c is  a function and we are assigining value in to b. 
c(4,5,6)
b<-c(4,5,6)

#doubt
c(1, 456546,534367,64589292,45689)
e<-c(1,2,3)
1+1

#to understand what is c function
help(c)
#
apropos("nova")
#type of data in r
#1)numeric
#2)integer
#3)complex
#4)logical
#5)character

#numeric
x - 10.5
x
[1] 10.5
#to check the class of x
class (x)
[1] "numeric"

k = 1
k
[1] 1
class(k)
[1] "numeric"

#to confirm wether it is integer or not
is.integer(k)    #is.integer() is used to chk the format of datatype


## we invoke the as.integer function
y = as.integer(3)  #as.integer is used to convert which format you want and we arec assigning it to y

y
[1] 3

class (y)
[1] "integer"

is.integer(y) #IS Y INTEGER?

as.integer(3.14) #3.14 is converted to integer so it gives output as 3
as.integer(-3,14)  #gives output -3

z=1+2i
z
[1] 1+2i
class(z)
[1] "complex" 



#logical values
#a logical value is often created via comparison
x=1; y=2  # semicolon(;) means line is end
z= x>y
z
[1] FALSE
class(z)
[1] "logical"

#standard logical operators
u = TRUE; v = FALSE
u & v      #u and v
[1] FALSE
u|v        #u or v
[1] TRUE
!u         #negation of u. means i dont want ans of u
[1] FALSE


x=as.character(3.14)    #character means anything should be in "" only
x
[1] "3.14"
class(x)
[1] "character"

#concatenation 
fname = "joe"; lname= "smith"
paste(fname, lname) #paste() is used to combine categorical columns
paste(fname, lname, sep ="") #sep is used to separate between categorical values, here we removed space between 1st name and last name
[1] "joe smith"


#substring()
substr("mary has a little lamb", start=3, stop=12)    #started at 3 and stopped at 12. also counts space as a character
[1] "ry has a l"


#substitute()
sub("little", "big", "mary has a little lamb.")   #substitutes "little" word and replaced with word "big"
[1] "mary has a big lamb."



