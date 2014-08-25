# Vector
cat("Original vector:\n")
x <- c(letters[1:8], LETTERS[1:8])
print(x)

cat("Sorting with 'C' locale:\n")
y1 <- withLocale(sort(x), "LC_COLLATE", "C")
print(y1)

cat("Sorting with an 'English' locale:\n")
y2 <- withLocale(sort(x), "LC_COLLATE", c("en_US", "en_US.UTF8", "English_United States.1252"))
print(y2)
