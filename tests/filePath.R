library("R.utils")

assertEqual <- function(a, b) {
  a <- gsub("\\", "/", a, fixed=TRUE)
  b <- gsub("\\", "/", b, fixed=TRUE)
  if (a != b) {
    throw("The two paths/pathnames differ: ", sQuote(a), " != ", sQuote(b));
  }
} # assertEqual()


path <- file.path("foo", "bar", "..", "name")
assertEqual(path, "foo/bar/../name")

path <- filePath("foo", "bar", "..", "name")
assertEqual(path, "foo/name")

path <- filePath("foo/bar/../name")
assertEqual(path, "foo/name")

path <- filePath(".")
assertEqual(path, ".")

path <- filePath("..")
assertEqual(path, "..")

path <- filePath("../..")
assertEqual(path, "../..")

path <- filePath("./.")
assertEqual(path, ".")

path <- filePath(".", ".")
assertEqual(path, ".")

path <- filePath(".", "..")
assertEqual(path, "..")

path <- filePath("C:/foo/..")
assertEqual(path, "C:/")




