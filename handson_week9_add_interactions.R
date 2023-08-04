# Hands-on Activity: Add Interactions to a Model
# Sociology 312

library(ggplot2)
load("popularity.RData")

# interacting a categorical and quantitative variable
ggplot(popularity, aes(x=nsports, y=indegree))+
  geom_jitter(alpha=0.1)+
  geom_smooth(method="lm", se=FALSE)+
  theme_bw()

model_additive <- lm(indegree~nsports, data=popularity)
coef(model_additive)

# is this relationship different for boys and girls?
ggplot(popularity, aes(x=nsports, y=indegree, color=sex))+
  geom_jitter(alpha=0.1)+
  geom_smooth(method="lm", se=FALSE)+
  theme_bw()

model_interact <- lm(indegree~nsports*sex, data=popularity)
coef(model_interact)

# (predicted friends)=4.21+0.59(nsports)-0.54(male)-0.09(nsports)(male)
# girls: friends=4.21+0.59(sports)
# The model predicts that a girl who plays no sports will have 4.21 friend
# nominations on average
# The model predicts that, for girls, an additional sport played is associated 
# with 0.59 more friend nominations, on average.
# boys: friends=4.21+0.59(sports)-0.54-0.09(nsports)
#       friends=3.67+0.50(nsports)
# The model predicts that a boy who plays not sports will have 3.67 friend
# nominations on average.
# The model predicts, that for boys, an additional sport played is associated
# with 0.5 more friend nominations, on average.

# interacting two categorical variables

model_interact <- lm(indegree~sex*smoker, data=popularity)
coef(model_interact)

#|            |   Female    |   Male              |
#|------------|-------------|---------------------|
#| No Smoking | 4.74        | 4.74-0.49           |  -0.49
#| Smoking    | 4.74+0.05   | 4.74-0.49+0.05+0.51 |  -0.49+0.51
#|------------|-------------|---------------------|
#               0.05           0.05+0.51
  
# Now its your turn! ------------------------------------------------------

# Create a model predicting a quantitative outcome from our datasets,
# and use an interaction term. 
# Canvas: report your code for the model and interpret:
# - two different main effects (one for each variable)
# - one interaction term
  
