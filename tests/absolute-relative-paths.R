library("R.utils")

# Current directory
stopifnot(identical(getAbsolutePath("."), getwd()))
stopifnot(identical(getRelativePath("."), "."))

# Tilde expansion
stopifnot(identical(getAbsolutePath("~", expandTilde=TRUE), getAbsolutePath(normalizePath("~"))))
stopifnot(identical(getRelativePath("~"), getAbsolutePath(normalizePath("~"))))

# Microsoft Windows UNC paths
stopifnot(identical(getAbsolutePath("//vinata/biomed"), "//vinata/biomed"))
stopifnot(identical(getAbsolutePath("//vinata///biomed"), "//vinata/biomed"))

# Vector of files
paths <- c(".", "..", getwd())
pathsA <- getAbsolutePath(paths)
pathsR <- getRelativePath(paths)
pathsAR <- getRelativePath(pathsA)
pathsRA <- getAbsolutePath(pathsR)

# Sanity checks
stopifnot(all(isAbsolutePath(pathsA)))
stopifnot(all(!isAbsolutePath(pathsR)))
stopifnot(all(pathsRA == pathsA))
stopifnot(all(pathsAR == pathsR))


# Paths relative to give directories
stopifnot(getRelativePath("foo", "foo") == ".")
stopifnot(getRelativePath("foo/bar", "foo") == "bar")
stopifnot(getRelativePath("foo/bar", "foo/bar/yah") == "..")
stopifnot(getRelativePath("foo/bar/cool", "foo/bar/yah/sub/") == "../../cool")
stopifnot(getRelativePath("/foo/bar/", "/bar/foo/") == "../../foo/bar")
stopifnot(getRelativePath("C:/foo/bar/", "C:/bar/") == "../foo/bar")
stopifnot(getRelativePath("C:/foo/bar/", "D:/bar/") == "C:/foo/bar")
