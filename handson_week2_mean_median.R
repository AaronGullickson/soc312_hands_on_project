# Hands-on Activity: Mean vs. Median
# Week 2
# Your Name Here

# Load libraries and data -------------------------------------------------
library(ggplot2)
load("movies.RData")

# Make a histogram with mean and median marked ----------------------------
ggplot(movies, aes(x=Runtime))+
  geom_histogram(fill="grey80", color="grey20", binwidth=5)+
  theme_bw()+
  labs(x="movie runtime", title="Distribution of movie runtime")+
  geom_vline(xintercept = mean(movies$Runtime), color="red", size=1)+
  geom_vline(xintercept = median(movies$Runtime), color="blue", size=1)

# Now your turn -----------------------------------------------------------

# Find **two** quantitative variables in any of the example datasets. Make
# this plot for each of them.

# Upload two plots (one for each variable) and answer questions on Canvas to
# complete the assignments