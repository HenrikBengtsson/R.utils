library("R.utils")

# A named list
x <- list(a=1, b=base::letters)
keys <- attachLocally(x)
stopifnot(identical(keys, names(x)))
for (key in keys) stopifnot(identical(get(key), x[[key]]))


# A list with "empty" names
x <- list(a=1, b=base::letters, "noname", "another one")
keys <- attachLocally(x)
stopifnot(identical(keys, setdiff(names(x), "")))
for (key in keys) stopifnot(identical(get(key), x[[key]]))

# An environment
x <- list(a=1, b=base::letters)
env <- list2env(x)
stopifnot(identical(ls(envir=env), names(x)))
keys <- attachLocally(env)
stopifnot(identical(keys, ls(envir=env)))
for (key in keys) stopifnot(identical(get(key), env[[key]]))

# A data.frame
df <- data.frame(a=1, b=base::letters)
keys <- attachLocally(df)
stopifnot(identical(keys, names(df)))
for (key in keys) stopifnot(identical(get(key), df[[key]]))
