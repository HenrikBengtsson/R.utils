
# Some vectors
x <- 1:6
y <- 1:10
z <- LETTERS[x]

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Abbreviation of output vector
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
printf("x = %s.\n", hpaste(x))
## x = 1, 2, 3, ..., 6.

printf("x = %s.\n", hpaste(x, maxCount=3))
## x = 1, 2, ..., 6.

printf("x = %s.\n", hpaste(x), maxCount=4) # Default
## x = 1, 2, 3, ..., 6.

# It will never output 1, 2, 3, 4, ..., 6
printf("x = %s.\n", hpaste(x, maxCount=5))
## x = 1, 2, 3, 4, 5 and 6.

# Turning off abbreviation
printf("y = %s.\n", hpaste(y, maxCount=Inf))
## y = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.

## ...or simply
printf("y = %s.\n", paste(y, collapse=", "))
## y = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Adding a special separator before the last element
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Change last separator
printf("x = %s.\n", hpaste(x, lastCollapse=" and "))
## x = 1, 2, 3, 4, 5 and 6.


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Qouting
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
printf("z = %s.\n", hpaste(z, quote="'"))
## z = 'A', 'B', 'C', ..., 'F'.

printf("z = %s.\n", hpaste(z, quote="'", maxCount=Inf))
## z = 'A', 'B', 'C', 'D', 'E', 'F'.
