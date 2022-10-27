# Purpose: October 27th Data Science Programming Intro to R Plotting


# Read in the data and libraries needed -----------------------------------

library(tidyverse)
mtcars <- mtcars


# Summarize data through different statistical measures -------------------

mtcars %>%
  dplyr::summarize_at(c("mpg", "hp", "disp"),
                      c(mean = mean, 
                        sd = sd, 
                        min = min, 
                        median = median, 
                        max = max))


# Mutating data -----------------------------------------------------------

mtcars %>%
  mutate(scale_mpg= (mpg - min(mpg)) / (max(mpg) - min(mpg)))

mtcars %>%
  mutate_if(is.numeric, function(x) (x - min(x)) / (max(x) - min(x))) #Mutate multiple columns (those that are numeric)

mtcars[which.min(mtcars$mpg), "disp"] #Find minimum value of mpg and that displacement value


# Plotting data -----------------------------------------------------------

# Making scatterplots
mtcars %>%
  ggplot(aes(x = disp, y = mpg)) +
  geom_point(aes(color = factor(cyl))) +
  labs(title = "Scatterplot of Displacement vs. MPG",
       caption = "Eric Warren",
       x = "Displacement",
       y = "MPG",
       color = "Number of Cylinders") + 
  theme_bw() +
  theme(plot.title = element_text(color = "blue",
                                  face = "bold",
                                  size = 16,
                                  hjust = 0.5))
# Making 2d bin heatmaps
mtcars %>%
  ggplot(aes(x = disp, y = mpg)) +
  geom_bin_2d(bins = 50) +
  labs(title = "Scatterplot of Displacement vs. MPG",
       caption = "Eric Warren",
       x = "Displacement",
       y = "MPG",
       fill = "Count") + 
  theme_bw() +
  theme(plot.title = element_text(color = "blue",
                                  face = "bold",
                                  size = 16,
                                  hjust = 0.5))