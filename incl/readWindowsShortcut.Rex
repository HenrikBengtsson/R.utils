filename <- system.file("data-ex/HISTORY.LNK", package="R.utils")
lnk <- readWindowsShortcut(filename)

# Print all information
print(lnk)

# Get the relative path to the target file
history <- file.path(dirname(filename), lnk$relativePath)

# Alternatively, everything in one call
history <- filePath(filename, expandLinks="relative")

file.show(history)

