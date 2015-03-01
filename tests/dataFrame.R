library("R.utils")

df <- dataFrame(colClasses=c(a="integer", b="double"), nrow=10)
df[,1] <- sample(1:nrow(df))
df[,2] <- rnorm(nrow(df))
print(df)
