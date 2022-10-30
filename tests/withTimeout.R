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
  42L
}

fib <- function(n) {
  if (n == 0 | n == 1) return(n)
  return (fib(n - 1) + fib(n - 2))
}

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a TimeoutException error.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() with error")
res <- tryCatch({
  res <- withTimeout({
    foo()
  }, timeout=1.08)
}, TimeoutException=function(ex) {
  cat("Timeout (", ex$message, "). Skipping.\n", sep="")
  TRUE
})
stopifnot(isTRUE(res))

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too much CPU time,
# generate a TimeoutException error.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() with error")
res <- tryCatch({
  res <- withTimeout({
    fib(30)
  }, cpu=0.1, elapsed=Inf)
}, TimeoutException=function(ex) {
  cat("Timeout (", ex$message, "). Skipping.\n", sep="")
  TRUE
})
stopifnot(isTRUE(res))

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() with warning")
res <- withTimeout({
  foo()
}, timeout=1.08, onTimeout="warning")
stopifnot(is.null(res))

res <- tryCatch({
  res <- withTimeout({
    foo()
  }, timeout=1.08, onTimeout="warning")
}, warning=function(ex) {
  cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
  TRUE
})
stopifnot(isTRUE(res))


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too much CPU time,
# generate a timeout warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() with warning")
res <- withTimeout({
  fib(30)
}, cpu=0.1, elapsed=Inf, onTimeout="warning")
stopifnot(is.null(res))

res <- tryCatch({
  res <- withTimeout({
    fib(30)
  }, cpu=0.1, elapsed=Inf, onTimeout="warning")
}, warning=function(ex) {
  cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
  TRUE
})
stopifnot(isTRUE(res))


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout, and return silently NULL.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() with silent")
res <- withTimeout({
  foo()
}, timeout=1.08, onTimeout="silent")
stopifnot(is.null(res))


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, that does not timeout, then
# evaluate code that takes long, but should not
# timeout.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() without timeout")
res <- withTimeout({
  cat("Hello world!\n")
  TRUE
}, timeout=1.08)
stopifnot(isTRUE(res))


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, that does not timeout, but
# throws an error.
# - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() without timeout, but with error")
res <- tryCatch({
  res <- withTimeout({
    stop("boom")
  }, timeout=1.08, onTimeout="warning")
}, error=function(ex) {
  cat("Another error occured: ", ex$message, "\n", sep="")
  TRUE
})
stopifnot(isTRUE(res))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Evalute expression
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() without timeout")
expr <- quote({ cat("Hello world!\n"); TRUE })
res <- withTimeout(expr, substitute = FALSE, timeout=1.08)
stopifnot(isTRUE(res))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Visibility
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("withTimeout() - visibility")
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
message("withTimeout() - other languages")
local({
  olang <- Sys.getenv("LANGUAGE")
  on.exit(Sys.setenv(LANGUAGE=olang))
  Sys.setenv(LANGUAGE="fr")

  res <- tryCatch({
    res <- withTimeout({
      foo()
    }, timeout=1.08, onTimeout="warning")
  }, warning=function(ex) {
    cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
    TRUE
  })
  stopifnot(isTRUE(res))
})


message("withTimeout() - switching language inside function (doesn't work)")
res <- tryCatch({
  res <- withTimeout({
    olang <- Sys.getenv("LANGUAGE")
    on.exit(Sys.setenv(LANGUAGE=olang))
    Sys.setenv(LANGUAGE="fr")
    foo()
  }, timeout=1.08, onTimeout="warning")
}, warning=function(ex) {
  cat("Timeout warning (", ex$message, "). Skipping.\n", sep="")
  TRUE
}, error=function(ex) {
  warning("withTimeout() fails to detect timeouts when the language is temporarily switched")
  FALSE
})
print(res)


# Undo
options(oopts)
