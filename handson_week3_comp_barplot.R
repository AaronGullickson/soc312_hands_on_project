# Hands-on Exercise: Make a Comparative Barplot
# Week 3
# Your Name Here

# Load libraries and data -------------------------------------------------
library(ggplot2)
load("popularity.RData")

# Make a Comparative Barplot ----------------------------------------------
ggplot(popularity, aes(x=smoker, y=..prop.., group=race, fill=race))+
  geom_bar(position = "dodge")+
  theme_bw()+
  labs(x=NULL, y=NULL, title="Frequency of smoking by race",
       fill="Race")+
  scale_y_continuous(labels=scales::percent)
# what if we did it the other way - not the preferred way here
ggplot(popularity, aes(x=race, y=..prop.., group=smoker, fill=smoker))+
  geom_bar(position = "dodge")+
  theme_bw()+
  labs(x=NULL, y=NULL, title="Frequency of race by smoking",
       fill="Smoker")+
  scale_y_continuous(labels=scales::percent)+
  coord_flip() #useful to avoid overlapping tickmark labels!

# compare by faceting instead
ggplot(popularity, aes(x=smoker, y=..prop.., group=1))+
  geom_bar()+
  facet_wrap(~race)+
  labs(x=NULL, y=NULL, title="Frequency of race by smoking")+
  scale_y_continuous(labels=scales::percent)+
  theme_bw()

# what about adding a third variable like a pro?
ggplot(popularity, aes(x=smoker, y=..prop.., group=race, fill=race))+
  geom_bar(position = "dodge")+
  theme_bw()+
  labs(x=NULL, y=NULL, title="Frequency of smoking by race",
       fill="Race")+
  scale_y_continuous(labels=scales::percent)+
  facet_wrap(~sex)

# Your Turn! --------------------------------------------------------------

# Look at a relationship between two categorical variables and plot a 
# comparative barplot. Try both techniques and decide which one you like better.
# Upload your favorite plot to Canvas and answer a few questions to complete
# the assignment.

