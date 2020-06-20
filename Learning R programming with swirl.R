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




