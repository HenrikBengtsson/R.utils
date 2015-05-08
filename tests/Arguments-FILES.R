library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# getReadablePathname()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
paths <- c(".", getwd(), R.home(), system.file(package="R.utils"))
for (path in paths) {
  for (mustExist in c(FALSE, TRUE)) {
    path2 <- Arguments$getReadablePath(path, mustExist=mustExist)
    str(list(path=path, path2=path2))
  }
}

# Missing values
pathname <- Arguments$getReadablePathname(NA_character_, mustExist=FALSE)
stopifnot(is.na(pathname))

path <- Arguments$getReadablePath(NA_character_, mustExist=FALSE)
stopifnot(is.na(path))

