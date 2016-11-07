library("R.utils")

verbose <- Verbose(threshold=-1)
print(verbose)

header(verbose, "A verbose writer example", padding=0)

enter(verbose, "Analysis A")
for (kk in 1:10) {
  printf(verbose, "step %d\n", kk)
  if (kk == 2) {
    cat(verbose, "Turning ON automatic timestamps")
    timestampOn(verbose);
  } else if (kk == 4) {
    timestampOff(verbose);
    cat(verbose, "Turned OFF automatic timestamps")
    cat(verbose, "Turning OFF verbose messages for steps ", kk, "-6")
    off(verbose)
  } else if (kk == 6) {
    on(verbose)
    cat(verbose, "Turned ON verbose messages just before step ", kk+1)
  }

  if (kk %in% c(5,8)) {
    enterf(verbose, "Sub analysis #%d", kk)
    for (jj in c("i", "ii", "iii")) {
      cat(verbose, "part ", jj)
    }
    exit(verbose)
  }
}
cat(verbose, "All steps completed!")
exit(verbose)

ruler(verbose)
cat(verbose, "Demo of some other methods:")
str(verbose, c(a=1, b=2, c=3))
print(verbose, c(a=1, b=2, c=3))
summary(verbose, c(a=1, b=2, c=3))
evaluate(verbose, rnorm, n=3, mean=2, sd=3)

ruler(verbose)
newline(verbose)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Odds and ends
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
print(equals(verbose, verbose))
print(equals(verbose, NA))
setThreshold(verbose, -4)
print(verbose)
setDefaultLevel(verbose, -1)
print(verbose)
print(as.logical(verbose))
print(as.double(verbose))
print(less(verbose))
print(more(verbose))
timestamp(verbose)
setTimestampFormat(verbose)
print(getTimestampFormat(verbose))
warning("Hello world!")
warnings(verbose)

print(timestamp())

