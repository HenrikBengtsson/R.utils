# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# First, clean up if called more than once
setHook("myFunction.onEnter", NULL, action="replace")
setHook("myFunction.onExit", NULL, action="replace")

runConference <- function(...) {
  callHooks("myFunction.onEnter")
  cat("Speaker A: Hello there...\n")
  callHooks("myFunction.onExit")
}

setHook("myFunction.onEnter", function(...) {
  cat("Chair: Welcome to our conference.\n")
})

setHook("myFunction.onEnter", function(...) {
  cat("Chair: Please welcome Speaker A!\n")
})

setHook("myFunction.onExit", function(...) {
  cat("Chair: Please thanks Speaker A!\n")
})

runConference()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setHook("randomNumber", NULL, action="replace")
setHook("randomNumber", rnorm)      # By function
setHook("randomNumber", "rexp")     # By name
setHook("randomNumber", "runiff")   # Non-existing name
setHook("randomNumber", .GlobalEnv) # Not a function

res <- callHooks("randomNumber", n=1)
str(res)
cat("Number of hooks: ", length(res), "\n");
isErroneous <- unlist(lapply(res, FUN=function(x) !is.null(x$exception)));
cat("Erroneous hooks: ", sum(isErroneous), "\n");


