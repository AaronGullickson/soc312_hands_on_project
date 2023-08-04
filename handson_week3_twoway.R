# Hands-on Exercise: Make a Two-Way Table
# Week 3
# You Name Here


# Load libraries and data -------------------------------------------------
load("popularity.RData")

# Create a two-way table --------------------------------------------------

# make the table object
tab <- table(popularity$race, popularity$smoker)

# proportions by row
prop.table(tab, 1)

# proportions by column - this is not as easy to interpet
# prop.table(tab, 2)

# clean it up!
round(100*prop.table(tab, 1), 1)

# Your Turn! --------------------------------------------------------------

# Pick two categorical variables from any dataset. 
