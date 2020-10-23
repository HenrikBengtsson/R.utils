library("R.utils")
verbose <- Verbose(threshold=-1)

options(warn = 1L)

pathname <- tempfile("foo_", fileext = ".txt")
pathname <- getAbsolutePath(pathname)
cat(file=pathname, "Hello world!\n")

## NOTE: Not all systems support creation of links, which is
## why we need to run the tests using tryCatch().

## Try all methods at once
link <- basename(pathname)
tryCatch({
  linkR <- createLink(link=link, target=pathname)
  verbose && cat(verbose, "Link returned: ", linkR)
  linkR <- normalizePath(linkR)
  link <- normalizePath(link)
  if (linkR != link) {
    throw("Requested and returned link are not the same: ", sQuote(linkR), " != ", sQuote(link))
  }
}, error = function(ex) {
  verbose && cat(verbose, "Failed to create link: ", ex$message)
})

## One method at the time
methods <- c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut")
for (method in methods) {
  verbose && enterf(verbose, "Method '%s'", method)
  verbose && cat(verbose, "Target: ", pathname)
  link <- sprintf("%s-to-%s", method, basename(pathname))
  verbose && cat(verbose, "Link to create: ", link)
  tryCatch({
    linkR <- createLink(link=link, target=pathname, method=method)
    verbose && cat(verbose, "Link returned: ", linkR)
    linkR <- normalizePath(linkR)
    link <- normalizePath(link)
    if (linkR != link) {
      throw("Requested and returned link are not the same: ", sQuote(linkR), " != ", sQuote(link))
    }
  }, error = function(ex) {
    verbose && cat(verbose, "Failed to create link: ", ex$message)
  })
  verbose && exit(verbose)
}

if (isFile(pathname)) file.remove(pathname)
