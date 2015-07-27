#Chiara Toselli
#July 25, 2015
#analysis of gapminder

#LOAD the packages FIRST 
library(ggplot2)
library(dplyr)
library(tidyr)

#load the data --> you place the type of data here i.e., csv file
gapminder <- read.csv("gapminder.csv")

## if you want to load data that you made in R, (ie, if you made functions)
source("functions.R") #then in your script, you type in the function you just created. 
#In this case, we created cv, which will calculate the coefficient of variation). This will cause the function to pop up 
cv

#let's try to run our function (cv) with gapminder data. 
gapminder <- read.csv("gapminder.csv")

gapminder %>%
  gather("response", "value", lifeExp, pop, gdpPercap) %>%
  group_by(continent, country, response) %>%
  summarize(CV = cv(value))


gapminder_cvs <- gapminder %>%
  gather("response", "value", lifeExp, pop, gdpPercap) %>%
  group_by(continent, country, response) %>%
  summarize(CV = cv(value))


## draw a plot (NOTE: the CV in the following line is used because of what was written previously)
ggplot(gapminder_cvs, aes(x = continent, y = CV, color = continent)) + 
  geom_boxplot() +
  facet_wrap(~response)