library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Read all HTML files in the base package
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- system.file(package="base")
files <- list.files(path, recursive=TRUE, full.names=TRUE)
files <- files[sapply(files, FUN=isFile)]
nfiles <- length(files)

cat(sprintf("Reading %d files in %s:\n", nfiles, path))

# Create a status bar with four labels
sb <- TextStatusBar("File: %-*s [%3.0f%% %7.0f bytes %-8s]",
                hfill=1, file="", progress=0, nbytes=0L, time="")

nbytes <- 0L
for (kk in seq_len(nfiles)) {
  file <- files[kk]

  # Update the status bar
  if (sb) {
    setLabel(sb, "progress", 100*kk/nfiles)
    if (kk %% 10 == 1 || kk == nfiles)
      setLabel(sb, "file", substr(basename(file), 1, 44))

    size <- file.info(file)$size
    # popMessage() calls update() too
    popMessage(sb, sprintf("Processing %s (%.2fkB)",
                                       basename(file), size/1024))
    flush(sb)
  }

  # Read the file
  bfr <- readBin(file, what="raw", n=size)
  nbytes <- nbytes + size

  # Emulate a slow process
  if (interactive()) Sys.sleep(rexp(1, rate=60))

  # Update the status bar
  if (sb) {
    setLabel(sb, "nbytes", nbytes)
    setLabel(sb, "time", format(Sys.time(), "%H:%M:%S"))
    update(sb)
  }
}
setLabel(sb, "file", "<done>")
update(sb)
cat("\n")

## Odds and ends
print(getLabel(sb, "progress"))
print(newline(sb))
updateLabels(sb)

