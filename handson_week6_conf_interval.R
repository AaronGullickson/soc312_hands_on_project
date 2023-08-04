# Hands-on Activity: Calculate a Confidence Interval
# Week 6
# Your Name Here

# Load libraries and data -------------------------------------------------
library(ggplot2)
library(tidyverse)
load("gss_abortion.RData")

gss2021 <- subset(gss, year==2021)


# Confidence interval for abortion support in 2021 ------------------------

prop.table(table(gss2021$abany))

phat <- 0.5736
n <- nrow(gss2021)
se <- sqrt(phat * (1-phat)/n)
tstat <- qt(.975, n-1)

upper_bounds <- phat + tstat * se
lower_bounds <- phat - tstat * se

# I am 95% confident that the true proportion of Americans who support
# abortion for any reason is between 54.6% and 60.1%. 


# Trends in support over time ---------------------------------------------

df_year <- gss %>%
  group_by(year) %>%
  summarize(phat=mean(abany=="Yes"),
            n=n()) %>%
  mutate(tstat=qt(.975, n-1),
         se=sqrt(phat * (1-phat)/n),
         upper=phat + tstat * se,
         lower=phat - tstat * se)

ggplot(df_year, aes(x=year, y=phat, ymin=lower, ymax=upper))+
  geom_ribbon(fill="grey")+
  geom_line()+
  geom_point()+
  labs(y="percent supporting abortion for any reason")+
  scale_y_continuous(labels = scales::percent)+
  theme_bw()


# Confidence interval for gender difference in support in 2021 ------------

prop.table(table(gss2021$gender, gss2021$abany), 1)
phat_women <- 0.5929722
phat_men <- 0.5502646
prop_diff <- phat_women-phat_men

table(gss2021$gender)
n_women <- 683
n_men <- 567

se <- sqrt(phat_women * (1-phat_women)/n_women+
             phat_men * (1-phat_men)/n_men)
tstat <- qt(.975, n_men-1)

upper_bounds <- prop_diff + tstat * se
lower_bounds <- prop_diff - tstat * se

# I am 95% confident that the difference between women and men in support for 
# abortion for any reason is between 9.8% favoring women to 1.2% favoring men.


# Your Turn! --------------------------------------------------------------

# Calculate a confidence interval for a:
# * proportion difference
# * mean difference
# * correlation coefficient
