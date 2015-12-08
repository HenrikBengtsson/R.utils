library("R.utils")

## Empty
s <- seqToHumanReadable(integer(0L))
print(s)
stopifnot(s == "")

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

## A few subsets
x <- c(1:3, 5:8, 15, 21:20, 25:26)
s <- seqToHumanReadable(x)
print(s)
stopifnot(s == "1-3, 5-8, 15, 20, 21, 25, 26")

## Other delimiters
s <- seqToHumanReadable(x, delimiter=":", collapse="; ")
print(s)
stopifnot(s == "1:3; 5:8; 15; 20; 21; 25; 26")

## Display 1:2 as 1-2
s <- seqToHumanReadable(x, tau=1L)
print(s)
stopifnot(s == "1-3, 5-8, 15, 20-21, 25-26")

## Display 1:3 as 1, 2, 3
s <- seqToHumanReadable(x, tau=3L)
print(s)
stopifnot(s == "1, 2, 3, 5-8, 15, 20, 21, 25, 26")
