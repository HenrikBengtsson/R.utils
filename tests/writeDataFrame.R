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

# Write to tab-delimited file (using a connection)
pathname <- tempfile(fileext=".tsv")
con <- file(pathname, open="w")
writeDataFrame(data, file=con, createdBy="R.utils")
close(con)

# Append another set of rows
writeDataFrame(data, file=pathname, append=TRUE)

# There should only be one header and one set of column names
print(readLines(pathname))

# Overwrite using a connection
con <- file(pathname, open="w")
writeDataFrame(data, file=con, overwrite=TRUE)
close(con)

# Overwrite using a filename
writeDataFrame(data, file=pathname, overwrite=TRUE)

