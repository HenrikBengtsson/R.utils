# Create Windows Shortcut links to a directory and a file
targets <- list(
  system.file(package="R.utils"),
  system.file("DESCRIPTION", package="R.utils")
)

for (kk in seq(along=targets)) {
  cat("Link #", kk, "\n", sep="")

  target <- targets[[kk]]
  cat("Target: ", target, "\n", sep="")

  # Name of *.lnk file
  pathname <- sprintf("%s.LNK", tempfile())

  tryCatch({
    # Will only work on Windows systems with support for VB scripting
    createWindowsShortcut(pathname, target=target)
  }, error = function(ex) {
    print(ex)
  })

  # Was it created?
  if (isFile(pathname)) {
    cat("Created link file: ", pathname, "\n", sep="")

    # Validate that it points to the correct target
    dest <- filePath(pathname, expandLinks="any")
    cat("Available target: ", dest, "\n", sep="")

    res <- all.equal(tolower(dest), tolower(target))
    if (!isTRUE(res)) { 
      msg <- sprintf("Link target does not match expected target: %s != %s", dest, target)
      cat(msg, "\n")
      warning(msg)
    }

    # Cleanup
    file.remove(pathname)
  }
}
