install.packages("gapminder")
library(gapminder)

data("gapminder")


summary(gapminder)
x <- mean(gapminder$gdpPercap)
x


attach(gapminder) # to stop having to type dataframe name :)
median(pop)

hist(lifeExp)
hist(log(pop))
boxplot(lifeExp ~ continent, xlab="continent", ylab="age")
plot(lifeExp ~ log(gdpPercap))     
