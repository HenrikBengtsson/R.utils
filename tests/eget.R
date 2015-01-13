library("R.utils")

# Get variable 'a' if it exists, otherwise return the default value.
value <- eget("a", default=42L)
print(value) # 42L

# Short version doing the same
value <- eget(a=42L)
print(value) # 42L

# Same, but look for the variable in 'envir' (here a list)
value <- eget("a", default=42L, envir=list(a=1))
print(value) # 1L

# Get variable 'n', which defaults to command-line argument
# 'n' ('-n' or '--n'), which in turn defaults to 42L.
value <- eget(n=cmdArg(n=42L))
print(value)

# Equivalently.
value <- ecget(n=42L)
print(value)
