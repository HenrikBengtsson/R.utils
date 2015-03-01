library("R.utils")

# All predefined types
print(colClasses("-?cdfilnrzDP"))
## [1] "NULL"      "NA"        "character" "double"
## [5] "factor"    "integer"   "logical"   "numeric"
## [9] "raw"       "complex"   "Date"      "POSIXct"

# A string in column 1, integers in column 4 and 5, rest skipped
print(colClasses("c--ii----"))
## [1] "character" "NULL"      "NULL"      "integer"
## [5] "integer"   "NULL"      "NULL"      "NULL"
## [9] "NULL"

# Repeats and custom column classes
c1 <- colClasses("3c{MyClass}3{foo}")
print(c1)
## [1] "character" "character" "character" "MyClass"
## [5] "foo"       "foo"       "foo"

# Passing repeats and class names using sprintf() syntax
c2 <- colClasses("%dc{%s}%d{foo}", 3, "MyClass", 3)
stopifnot(identical(c1, c2))

# Repeats of a vector of column classes
c3 <- colClasses("3{MyClass,c}")
print(c3)
## [1] "MyClass"   "character" "MyClass"   "character"
## [4] "MyClass"   "character"

# Large number repeats
c4 <- colClasses("321{MyClass,c,i,d}")
c5 <- rep(c("MyClass", "character", "integer", "double"), times=321)
stopifnot(identical(c4, c5))
