#Chiara Toselli
#July 25, 2015
#functions of gapminder

#Michelle will add text here as a test to try github

# functions equivalent to what we learned in high school math F(x) = ......

#identify variables
a <- 3
b <- 5

get_sum <- function(a, b){
  the_sum <- a + b
  return(the_sum)
}
#the return function will make the_sum pop up when you run this function. 

#can use semicolon instead of new line
get_sum <- function(a, b){
  the_sum <- a + b; return(the_sum)
}

#calculate_coefficient_of_variation, we will run this in the analysis.R file
cv <- function(x){
  the_cv <- sd(x) / mean (x)
  return(the_cv)
}