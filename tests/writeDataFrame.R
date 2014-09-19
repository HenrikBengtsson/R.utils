library("R.utils")

# A data frame
set.seed(42)
n <- 5L
data <- data.frame(
  index = 1:n,
  symbol = letters[1:n],
  x = runif(n),
  y = rnorm(n)
)

# Write to tab-delimited file
pathname <- tempfile(fileext=".tsv")
writeDataFrame(data, file=pathname)

# Append another set of rows
writeDataFrame(data, file=pathname, append=TRUE, header=NULL, col.names=FALSE)

# There should only be one header and one set of column names
print(readLines(pathname))

