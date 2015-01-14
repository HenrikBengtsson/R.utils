library("R.utils")

path <- system.file(package="R.utils")
print(listDirectory(path))
print(listDirectory(path, pattern="DESCRIPTION"))
print(listDirectory(path, recursive=TRUE))
print(listDirectory(path, recursive=1L))

# Non-existing
print(listDirectory("unknown-path"))

