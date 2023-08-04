# Hands-on Activity: Make a Barplot
# Week 2
# Your Name Here

### Load libraries and data --------------------------------------------------
library(ggplot2)
load("politics.RData")

### Make a Barplot -----------------------------------------------------------
ggplot(politics, aes(x=educ, y=..prop.., group=1))+
  geom_bar(fill="mediumorchid", color="deepskyblue")+
  labs(x="highest degree received", y=NULL,
       title="Distribution of highest degree in politics dataset")+
  scale_y_continuous(labels = scales::percent)+
  theme_bw()

### Your Turn! ---------------------------------------------------------------

# Make another barplot of some other variable from any of our example datasets
# remember to load any additional dataset at the top of the script!

