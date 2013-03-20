args <- cmdArgs()
cat("User command-line arguments used when invoking R:\n")
str(args)

# Retrieve command line argument 'n', e.g. '-n 13' or '--n=13'
n <- cmdArg("n", 42L)
printf("Argument n=%d\n", n)

# Short version doing the same
n <- cmdArg(n=42L)
printf("Argument n=%d\n", n)

