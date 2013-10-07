digits0 <- digits <- base::getOption("digits")
print(digits)

digits <- getOption("digits")
print(digits)
stopifnot(identical(digits, digits0))

digits <- R.utils::getOption("digits")
print(digits)
stopifnot(identical(digits, digits0))


library("R.utils")

digits <- base::getOption("digits")
print(digits)
stopifnot(identical(digits, digits0))

digits <- getOption("digits")
print(digits)
stopifnot(identical(digits, digits0))

digits <- R.utils::getOption("digits")
print(digits)
stopifnot(identical(digits, digits0))


