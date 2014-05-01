library("R.utils")

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
