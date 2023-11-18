library("R.utils")
warnifnot <- egsub("stop", "warning", stopifnot, value=FALSE)

message("Absolute and relative paths ...")

message("- Absolute and relative path of getwd()")
stopifnot(identical(getAbsolutePath("."), getwd()))
stopifnot(identical(getRelativePath("."), "."))

message("- Tilde expansion")
pathH0 <- normalizePath("~")
print(pathH0)
pathH <- normalizePath("~", winslash = "/")
print(pathH)
pathHA <- getAbsolutePath(pathH)
print(pathHA)

pathA <- getAbsolutePath("~", expandTilde=TRUE)
print(pathA)
warnifnot(identical(tolower(pathA), tolower(pathH)))

pathR <- getRelativePath("~")
print(pathR)
warnifnot(identical(tolower(getAbsolutePath(pathR)), tolower(pathH)))

pathR <- getRelativePath("~", caseSensitive=TRUE)
print(pathR)


message("- ~/../Documents")
pathA <- getAbsolutePath("~/../Documents", expandTilde=TRUE)
pathA0 <- file.path(getParent(pathH), "Documents")
## Account for the case when getParent(pathH) = "C:/", which in case
## we get C://Documents instead of C:/Documents
pathA0 <- normalizePath(pathA0, winslash = "/")
utils::str(list(pathA = pathA, pathA0 = pathA0))
stopifnot(pathA == pathA0)

message("- /tmp/")
pathA <- getAbsolutePath("/tmp/", expandTilde=TRUE)
print(pathA)
stopifnot(identical(pathA, "/tmp"))


message("- Microsoft Windows UNC paths")
stopifnot(identical(getAbsolutePath("//vinata/biomed"), "//vinata/biomed"))
stopifnot(identical(getAbsolutePath("//vinata///biomed"), "//vinata/biomed"))

message("- Vector of files")
paths <- c(".", "..", getwd())
print(paths)
pathsA <- getAbsolutePath(paths)
print(pathsA)
pathsR <- getRelativePath(paths)
print(pathsR)
pathsAR <- getRelativePath(pathsA)
print(pathsAR)
pathsRA <- getAbsolutePath(pathsR)
print(pathsRA)

# Sanity checks
stopifnot(all(isAbsolutePath(pathsA)))
stopifnot(all(!isAbsolutePath(pathsR)))
stopifnot(all(pathsRA == pathsA))
stopifnot(all(pathsAR == pathsR))


message("- Paths relative to given directories")
stopifnot(getRelativePath("foo", "foo") == ".")
stopifnot(getRelativePath("foo/bar", "foo") == "bar")
stopifnot(getRelativePath("foo/bar", "foo/bar/yah") == "..")
stopifnot(getRelativePath("foo/bar/cool", "foo/bar/yah/sub/") == "../../cool")
stopifnot(getRelativePath("/tmp/foo/", "/tmp/") == "foo")
stopifnot(getRelativePath("/tmp/bar/", "/bar/foo/") == "../../tmp/bar")
stopifnot(getRelativePath("C:/foo/bar/", "C:/bar/") == "../foo/bar")
stopifnot(getRelativePath("C:/foo/bar/", "D:/bar/") == "C:/foo/bar")

message("Absolute and relative paths ... DONE")
