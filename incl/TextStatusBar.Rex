# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Read all HTML files in the base package
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
path <- system.file("html", package="base");
files <- list.files(path, full.names=TRUE)
nfiles <- length(files)

cat(sprintf("Reading %d files in %s:\n", nfiles, path))

# Create a status bar with four labels
sb <- TextStatusBar("File: %-*s [%3.0f%% %6.0f lines %-8s]", 
                hfill=1, file="", progress=0, nlines=0, time="")

nlines <- 0
for (kk in seq(length=nfiles)) {
  file <- files[kk]

  # Update the status bar
  if (sb) {
    setLabel(sb, "progress", 100*kk/nfiles)
    if (kk %% 10 == 1 || kk == nfiles)
      setLabel(sb, "file", substr(basename(file), 1, 44))

    size <- file.info(file)$size/1024;
    # popMessage() calls update() too
    popMessage(sb, sprintf("Processing %s (%.2fkB)", 
                                       basename(file), size))
    flush(sb)
  }

  # Read the file
  lines <- readLines(file)
  nlines <- nlines + length(lines)

  # Emulate a slow process
  if (interactive()) Sys.sleep(rexp(1, rate=40))

  # Update the status bar
  if (sb) {
    setLabel(sb, "nlines", nlines)
    setLabel(sb, "time", format(Sys.time(), "%H:%M:%S"))
    update(sb)
  }
}
cat("\n")
