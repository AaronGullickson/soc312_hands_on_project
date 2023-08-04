# Hands-on Activity: Draw a Straight Line
# Week 8
# Your Name Here


# Load data ---------------------------------------------------------------
load("crimes.RData")

# Calculate Slope and Intercept from Included Handout ---------------------

# Calculate Sum of Squared Residuals --------------------------------------
yintercept <- 1550
slope <- 165

# get predicted values of property crimes rates
predicted_y <- 1550+165*crimes$Unemployment

# plot it out
ggplot(crimes, aes(x=Unemployment, y=Property))+
  geom_point()+
  geom_point(aes(y=predicted_y), color="red")+
  theme_bw()

# calculate residuals
residuals <- predicted_y - crimes$Property

# calculate squared residuals
residuals_squared <- residuals^2

# calculate sum of squared residuals
ssr <- sum(residuals_squared)

# what is the best fitting model?
model <- lm(Property~Unemployment, data=crimes)
coef(model)

# what is the SSR for the best fitting model?
sum(model$residuals^2)



