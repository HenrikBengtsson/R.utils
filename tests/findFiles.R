message("Testing findFiles()...")

library("R.utils")

path <- system.file(".", package="R.utils")

pathname <- findFiles(paths=path, firstOnly=TRUE)
print(pathname)

pathnames <- findFiles(paths=path, firstOnly=FALSE)
str(pathnames)

pathnames <- findFiles(paths=path, recursive=TRUE, firstOnly=FALSE)
str(pathnames)

pathnames <- findFiles(pattern="[.]rds$", paths=path, recursive=TRUE, firstOnly=FALSE)
str(pathnames)

message("Testing findFiles()...DONE")
