
######################################################################
# Non-parsed command-line arguments
######################################################################
# Display how this instance of R was invoked.
cmd <- paste(commandArgs(), collapse=" ")
cat("How R was invoked:\n");
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
stopifnot(all.equal(args, args0, check.attributes=FALSE))


######################################################################
# Parsed command-line arguments
######################################################################
# Get all arguments as a named list, e.g. if R is started as:
#
#   R DATAPATH=../data --args --root="do da" --foo bar --details --a=2 
#
# then 'args' below will equal
#
#   list(R=NA, DATAPATH="../data" args=TRUE, root="do da", 
#        foo="bar", details=TRUE, a="2")
args <- commandArgs(asValue=TRUE)
str(args)

# Turn arguments into R variables
args <- commandArgs(asValue=TRUE, excludeReserved=TRUE)[-1]
keys <- attachLocally(args)
cat("Command-line arguments attached to global environment:\n");
print(keys);
str(mget(keys, envir=globalenv()))
