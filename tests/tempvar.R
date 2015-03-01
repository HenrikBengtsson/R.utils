library("R.utils")

# Get a temporary variable
name <- tempvar()
print(name)

# Get and assign a temporary variable
name <- tempvar(value=base::letters)
print(name)
str(get(name))

# Get a temporary variable with custom prefix
name <- tempvar(prefix=".hidden")
print(name)
