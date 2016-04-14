library("R.utils")

## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Assert that auto delete works
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Temporary files before
tfiles <- dir(path=tempdir(), full.names=TRUE)

## Create temporary file on the fly without any references to it
bfr <- readLines(tmpfile("Hello world!\n"))
print(bfr)

## Find new temporary file
tfile <- setdiff(dir(path=tempdir(), full.names=TRUE), tfiles)
print(tfile)
stopifnot(file.exists(tfile))

## The on-the-fly temporary file is removed
## whenever the garbage collector runs
gc()
stopifnot(!file.exists(tfile))
