library("R.utils")

######################################################################
# Parsed command-line arguments
######################################################################
# Call:
exprA <- "str(R.utils::cmdArgs(defaults=list(n=2L,a=2)))"
exprB <- "str(R.utils::cmdArgs(defaults=list(n=3L,a=3)))"
argsC <- c("Rscript", "-e", exprA, "--args", "-e", exprB, "-n", "1")
print(argsC)

# Truth:
args0 <- list(e=exprB, n=1)

args <- cmdArgs(.args=argsC)
str(args)
stopifnot(all.equal(args, args0))


# Truth:
args0 <- list(x=3.14, e=exprB, n=1L)

args <- cmdArgs(defaults=list(n=0L, x=3.14), .args=argsC)
str(args)
stopifnot(all.equal(args, args0))



# Truth:
args0 <- list(K=50)

args <- cmdArgs(args=args0, .args=argsC)
str(args)
stopifnot(all.equal(args, args0))
