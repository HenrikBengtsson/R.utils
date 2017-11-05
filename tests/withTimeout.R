library("R.utils")

oopts <- options(warn=1)

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Function that takes "a long" time to run
# - - - - - - - - - - - - - - - - - - - - - - - - -
foo <- function() {
  print("Tic")
  for (kk in 1:20) {
    print(kk)
    Sys.sleep(0.1)
  }
  print("Tac")
}

fib <- function(n) {
  if (n == 0 | n == 1) return(n)
  return (fib(n - 1) + fib(n - 2))
}

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a TimeoutException error.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    foo()
  }, timeout=1.08)
}, TimeoutException=function(ex) {
  cat("Timeout (", ex$message, "). Skipping.\n", sep="")
})

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too much CPU time,
# generate a TimeoutException error.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    fib(30)
  }, cpu=0.1, elapsed=Inf)
}, TimeoutException=function(ex) {
  cat("Timeout (", ex$message, "). Skipping.\n", sep="")
})

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    foo()
  }, timeout=1.08, onTimeout="warning")
}, warning=function(ex) {
  cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
})

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too much CPU time,
# generate a timeout warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    fib(30)
  }, cpu=0.1, elapsed=Inf, onTimeout="warning")
}, warning=function(ex) {
  cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
})

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout, and return silently NULL.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withTimeout({
  foo()
}, timeout=1.08, onTimeout="silent")


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, that does not timeout, then
# evaluate code that takes long, but should not
# timeout.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withTimeout({
  cat("Hello world!\n")
}, timeout=1.08)
foo()


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, that does not timeout, but
# throws an error.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    foo()
  }, timeout=1.08, onTimeout="warning")
}, error=function(ex) {
  cat("Another error occured: ", ex$message, "\n", sep="")
})


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Evalute expression
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
expr <- quote(cat("Hello world!\n"))
res <- withTimeout(expr, substitute = FALSE, timeout=1.08)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Visibility
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withVisible({
  withTimeout({ 1 }, timeout=1)
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(res$visible)

x <- 0
res <- withVisible({
  withTimeout({ x <- 1 }, timeout=1)
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(!res$visible)
stopifnot(all.equal(x, 1))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Non-English settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
local({
  olang <- Sys.getenv("LANGUAGE")
  on.exit(Sys.setenv(LANGUAGE=olang))
  Sys.setenv(LANGUAGE="fr")

  res <- NULL
  tryCatch({
    res <- withTimeout({
      foo()
    }, timeout=1.08, onTimeout="warning")
  }, warning=function(ex) {
    cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
  })

  stopifnot(is.null(res))
})


# Undo
options(oopts)
