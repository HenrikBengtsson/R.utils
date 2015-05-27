library("R.utils")

x <- c(1:10, 15, 21:20, 25:26)

s <- seqToHumanReadable(x)
print(s)

# Empty
s <- seqToHumanReadable(integer(0L))
print(s)

# Single
s <- seqToHumanReadable(0L)
print(s)
