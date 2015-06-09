message("*** Testing gcat()...")

library("R.utils")

gcat("Hello world!\n")

a <- 1
gcat("a=${a}\n")

gcat(GString("a=${a}\n"))

message("*** Testing gcat()...DONE")


message("*** Testing gstring()...")

a <- 2
s <- gstring("a=${a}\n")
print(s)

cat("a=${a}\n", file="foo.txt")
s <- gstring(file="foo.txt")
print(s)
file.remove("foo.txt")

pathT <- tempdir()
pathname <- file.path(pathT, "foo.txt")
cat("a=${a}\n", file=pathname)
s <- gstring(file="foo.txt", path=pathT)
print(s)
file.remove(pathname)

message("*** Testing gcat()...DONE")
