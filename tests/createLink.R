library("R.utils")
verbose <- Verbose(threshold=-1)

pathname <- file.path(tempdir(), "foo.txt")
pathname <- getAbsolutePath(pathname)
cat(file=pathname, "Hello world!\n")

methods <- c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut")
for (method in methods) {
  verbose && enterf(verbose, "Method '%s'", method)
  verbose && cat(verbose, "Target: ", pathname)
  link <- sprintf("%s-to-%s", method, basename(pathname))
  verbose && cat(verbose, "Link to create: ", link)
  tryCatch({
    linkR <- createLink(link=link, target=pathname, method=method)
    verbose && cat(verbose, "Link returned: ", linkR)
    if (linkR != link) {
      throw("Requested and returned link are not the same: ", sQuote(linkR), " != ", sQuote(link));
    }
  }, error = function(ex) {
    verbose && cat(verbose, "Failed to create link: ", ex$message)
  })
  verbose && exit(verbose)
}

if (isFile(pathname)) file.remove(pathname)
