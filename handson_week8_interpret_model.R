# Hands-on Exercise: Interpret a model
# Week 8
# Your Name Here


# Load data ---------------------------------------------------------------
load("popularity.RData")
load("sex.RData")

# Interpret Slope and Intercept -------------------------------------------
model1 <- lm(indegree~nsports, data=popularity)
summary(model1)
coef(model1)

# Intercept is the predicted value when x=zero 
# The model predicts that students who play no sports will have 3.99 friend 
# nominations, on average.

# slope is the predicted change in y for a one unit increase in x
# The model predicts that playing one additional sport is associated with a 0.5
# increase in the number of friend nominations received, on average. 

# Re-centering independent variables --------------------------------------

model1 <- lm(sexf~age, data=sex)
coef(model1)

# Intercept - the model predicts that newborns will have se..... uggh

model2 <- lm(sexf~I(age-18), data=sex)
coef(model2)

# Intercept: The model predicts that 18-year olds will have 84.6 sexual 
# encounters per year, on average.

# Slope: The model predicts that a one year increase in age is associated with 
# 1.3 fewer sexual encounters per year, on average.


# Controlling for other variables -----------------------------------------
model1 <- lm(indegree~nsports, data=popularity)
coef(model1)
model2 <- lm(indegree~nsports+I(parentinc-mean(parentinc)), data=popularity)
coef(model2)

# Intercept: The model predicts that students who play no sports and whose 
# parents have the mean income will have 4.04 friend nominations, on average.

# Slope for nsports: The model predicts that, holding constant parental income, 
# playing one additional sport is associated with a 0.47 increase in the number 
# of friend nominations received, on average.  (option 1)

# Slope for nsports: The model predicts that, comparing students whose parents 
# have the same income, playing one additional sport is associated with a 0.47 
# increase in the number of friend nominations received, on average.  (option 2)

# Slope for parental income: The model predicts that, comparing students who
# play the same number of sports, a one thousand dollar increase in parental
# income is associated with a 0.011 increase in the number of friend nominations, 
# on average. 

# Your Turn! --------------------------------------------------------------

# Create a model predicting some outcome by two quantitative variables. 
# Interpret the intercept and slopes in common English. Upload your R script
# and write your interpretations on the Canvas assignment page. 
