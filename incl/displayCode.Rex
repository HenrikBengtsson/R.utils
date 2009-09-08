file <- system.file("DESCRIPTION", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file)

file <- system.file("NEWS", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file, numerate=FALSE, lines=100:110, wrap=65)

file <- system.file("NEWS", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file, lines=100:110, wrap=65, highlight=c(101,104:108))
