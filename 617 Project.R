# Transportation Problem 
# Load lpsolve package
# Installing lpsolve

install.packages('lpSolve')
library(lpSolve)

# Defining cost matrix 

costs <- matrix(c(1.07, 0.77, 0.43, 1.02, 1.06, 0.7, 0.63, 0.61, 0.63, 0.5, 0.19, 0.23,
                  0.37, 0.48, 0.82, 0.33, 0.03, 0.36, 0.36, 0.41, 0.74, 0.25, 0.27, 0.61), nrow = 3)

# Set up constraint signs and right hands sides

row.signs <- rep("<=" , 3)
row.rhs <- c(350, 775, 300)
col.signs <- rep(">=", 8)
col.rhs <- c(200, 100, 125, 250, 225, 400, 50, 75)

# Running the lp problem

lptrans <- lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)

# Solution 
lptrans$solution

# Objective Function
lptrans$objval

