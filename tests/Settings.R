library("R.utils")

# Load settings from file, or create default settings
basename <- "some.settings"
settings <- Settings$loadAnywhere(basename)

if (is.null(settings))
  settings <- Settings(basename)

print(isModified(settings))

# Set default options, if missing.
setOption(settings, "graphics/verbose", TRUE, overwrite=FALSE)
setOption(settings, "io/verbose", Verbose(threshold=-1), overwrite=FALSE)

# Save and reload settings
path <- tempdir()
str(list(path=path, file.info(path), file_test("-d", path)))
stopifnot(file_test("-d", path), isDirectory(path))

saveAnywhere(settings, path=path)
settings2 <- Settings$loadAnywhere(basename, paths=path)
print(isModified(settings2))

# Clean up
file.remove(getLoadedPathname(settings2))

# Assert correctness
stopifnot(equals(settings, settings2))

print(isModified(settings))


