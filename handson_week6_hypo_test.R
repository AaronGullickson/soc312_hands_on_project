# Hands-on Activity: Conduct a hypothesis test
# Week 6
# Your Name Here

# Load libraries and data -------------------------------------------------
library(ggplot2)
load("gss_abortion.RData")

gss2021 <- subset(gss, year==2021)


# Conduct a hypothesis test -----------------------------------------------

# Null hypothesis: There is no difference in support for abortion for any 
# reason between men and women in the US population.

# What do I see in the sample?
prop.table(table(gss2021$gender, gss2021$abany), 1)
phat_women <- 0.5929722
phat_men <- 0.5502646
prop_diff <- 0.5929722-0.5502646

table(gss2021$gender)
n_women <- 683
n_men <- 567

se <- sqrt(phat_women * (1-phat_women)/n_women +
             phat_men * (1-phat_men)/n_men)

tstat <- (prop_diff-0)/se
pvalue <- pt(-1*abs(tstat), n_men-1)

# Assuming the null hypothesis is true that there is no difference between men 
# and women in the population in there support for abortion, there is a 6.5% chance 
# that we would get a proportion difference of 4.3% between men and women in a 
# sample of this size by random chance. Therefore, we **cannot** reject the 
# null hypothesis that there is no difference in support between men and women
# in the population.


# Your Turn! --------------------------------------------------------------

# Conduct a hypothesis test using one of the example dataset on a:
# * proportion difference
# * mean difference
# * correlation coefficient
