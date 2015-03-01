library("R.utils")

x <- 1:10

s <- seqToHumanReadable(x)
print(s)

# Empty
s <- seqToHumanReadable(integer(0L))
print(s)
