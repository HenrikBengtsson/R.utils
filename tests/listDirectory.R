library("R.utils")

path <- system.file(package="R.utils")
print(listDirectory(path))
print(listDirectory(path, pattern="DESCRIPTION"))
print(listDirectory(path, recursive=TRUE))
print(listDirectory(path, recursive=+Inf))
print(listDirectory(path, recursive=FALSE))
print(listDirectory(path, recursive=0L))
print(listDirectory(path, recursive=1L))
print(listDirectory(path, recursive=2L))

## Full names
print(listDirectory(path, recursive=2L, fullNames=TRUE))

## Non-existing
print(listDirectory("unknown-path"))

