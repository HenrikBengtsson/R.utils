# Create a large matrix
if (require(R.native)) {
  nrow <- 3000000;
} else {
  nrow <- 30000;
}
ncol <- 9
x <- seq(from=1, to=nrow*ncol)
x <- matrix(x, ncol=ncol)
str(x)

# Calculate the medians for each row without NAs
tOddA <- system.time({
  y <- rowMedians(x, na.rm=FALSE)
})

x[10] <- NA

# Calculate the medians for each row not excluding NAs
tOddB <- system.time({
  y <- rowMedians(x, na.rm=FALSE)
})

# Calculate the medians for each row excluding NAs
tOddC <- system.time({
  y <- rowMedians(x, na.rm=TRUE)
})


# Create a large matrix
ncol <- 10
x <- seq(from=1, to=nrow*ncol)
x <- matrix(x, ncol=ncol)
str(x)

# Calculate the medians for each row without NAs
tEvenA <- system.time({
  y <- rowMedians(x, na.rm=FALSE)
})

x[10] <- NA

# Calculate the medians for each row not excluding NAs
tEvenB <- system.time({
  y <- rowMedians(x, na.rm=FALSE)
})

# Calculate the medians for each row excluding NAs
tEvenC <- system.time({
  y <- rowMedians(x, na.rm=TRUE)
})


print(list(
  "Odd columns. Without NAs. na.rm=FALSE"=tOddA,
  "Odd columns. With NAs. na.rm=FALSE"=tOddB,  
  "Odd columns. With NAs. na.rm=TRUE"=tOddC,  
  "Even columns. Without NAs. na.rm=FALSE"=tEvenA,  
  "Even columns. With NAs. na.rm=FALSE"=tEvenB,
  "Even columns. With NAs. na.rm=TRUE"=tEvenC,  
  "Without NAs: odd/even columns"=tOddA/tEvenA,
  "With NAs: odd/even columns"=tOddC/tEvenC,
  "Without/with NAs"=tOddA/tOddB,
  "na.rm=FALSE/na.rm=TRUE"=tOddB/tOddC
))
