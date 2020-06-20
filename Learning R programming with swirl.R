#CLass1 Building the basic block of R

5+7
x<-5+7
x

y <- x - 3      #Now, store the result of x - 3 in a new variable called y.

y      # What is the value of y? Type y to find out.

z <- c(1.1, 9, 3.14)    #To create a vector containing the numbers 1.1, 9, and 3.14, | type c(1.1, 9, 3.14). Try it now and store the result in a variable called z.

?c  # Anytime you have questions about a particular function, you can access R's built-in help files via the `?` command. For example, if you want more information on the c() function,

z   #Type z to view its contents. Notice that there are no commas separating the values in the output.

c(z, 555, z)    #You can combine vectors to make a new vector. Create a new vector that contains z, 555, then z again in that order. Don't assign this vector to a new variable, so that we can just see the result immediately.

z * 2 + 1000     #Numeric vectors can be used in arithmetic expressions. Type the following to see what happens: z * 2 + 100.
# First, R multiplied each of the three elements in z by 2. Then it added 100 to each element to get the result you see above.
#R is 'recycling' the 2 to make a vector of 2s and the 100 to make a vector of 100s. In other words, when you ask R to compute z * 2 + 100, what it really computes is this: z * c(2, 2, 2) + c(100, 100, 100).
my_sqrt <- sqrt(z-1) #Take the square root of z - 1 and assign it to a new variable called my_sqrt.
#  a vector of length 3

print(my_sqrt)

my_sqrt     #Just type my_sqrt and press Enter to view its value.

my_div <- z / my_sqrt     #create a new variable called my_div that gets the value of z divided by my_sqrt.

print(my_div)
info()
my_div
c(1,2,3,4) + c(0,10) # If the length of the shorter vector does not divide evenly into the length of the longer vector, R will still apply the 'recycling' method, but will throw a warning to let you  know something fishy might be going on.

c(1, 2, 3, 4) + c(0, 10, 100)
# If the length of the shorter vector does not divide evenly into the length of the longer vector, R will still apply the 'recycling' method, but will throw a warning to let you know something fishy might be going on.

mTJwU7QMbhHPwWht
info()
swirl()




 # CLass 2Workspace and Files
getwd() #Determine which directory your R session is using as its current working directory using
ls()
x<- 9 
ls() #Now take a look at objects that are in your workspace using ls()
list.files()#List all the files in your working directory using list.files() or dir()
dir()
?list.files #list.files to see the help page.
args()
args(list.files)  #Use the args() function to determine the arguments to list.files()
old.dir <- getwd() #Type old.dir <- getwd() to assign the value of the current working directory to a variable called "old.dir".
dir.create("testdir") # Use dir.create() to create a directory in the current working directory called  "testdir".
setwd("testdir") #Set your working directory to "testdir" with the setwd() command.
file.create("mytest.R") #Create a file in your working directory called "mytest.R" using the file.create() function.
list.files() #list.files() shows that the directory only contains mytest.R
file.exists("mytest.R")  #Check to see if "mytest.R" exists in the working directory using the file.exists()

file.info("mytest.R")  #Access information about the file "mytest.R" by using file.info().
file.info("mytest.R")$mode  #You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab specific items.
file.rename(from = "mytest.R", to = "mytest2.R") #Change the name of the file "mytest.R" to "mytest2.R" by using file.rename().

file.copy(from = "mytest2.R", to = "mytest3.R")  #Make a copy of "mytest2.R" called "mytest3.R" using file.copy()

file.path("mytest3.R")  #Provide the relative path to the file "mytest3.R" by using file.path().

file.path("folder1", "folder2")   #You can use file.path to construct file and directory paths that are independent of the operating system your R code is running on. Pass 'folder1' and 'folder2' as arguments tofile.path to make a platform-independent pathname.

?dir.create
dir.create(file.path("testdir2","testdir3"), recursive = TRUE)

setwd(old.dir) # Go back to your original working directory using setwd().


swirl()
Happy
1
1
3 #  In this lesson, you'll learn how to create sequences of numbers in R.

1:20 # In this lesson, you'll learn how to create sequences of numbers in R.
pi:10 #The result is a vector of real numbers starting with pi (3.142...) and increasing in  increments of 1. The upper limit of 10 is never reached, since the next number in our  sequence would be greater than 10.
15:1
?':'
seq(1,20)
seq(0,10, by=0.5)
my_seq <- seq(5,10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with=my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0,1,2), each = 10)

4 #The simplest and most common data structure in R is the vector.
num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect <1
2
tf
num_vect >= 6

my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ") # Use paste(my_char, collapse = " ") to collapse the words in the vector so they almost form a sentence. There should be a single space between the double quotes in the `collapse` argument so that there are single spaces separating the words.

my_name <- c(my_char, "Happy")
my_name
paste(my_name, collapse = " ")
paste("Hello","world!", sep = " ") # Enter paste("Hello", "world!", sep = " ") to join the two words "Hello" and "world", separated by a single space. There should be a single space between the double quotes in the `sep` argument to the paste() function.

paste(c(1:3), c("X", "Y", "Z"), sep = "")
paste(LETTERS, 1:4, sep="-")
1

#Class of missing Values
x <-c(44, NA,5, NA)
x*3
y<- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y,z),100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na) #The trick is to recognize that underneath the surface, R represents TRUE as the number 1 and FALSE as the number 0. Therefore, if we take the sum of a bunch of TRUEs and FALSEs,  we get the total number of TRUEs.
my_data
0/0
Inf - Inf
2


# 6 In this lesson, we'll see how to extract elements from a vector based on some conditions  that we specify.

x
x[1:10]
is.na(x)
4
1
x[is.na(x)]
y<- x[!is.na(x)]
y

y[y>0]
x[x>0]
x[!is.na(x) & x>0]
x[c(3,5,7)]
x[3000]
x[c(-2,-10)]
x[-c(2,10)]
vect<- c(foo=11, bar=2, norf= NA)
vect
names(vect)
vect2 <- c(11,2,NA)
names(vect2) <- c("foo","bar","norf")
identical(vect, vect2)
2
vect["bar"]
vect[c("foo","bar")]
2



#7 matrices and data frame

my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4, 5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5)
identical(my_matrix, my_matrix2)
patients <- c("Bill","Gina","Kelly","Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)
cnames <- c("patient","age","weight","bp","rating","test")
colnames(my_data) <- cnames
my_data
1


#week one quiz answer.

getwd()
my_hw <- read.csv(file = "/Users/hupiyang/GitHub/testing/hw1_data.csv", header = TRUE)
Ozone <- c(data_fa[,"Ozone"])
class(Ozone)
is.na(Ozone)
sum(is.na(Ozone))
Ozone[47]
mean(Ozone)
Ozone1 <- Ozone[!is.na(Ozone)]
class(Ozone1)
mean(Ozone1)
data_fa <-data.frame(my_hw)
dim(data_fa)
colnames(data_fa)
length(data_fa)
Temp <- c(data_fa[,"Temp"])
new <- subset(data_fa, Ozone >31 & Temp >90, select = c(Ozone, Solar.R, Temp))
new
class(new)
Solar1 <- c(new[,"Solar.R"])
mean(Solar1)
mean(c(subset(data_fa, Month == 6, select = c(Month, Temp))[,"Temp"]))
data_fa1 <- subset(data_fa, is.na(Ozone)==FALSE,select = c(Month,Ozone))

max(c(subset(data_fa1, Month == 5, select = c(Ozone))[,"Ozone"]))
