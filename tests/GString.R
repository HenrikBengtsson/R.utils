library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# First example
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
who <- "world"

# Compare this...
cat(as.character(GString("Hello ${who}\n")))

# ...to this.
cat(GString("Hello ${who}\n"))

# Escaping
cat(as.character(GString("Hello \\\\${who}\n")))

# Printing
print(GString("Hello ${who}\n"))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Looping over vectors
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:5
y <- c("hello", "world")
cat(as.character(GString("(x,y)=(${x},${y})")), sep=", ")
cat("\n")

cat(as.character(GString("(x,y)=(${x},$[capitalize]{y})")), sep=", ")
cat("\n")

cat(as.character(GString("(x,y)=(${x},$[toupper]{y})")), sep=", ")
cat("\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Predefined ("builtin") variables
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat(as.character(GString("Hello ${username} on host ${hostname} running ",
"R v${rversion} in process #${pid} on ${os}. R is installed in ${rhome}.")))


# Other built-in variables/functions...
cat(as.character(GString("Current date: ${date}\n")))
cat(as.character(GString("Current date: $[format='%d/%m/%y']{date}\n")))
cat(as.character(GString("Current time: ${time}\n")))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluating inline R code
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat(as.character(GString("Simple calculation: 1+1=${`1+1`}\n")))
cat(as.character(GString("Alternative current date: ${`date()`}\n")))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Function values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Call function rnorm with arguments n=1, i.e. rnorm(n=1)
cat(as.character(GString("Random normal number: $[n=1]{rnorm}\n")))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Global search-replace feature
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Replace all '-' with '.'
cat(as.character(GString("Current date: ${date/-/.}\n")))
# Another example
cat(as.character(GString("Escaped string: 12*12=${`12*12`/1/}\n")))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Defining new "builtin" function values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Define your own builtin variables (functions)
setMethodS3("getBuiltinAletter", "GString", function(object, ...) {
  base::letters[runif(1, min=1, max=length(base::letters))]
})

cat(as.character(GString("A letter: ${aletter}\n")))
cat(as.character(GString("Another letter: ${aletter}\n")))


# Another example
setMethodS3("getBuiltinGstring", "GString", function(object, ...) {
  # Return another GString.
  GString("${date} ${time}")
})

if (FALSE) {
cat(as.character(GString("Advanced example: ${gstring}\n")))


# Advanced example
setMethodS3("getBuiltinRunif", "GString", function(object, n=1, min=0, max=1, ...) {
  formatC(runif(n=n, min=min, max=max), ...)
})

cat(as.character(GString("A random number: ${runif}\n")))
n <- 5
cat(as.character(GString("${n} random numbers: ")))
cat(as.character(GString("$[n=n, format='f']{runif}")))
cat("\n")


# Advanced options.
# Options are parsed as if they are elements in a list, e.g.
#   list(n=runif(n=1,min=1,max=5), format='f')
cat(as.character(GString("$Random number of numbers: ")))
cat(as.character(GString("$[n=runif(n=1,min=1,max=5), format='f']{runif}")))
cat("\n")

} # if (FALSE)
