library("R.utils")


# Some vectors
x <- 1:6
y <- 10:1
z <- LETTERS[x]

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Abbreviation of output vector
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
printf("x = %s.\n", hpaste(x))
## x = 1, 2, 3, ..., 6.

printf("x = %s.\n", hpaste(x, maxHead=2))
## x = 1, 2, ..., 6.

printf("x = %s.\n", hpaste(x), maxHead=3) # Default
## x = 1, 2, 3, ..., 6.

# It will never output 1, 2, 3, 4, ..., 6
printf("x = %s.\n", hpaste(x, maxHead=4))
## x = 1, 2, 3, 4, 5 and 6.

# Showing the tail
printf("x = %s.\n", hpaste(x, maxHead=1, maxTail=2))
## x = 1, ..., 5, 6.

# Turning off abbreviation
printf("y = %s.\n", hpaste(y, maxHead=Inf))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

## ...or simply
printf("y = %s.\n", paste(y, collapse=", "))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Adding a special separator before the last element
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Change last separator
printf("x = %s.\n", hpaste(x, lastCollapse=" and "))
## x = 1, 2, 3, 4, 5 and 6.



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Backward compatibility with paste()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
s1 <- hpaste(x, maxHead=Inf)
s2 <- paste(x, collapse=", ")
printf("s = %s.\n", s1);
stopifnot(identical(s1, s2))

s1 <- hpaste('<', x, '>', maxHead=Inf)
s2 <- paste('<', x, '>', sep="", collapse=", ")
printf("s = %s.\n", s1);
stopifnot(identical(s1, s2))

s1 <- hpaste(x, y, z, sep="/", maxHead=Inf)
s2 <- paste(x, y, z, sep="/", collapse=", ")
printf("s = %s.\n", s1);
stopifnot(identical(s1, s2))

s1 <- hpaste(x, collapse=NULL, maxHead=Inf)
s2 <- paste(x, collapse=NULL)
stopifnot(identical(s1, s2))

