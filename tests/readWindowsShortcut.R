library("R.utils")


pathname <- system.file("data-ex/HISTORY.LNK", package="R.utils")
lnk <- readWindowsShortcut(pathname, verbose=TRUE)

# Print all information
print(lnk)

# Get the relative path to the target file
history <- file.path(dirname(pathname), lnk$relativePath)

# Alternatively, everything in one call
history <- filePath(pathname, expandLinks="relative")
