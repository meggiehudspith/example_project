# Load packages.
library(readr)
library(dplyr)
library(ggplot2)

 # Load data.
diamonds_df <- read_csv("data/diamonds_data.csv")

# Take a look.
glimpse(diamonds_df)

# Set seed for the sample.
set.seed(1612)

# Do some handling.
diamonds_sample_df <- diamonds_df %>% 
  select(carat, color, x, y, clarity) %>% 
  sample_n(size = 1000) 

# Make a plot for visualising the data.
ggplot(data = diamonds_sample_df) +
  geom_point(mapping = aes(x = x, y = carat, colour = clarity))+
  scale_colour_viridis_d()

# Save the plot.
ggsave(filename = "results/my_plot.png", height = 8, width = 10, unit = "cm")
