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


## Recursive searching
pathnames0 <- findFiles(paths=path, recursive=FALSE, firstOnly=FALSE)
str(pathnames)

pathnames <- findFiles(paths=path, recursive=0L, firstOnly=FALSE)
str(pathnames)
stopifnot(identical(pathnames, pathnames0))

pathnamesInf <- findFiles(paths=path, recursive=TRUE, firstOnly=FALSE)
str(pathnamesInf)
stopifnot(length(pathnamesInf) >= length(pathnames0))

pathnames <- findFiles(paths=path, recursive=+Inf, firstOnly=FALSE)
str(pathnames)
stopifnot(identical(pathnames, pathnamesInf))

pathnames2 <- findFiles(paths=path, recursive=2L, firstOnly=FALSE)
str(pathnames2)
stopifnot(length(pathnames2) >= length(pathnames0))
stopifnot(length(pathnames2) <= length(pathnamesInf))


message("Testing findFiles()...DONE")
