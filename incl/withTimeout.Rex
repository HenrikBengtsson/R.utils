# - - - - - - - - - - - - - - - - - - - - - - - - -
# Function that takes "a long" time to run
# - - - - - - - - - - - - - - - - - - - - - - - - -
foo <- function() {
  print("Tic")
  for (kk in 1:100) {
    print(kk)
    Sys.sleep(0.1)
  }
  print("Tac")
}


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout by throwing a TimeoutException.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    foo()
  }, timeout = 0.75)
}, TimeoutException = function(ex) {
  message("Timeout. Skipping.")
})


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout returning NULL and generate a warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withTimeout({
  foo()
}, timeout = 0.75, onTimeout = "warning")


# The same using an expression object
expr <- quote(foo())
res <- withTimeout(expr, substitute = FALSE,
                   timeout = 0.75, onTimeout = "warning")


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout, and return silently NULL.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withTimeout({
  foo()
}, timeout = 0.75, onTimeout = "silent")
