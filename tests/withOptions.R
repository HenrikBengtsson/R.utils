library("R.utils")

oopts <- options()

digits <- getOption("digits")
print(pi)

# Same, i.e. using default
withOptions({
  print(pi)
  stopifnot(getOption("digits") == digits)
})

# Printing with two digits
withOptions({
  print(pi)
  stopifnot(getOption("digits") == 2)
}, digits=2)

# Printing with two digits then with three more
withOptions({
  print(pi)
  withOptions({
    print(pi)
    stopifnot(getOption("digits") == 5)
  }, digits=getOption("digits")+3)
  stopifnot(getOption("digits")+3 == 5)
}, digits=2)


# Still printing with the default
print(pi)
stopifnot(getOption("digits") == digits)

# Reset also options set inside call
options(dummy=NULL)
withOptions({
  print(pi)
  options(digits=1L)
  print(pi)
  stopifnot(getOption("digits") == 1L)
  options(dummy="Hello")
  print(getOption("dummy"))
})
stopifnot(is.null(getOption("dummy")))

# Any modified or added option is undone
stopifnot(all.equal(options(), oopts))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Visibility
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
digits <- getOption("digits")+1L
res <- withVisible({
  withOptions({ 1 }, digits=digits)
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(res$visible)

x <- 0
res <- withVisible({
  withOptions({ x <- 1 }, digits=digits)
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(!res$visible)
stopifnot(all.equal(x, 1))
