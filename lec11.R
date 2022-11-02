library(tidyverse)

?midwest
View(midwest)
dim(midwest)

#looks at county
midwest$county

#displays PID, state, country and area in a table
states_and_countries <- midwest %>% 
  select(PID, state, county, area)
view(states_and_countries)

#dot plot of percollege vs peradultpoverty 
plot <- ggplot(data = midwest) +
  geom_point(mapping = aes(
    x = percollege,
    y = percadultpoverty
  ))
plot
