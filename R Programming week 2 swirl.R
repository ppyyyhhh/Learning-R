#R Programming course week 2
#swirl lessons 1: Logic

require(swirl())
swirl()
Happy
1
8
require(swirl)
swirl()
Happy
1

TRUE == TRUE
FALSE == FALSE
(FALSE == TRUE) == FALSE
6== 7
6< 7
10 <= 10
3
4
5 != 7
5 == 7
!(5==7)
24
4
2
4
1
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE,FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5> 8 || 6 != 8 && 4 >3.9
4
isTRUE(6>4)
5
identical('twins','twins')
4
xor(5 ==6, !FALSE)
ints
ints>5
all(ints>0)
2

require(swirl)
swirl()
Happy
1
9
Sys.Date()
mean(2,4,5)
mean(c(2,4,5))

boring_function <- function(x) {
  x
}
submit()
boring_function('My first function!')
boring_function


my_mean <- function(my_vector) {
  sum(my_vector)/length(my_vector)
}
submit()

my_mean(c(4,5,10))

remainder <- function(num, divisor=2) {
  num %% divisor
}
submit()

remainder(5)
remainder(11,5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)
args(remainder)

evaluate <- function(func, dat){
  func(dat)
}
submit()

evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]}, c(8,4,0))
evaluate(function(x){x[length(x)]}, c(8,4,0))
?paste
paste("Programming", "is", "fun!")

telegram <- function(...){
  paste("START",...,"STOP")
}
submit()

telegram("best wishes for China")

mad_libs <- function(...){
  # Do your argument unpacking here!
  args <- list(...)
  place <- args[1]
  adjective <- args[2]
  noun <- args[3]
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
submit()

mad_libs("Tianjin", "nice", "dog")

"%p%" <- function(left, right){ # Remember to add arguments!
  paste(left, right)
}
submit()

"%p%"("%p%"("I","love"),"R!")
1
hpy0531@gmail.com

# swirl lesson 3 Dates and Times
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2 <- as.Date("1969-01-01")
unclass(d2)
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2)
str(unclass(t2))
t2$min
weekdays(d1)
months(t1)
quarters(t2)
t3 <- strptime("October 17, 1986 08:24", format="%Y-%m-%d %H:%M:%S")
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')
2
1
0

#Quiz week 2
cube <- function(x, n) {
  x^3
}
cube(3)
f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y


#Programming assignment
pollutantmean <- function(directory, pollutant, id = 1:332){
  data_fa <- read.csv(file = "/Users/hupiyang/Coursera/R in Public Health_JHU/Dataset/specdata
}