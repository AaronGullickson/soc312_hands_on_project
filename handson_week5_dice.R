# Hands-on Activity: Dice Experiment
# Week 5
# Your Name Here


# Load libraries ----------------------------------------------------------
library(ggplot2)

# roll 2d6 ---------------------------------------------------------------

# roll 2d6, calculate the mean, and then repeat this 9 times to get 10 means
# in total. Enter those means below.

means2 <- c(, , , , , , , , , )

mean(means2)
sd(means2)

ggplot(data.frame(means2=means2), aes(x=means2))+
  geom_histogram(binwidth=0.5, color="grey20", fill="grey80")

# do the same thing, but now lets do it 20 times!

means2 <- c(, , , , , , , , , , 
            , , , , , , , , , )

mean(means2)
sd(means2)

ggplot(data.frame(means2=means2), aes(x=means2))+
  geom_histogram(binwidth=0.5, color="grey20", fill="grey80")


# roll 10d6 --------------------------------------------------------------

#roll 10d6, take the mean, and repeat 20 times
means10 <- c(, , , , , , , , , , 
             , , , , , , , , , )

mean(means10)
sd(means10)

ggplot(data.frame(means10=means10), aes(x=means10))+
  geom_histogram(binwidth=0.5, color="grey20", fill="grey80")

ggplot(data.frame(means2=means2, means10=means10))+
  geom_density(aes(x=means2), fill="orange", alpha=0.5)+
  geom_density(aes(x=means10), fill="skyblue", alpha=0.5)+
  geom_vline(xintercept = 3.5, size=1, linetype=2)+
  theme_bw()+
  labs(x="mean of the means")

