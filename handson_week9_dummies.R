# Hands-on Activity: Add Dummies to a Model
# Sociology 312

load("earnings.RData")

# use tapply to get conditional mean wages by race
cond_means <- tapply(earnings$wages, earnings$race, mean)

# lets get the mean difference between white workers and each other group
cond_means-cond_means["White"]

# now predict by the model

model1 <- lm(wages ~ race, data=earnings)
summary(model)

earnings$race_black <- ifelse(earnings$race=="Black", 1, 0)
earnings$race_latino <- ifelse(earnings$race=="Latino", 1, 0)
earnings$race_asian <- ifelse(earnings$race=="Asian", 1, 0)
earnings$race_indigenous <- ifelse(earnings$race=="Indigenous", 1, 0)
earnings$race_other <- ifelse(earnings$race=="Other/Multiple", 1, 0)

model2 <- lm(wages ~ race_black+race_latino+race_asian+race_indigenous+race_other, 
            data=earnings)

model3 <- lm(wages~relevel(race, "Black"), data=earnings)

# Interpreting results
# The model predicts that black workers make $5.92 less per hour than white 
# workers, on average.

# lets add controls
model4 <- lm(wages~race+education+nchild, data=earnings)
summary(model4)
# Interpret the same value
# The model predicts that, comparing workers with the same education and number
# of children in the household, black workers make $4.08 less per hour than white 
# workers, on average.

# Now your turn! ----------------------------------------------------------

# Find a quantitative outcome variable and a categorical predictor variable, plus
# at least one control variable for a model.
# Interpret the "slope" on one of the categories of your categorical predictor
# variable.



