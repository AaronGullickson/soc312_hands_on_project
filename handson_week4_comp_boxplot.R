# Comparative Boxplot Hands-on Activity
# Sociology 312

library(ggplot2)
load("earnings.RData")

# basic boxplot (not comparative)
ggplot(earnings, aes(x=NA, y=wages))+
  geom_boxplot()

# checking the numbers
median(earnings$wages)
summary(earnings$wages)
IQR(earnings$wages)
1.5*IQR(earnings$wages)

# comparative boxplots of wages by education
ggplot(earnings, aes(x=education, y=wages))+
  geom_boxplot(fill="steelblue", outlier.color="salmon")+
  scale_y_continuous(labels=scales::dollar)+
  labs(y="hourly wages", x=NULL, 
       title="Comparative boxplot of hourly wages by highest degree")+
  coord_flip()+
  theme_bw()


tapply(earnings$wages, earnings$education, median)
tapply(earnings$wages, earnings$education, mean)

# comparative boxplot, but with a third variable!
ggplot(earnings, aes(x=education, y=wages))+
  geom_boxplot(fill="steelblue", outlier.color="salmon")+
  facet_wrap(~gender)+
  scale_y_continuous(labels=scales::dollar)+
  labs(y="hourly wages", x=NULL, 
       title="Comparative boxplot of hourly wages by highest degree")+
  #coord_flip()+
  theme_bw()
