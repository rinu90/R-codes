print('Hello')

# to output text
"Hello world"
'Hello world, again!'

#to output integer
5

#alt+enter and ctrl+enter 
5 10 20 # will give error, cannot enter multiple value seperated by space


#variable
name <- "Nuri" # assignment operator is <- in R
name1 = "Rahul"
age =25
age

text = "Excellent"
paste("This food is",text) #concatenate

#rules for variable names
#dont start with numbers or _

#data types in R
#Numeric/Float, - decimal, whole, +ve, -ve

x=10
class(x) #to find the class of x, or the datatype of x

#integer - whole +ve -ve L
y = 1000L
class(y)

#logica/boolean
z = TRUE
class(z)
z=T #or can be written as

#comparison 
3>5
5==5
4>2
1!=4

#Arithmetic operator
x=20
y=3
x+y
x*y
x/y #output will be decimal
x%/%y #output without decimal value, the quotient
x%%y #modulus, gives remainder 
x^y #x power of y

2* pi *6378

??constants #check the 4th box for different constants available

#built in math function
max(23, 45, 68)
min(34, 5, 6)
sqrt(25)
abs(-4.5)


#data structures : Vectors, Dataframes
#to store multiple values in a variable, we need to create a vector
#Homogeneous vectors - vector of strings, vector of integers
fruits<- c("apple", "banana", "pear") # c is the combine function
class(fruits)

num<- c(1,2,3) #vector of integers
class(num)

#heterogeneous vector
mix<- c(18,TRUE, "Apple", 5L)
class(mix) #will be stored as character, as char is given priority

x=c(2,5,8,4)
y=c(1,9,9,9)
x+y #element wise addition
x*1.5


#sequence
1:10 # : is the sequence
40:45
seq(1,50,5) #start value, end value and step
seq(1,50, by=3)#same
seq(1,10)
seq(50,3,-2)
n1 = 1.5:6.3
n1

#repetition
rep(45,7)
rep("abc", 5)

#random sample
sample(1:50,8) #out of 1 to 5 select 8 random numbers
sample(1:20,100,replace=TRUE)
sample(c("apple","pear","orange"),10, replace=T)

#indexing/ Accessing vector elements
x=c(1,2,3,4)
x[1]
x[-2] #exclude 2nd element
x[c(-2)]
x[1]=0
x
x[-1]=2 #0 2 2 2
x[c(1,3)]

y=c(1,9,9,9)
y<5
y[y<5]=7
y
y[y>7]
names = c("Pooja", "Rahul", "Amith")
"Pooja" %in% names#to scan or iterate through the vector

#slicing
marks = c(20,23,45,60)
marks[3:5]

price=c(299, 449,509,4000,389,345,980,272)
price[2:7]
price[price>600]
sort(price)
sort(price, descending=T)#throws error, use help
help(sort)
sort(price, decreasing=T)


#paste
length(marks)
help(paste)
nth=paste(1:12, c('st','nd','rd','th',rep('th',8)))

month.name
month.abb

paste(month.name, "is the", nth, "month of the year")


#basic functions on vectors
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price) #mode here gives us the class,ie, the storage mode of R

#data frames
#slicing DF
a=c(22, 34, 56, 78, 99) #first column
b=c("p", "q", "r", "s", "t") #second column
data.frame(a,b)
df=data.frame(a,b)

df1=data.frame(
  Training=c("Strength", "Stamina", "other"), 
  Pulse =c(100, 150,120), 
  Duration =c(60, 30, 45)
)
df1
df1[,1]
df1[2,]
df1$Training

food=data.frame(
  name=c('a', 'b', 'c', 'd', 'e', 'f'),
  type =c("veg","veg","non-veg","veg","non-veg","veg"),
  taste=c('spicy','sweet','spicy','sweet','spicy','sweet'),
  price=c(100, 200, 340, 230, 342, 203)
  )
food
food[food$type=="veg",]
food[food$type=="veg",c(1,4)]
food[food$type=="veg",c("name","price")]
food[food$taste=="spicy" & food$price<300,]
food[food$taste=="spicy" | food$price<300,]

#built in dataset
Orange
mtcars

dim(mtcars)
nrow(mtcars)
ncol(mtcars)
str(mtcars)
summary(mtcars)
help(mtcars)
mtcars$cyl
table(mtcars$cyl)#gives frequency of values

USArrests
View(USArrests)
head(USArrests)
tail(USArrests)
head(USArrests,8)

data() #all datasets available in R

