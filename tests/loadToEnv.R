library("R.utils")

file <- tempfile()

x <- 1:10
save(x, file=file)

env <- loadToEnv(file)
print(env)
print(ls(envir=env))

file.remove(file)
