library("R.utils")

# Case #1
x <- list(a=1, b=base::letters)
keys <- attachLocally(x)
stopifnot(identical(keys, names(x)))
for (key in keys) stopifnot(identical(get(key), x[[key]]))


# Case #2: A list with "empty" names
x <- list(a=1, b=base::letters, "noname", "another one")
keys <- attachLocally(x)
stopifnot(identical(keys, setdiff(names(x), "")))
for (key in keys) stopifnot(identical(get(key), x[[key]]))
