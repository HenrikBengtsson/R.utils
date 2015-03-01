library("R.utils")


x <- c(1,1,2,3,4,2,1)
x <- base::letters[x]
print(x)

# Identify entries with replicated values
reps <- isReplicated(x)
print(x[reps])
stopifnot(x[reps] == replicates(x))

# Identify entries with unique values
print(x[!reps])
stopifnot(x[!reps] == singles(x))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Validation
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(1,1,2,3,4,2,1)
x <- base::letters[x]
reps <- isReplicated(x)

stopifnot(all(table(x[reps]) > 1))
stopifnot(all(table(x[!reps]) == 1))
stopifnot(all(reps == rev(isReplicated(rev(x)))))
stopifnot(all(reps == duplicated(x) | duplicated(x, fromLast=TRUE)))
stopifnot(all(reps == !is.element(x, setdiff(x, unique(x[duplicated(x)])))))
stopifnot(all(sort(c(singles(x), replicates(x))) == sort(x)))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Benchmarking singles()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(0xBEEF)
n <- 1e6
x <- sample(1:(n/2), size=n, replace=TRUE)
t <- system.time({
  s <- isSingle(x)
})
print(sum(s))

t0 <- system.time({
  s0 <- !(x %in% x[duplicated(x)]);
})
print(t/t0)
stopifnot(all(s == s0))
