# Hands-on Activity: Make a Scatterplot
# Week 4
# Your Name Here

# Load libraries and data -------------------------------------------------
library(ggplot2)
load("popularity.RData")

# Make a scatterplot ------------------------------------------------------
ggplot(popularity, aes(x=pseudoGPA, y=indegree))+
  geom_jitter(width=0.15, alpha=0.2)+
  theme_bw()+
  labs(x="GPA in four core courses", y="number of friend nominations received",
       title="Scatterplot of GPA by friend nominations")

# whats the correlation coefficient
cor(popularity$pseudoGPA, popularity$indegree)

# use color to add a third contextual variable
ggplot(popularity, aes(x=pseudoGPA, y=indegree, color=alcoholuse))+
  geom_jitter(width=0.15, alpha=0.2)+
  theme_bw()+
  labs(x="GPA in four core courses", y="number of friend nominations received",
       title="Scatterplot of GPA by friend nominations")

# Your turn! --------------------------------------------------------------

# Find **two** examples of 2 quantitative variables in the example datasets. For 
# each case, make a scatterplot and calculate the correlation coefficient. 
# Adjust for overplotting as needed. Use good labeling as always. Download
# both scatterplots as PDFs , and turn in to Canvas where you will also answer
# a few questions.
