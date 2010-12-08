# - - - - - - - - - - - - - - - - - - - - - - - - -
# Function that takes "a long" time to run
# - - - - - - - - - - - - - - - - - - - - - - - - -
foo <- function() {
  print("Tic");
  for (kk in 1:100) {
    print(kk);
    Sys.sleep(0.1);
  }
  print("Tac");
}


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout by throwing a TimeoutException.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL;
tryCatch({
  res <- evalWithTimeout({
    foo();
  }, timeout=1.08);
}, TimeoutException=function(ex) {
  cat("Timeout. Skipping.\n");
})


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout returning NULL and generate a warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- evalWithTimeout({
  foo();
}, timeout=1.08, onTimeout="warning");
