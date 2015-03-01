library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Basic tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# The current set of locales
old <- Sys.getlocale("LC_ALL")

# Vector
cat("Original vector:\n")
x <- c(letters[1:8], LETTERS[1:8])
print(x)

cat("Sorting with 'C' locale:\n")
y1 <- withLocale(sort(x), "LC_COLLATE", "C")
print(y1)

cat("Sorting with an 'English' locale:\n")
y2 <- withLocale(sort(x), "LC_COLLATE", c("en_US", "en_US.UTF8", "English_United States.1252"))
print(y2)

# Sanity check
curr <- Sys.getlocale("LC_ALL")
if (!identical(curr, old)) {
  throw("Locale settings have changed: ", old, " != ", curr)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Nested calls
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Sorting with 'C' locale (nested inside a English one):\n")
y3 <- withLocale({
  withLocale({
    sort(x)
  }, "LC_COLLATE", "C")
}, "LC_COLLATE", c("en_US", "en_US.UTF8", "English_United States.1252"))
print(y3)
stopifnot(identical(y3, y1))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Visibility
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withVisible({
  withLocale({ 1 }, "LC_COLLATE", "C")
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(res$visible)

x <- 0
res <- withVisible({
  withLocale({ x <- 1 }, "LC_COLLATE", "C")
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(!res$visible)
stopifnot(all.equal(x, 1))
