library("R.utils")

######################################################################
# How R was invoked
######################################################################
cmd <- paste(commandArgs(), collapse=" ")
cat("How R was invoked:\n")
cat(cmd, "\n")

# Get all arguments
args <- commandArgs()
print(args)

# Get only "private" arguments and not the name of the R executable.
args <- commandArgs(excludeReserved=TRUE)[-1]
print(args)

# Assert backward compatibility
args0 <- base::commandArgs()
args <- commandArgs()
stopifnot(all.equal(args, args0))



######################################################################
# Parsed command-line arguments
######################################################################
# Call:
argsC <- c("R", "DATAPATH=../data", "--args", "--root=do da", "--foo", "bar", "--details", "--a=2")
print(argsC)

# Truth:
args0 <- list(R=NA, DATAPATH="../data", args=TRUE, root="do da", foo="bar", details=TRUE, a="2")

args <- commandArgs(asValue=TRUE, .args=argsC)
str(args)
stopifnot(all.equal(args, args0))


# Exclude reserved
args <- commandArgs(asValue=TRUE, excludeReserved=TRUE, excludeEnvVars=TRUE, .args=argsC)[-1L]
stopifnot(all.equal(args, args0[-(1:3)]))
