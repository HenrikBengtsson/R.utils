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
# Call #1:
argsC <- c("R", "--encoding=ASCII", "--encoding", "ASCII", "DATAPATH=../data", "--args", "--root=do da", "--foo", "bar", "--details", "--a=2", "--src_file=foo.R")
print(argsC)

# Truth:
args0 <- list("R", encoding="ASCII", encoding="ASCII", DATAPATH="../data", args=TRUE, root="do da", foo="bar", details=TRUE, a="2", "src_file"="foo.R")

args <- commandArgs(asValue=TRUE, .args=argsC)
str(args)
stopifnot(all.equal(args, args0))

# Exclude reserved
args <- commandArgs(asValue=TRUE, excludeReserved=TRUE, excludeEnvVars=TRUE, .args=argsC)[-1L]
stopifnot(all.equal(args, args0[-(1:5)]))


# Call #2:
argsC <- c("R", "noname1", "DATAPATH=../data", "--args", "--root=do da", "noname2", "--foo", "bar", "--details", "--a=2", "noname3", "noname4", "noname5")
print(argsC)

# Truth:
args0 <- list("R", "noname1", DATAPATH="../data", args=TRUE, root="do da", "noname2", foo="bar", details=TRUE, a="2", "noname3", "noname4", "noname5")

args <- commandArgs(asValue=TRUE, .args=argsC)
str(args)
stopifnot(all.equal(args, args0))


for (asValue in c(TRUE, FALSE)) {
  # Argument 'defaults'
  args <- commandArgs(asValue=asValue, .args=argsC, defaults=c(a=1L, d=4L))
  str(args)

  # Argument 'always'
  args <- commandArgs(asValue=asValue, .args=argsC, always=c(c=4L))
  str(args)

  # Argument 'unique'
  args <- commandArgs(asValue=asValue, .args=argsC, unique=TRUE)
  str(args)

  # Argument 'os'
  args <- commandArgs(asValue=asValue, os="current")
  str(args)

  # Unusual option: -name=value
  args <- commandArgs(asValue=asValue, .args="-foo=4")
  str(args)

  # Default
  args <- commandArgs(asValue=asValue)
  str(args)
} # for (asValue ...)
