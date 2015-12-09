library("R.utils")

message("*** mkdirs() ...")

message("*** mkdirs(..., recursive=TRUE) ...")

pathT <- tempdir()
mprint(pathT)
stopifnot(isDirectory(pathT))

path <- file.path(pathT, "foo", "bar")
mprint(path)
mkdirs(path)
stopifnot(isDirectory(path))

paths <- c(dirname(path), path)
stopifnot(all(isDirectory(paths)))

path <- dirname(path)
removeDirectory(path, recursive=TRUE)
stopifnot(!isDirectory(path))

message("*** mkdirs(..., recursive=TRUE) ... DONE")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# EXCEPTIONS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** mkdirs(..., mustWork=TRUE) ...")

path <- file.path(pathT, "foo")
res <- mkdirs(path)
stopifnot(isDirectory(path))

## Create file with same name
pathname <- file.path(path, "bar")
cat("Hello", file=pathname)
stopifnot(isFile(pathname))

res <- mkdirs(pathname)
stopifnot(isFile(pathname), !isDirectory(pathname))

res <- try(mkdirs(pathname, mustWork=TRUE), silent=TRUE)
cat(res)
stopifnot(inherits(res, "try-error"))
stopifnot(isFile(pathname), !isDirectory(pathname))

## Parent is a file, not a directory
path2 <- file.path(path, "bar", "yaa")
res <- try(mkdirs(path2, mustWork=TRUE), silent=TRUE)
cat(res)
stopifnot(inherits(res, "try-error"))
stopifnot(!isDirectory(path2))

removeDirectory(path, recursive=TRUE)
stopifnot(!isDirectory(path))

message("*** mkdirs(..., mustWork=TRUE) ... DONE")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SPECIAL:
# Windows has a undocumented "feature" that for some set
# ups on some machines (not all) it will for instance
# silently drop a trailing period and create the directory
# without it, e.g. 'G.S.' becomes 'G.S', cf.help("dir.create").
# See also https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=15996
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** mkdirs('G.S.') ...")

path <- file.path(pathT, "G.S.")
mprint(path)
mkdirs(path)
tryCatch({
  stopifnot(isDirectory(path))
  removeDirectory(path)
}, error = function(ex) {
  mprint(ex)
})

message("*** mkdirs('G.S.') ... DONE")

message("*** mkdirs() ... DONE")
