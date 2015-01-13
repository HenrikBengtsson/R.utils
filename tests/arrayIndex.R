library("R.utils")

# Single index
print(arrayIndex(21, dim=c(4,3,3)))

# Multiple indices
print(arrayIndex(20:23, dim=c(4,3,3)))

# Whole array
x <- array(1:30, dim=c(5,6))
print(arrayIndex(1:length(x), dim=dim(x)))

# Find (row,column) of maximum value
m <- diag(4-abs(-4:4))
print(arrayIndex(which.max(m), dim=dim(m)))
