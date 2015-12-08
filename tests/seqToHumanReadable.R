library("R.utils")

## A few subsets
x <- c(1:10, 15, 21:20, 25:26)
s <- seqToHumanReadable(x)
print(s)
stopifnot(s == "1-10, 15, 20-21, 25, 26")

## Other delimiters
x <- c(1:10, 15, 21:20, 25:26)
s <- seqToHumanReadable(x, delimiter=":", collapse="; ")
print(s)
stopifnot(s == "1:10; 15; 20:21; 25; 26")

## Single
s <- seqToHumanReadable(0L)
print(s)
stopifnot(s == "0")

## Duplicates
s <- seqToHumanReadable(c(1:2, 1:2))
print(s)
stopifnot(s == "1, 2")

## Two
s <- seqToHumanReadable(1:2)
print(s)
stopifnot(s == "1, 2")

## Two
s <- seqToHumanReadable(c(1, 3))
print(s)
stopifnot(s == "1, 3")

## Empty
s <- seqToHumanReadable(integer(0L))
print(s)
stopifnot(s == "")

