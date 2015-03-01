library("R.utils")

pathT <- tempdir()
mprint(pathT)

path <- file.path(pathT, "foo", "bar")
mprint(path)
mkdirs(path)
stopifnot(isDirectory(path))

paths <- c(dirname(path), path)
stopifnot(all(isDirectory(paths)))

removeDirectory(dirname(path), recursive=TRUE)


# Windows has a undocumented "feature" that for some set
# ups on some machines (not all) it will for instance
# silently drop a trailing period and create the directory
# without it, e.g. 'G.S.' becomes 'G.S', cf.help("dir.create").
# See also https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=15996
path <- file.path(pathT, "G.S.")
mprint(path)
mkdirs(path)
tryCatch({
  stopifnot(isDirectory(path))
  removeDirectory(path)
}, error = function(ex) {
  mprint(ex)
})
