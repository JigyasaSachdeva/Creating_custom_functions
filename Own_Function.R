#Apply Function:
#apply(data, margin, function)
#data: dataframs with column and rows: function applied on either
#Margin = 1: Columns, Margin = 2: Rows

#Lapply
#lapply(data, function)
#Returns a list (list-apply): hence jhave to be unlisted
#Does not require columns/rows margin



#Own Functions:

#Format: f_name  = function(arg1, arg2, arg3..) 
#                   { statements
#                      return(object)}


# Average function
x = c(1,4,2,3,4,4,99)
my_avg <- function (x)
{
  a = sum (x)/ length(x)
  return(a)
}
#Test Case:
my_avg(x)
#16.71429
my_avg(y <- seq(1:5))
#3


#Sum of squares
sum_squares = function(a,b)
{
  a^2 + b^2
}
a <- c(1,2,3,4,7,8,0)
b <- seq(1:7)
#Test case:
sum_squares(a,b)
# 2   8  18  32  74 100  49
sum_squares(2,3)
sum_squares(c(2,3), c(1,5))


#Evaluating Z- Score
z_score = function (x)
{
  return((x-mean(x))/sd(x))
}

#For 1 variable
x1 <- iris$Sepal.Length
z1 <- z_score(x1)

#For entire table
num <- unlist(lapply(iris, is.numeric))
num.data <- iris[,num]
num.data_z <- apply(num.data, 2, z_score)







