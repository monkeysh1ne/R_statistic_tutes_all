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


install.packages("dplyr")
library(dplyr) # gives us access to pipe operator amongst other things

gapminder %>% 
        select(country, lifeExp) %>% 
        filter(country == "South Africa" |
                       country == "Ireland") %>% 
        group_by(country) %>% 
        summarise(Average_life = mean(lifeExp))
        