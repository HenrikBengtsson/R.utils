# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# WARNING:
.Windows.Sys.readlink <- function(path) {
  if (!file.exists(path)) return(NA_character_)
  
  ## If equal to tempdir(), then we assume it's not a symbolic link
  if (path == tempdir()) return(path)

  # Only files with zero size are candidates for symbolic file links
  info <- file.info(path)
  if (is.na(info$size) || info$size > 0) return("")

  ## Skip on Windows?
  ## REASON/BACKGROUND:
  ## The below shell("dir", ...) approach is very slow (~20-30s) for folders
  ## with 1,000s of files and folders, e.g. the parent folder of tempdir()
  ## on CRAN's MS Windows hosts. /Uwe Ligges 2023-11-21, /HB 2024-02-17
  ## See https://github.com/HenrikBengtsson/R.utils/issues/152
  if (!isTRUE(getOption("R.utils::Sys.readlinks2.Windows", TRUE))) {
    return("")
  }
  
  # Temporarily change working directory
  path <- normalizePath(path, mustWork=FALSE)
  dir <- dirname(path)
  opwd <- setwd(dir)
  on.exit(setwd(opwd))
  path <- basename(path)

  # List all files
  bfr <- shell("dir", shell=Sys.getenv("COMSPEC"),
                      mustWork=TRUE, intern=TRUE)

  setwd(opwd)

  # Search for symbolic file or directory links
  pattern <- sprintf(".*[ ]+<SYMLINK(|D)>[ ]+(%s)[ ]+\\[(.+)\\][ ]*$", path)

  # On R > 4.3, bfr encoding may be problematic in some locales
  # https://github.com/HenrikBengtsson/R.utils/issues/152
  bfr <- suppressWarnings(grep(pattern, bfr, value=TRUE))
  # Not a symbolic link?
  if (length(bfr) == 0L) return("")

  # Sanity check
  link <- gsub(pattern, "\\2", bfr)
  .stop_if_not(identical(link, path))

  # Extract the target
  target <- gsub(pattern, "\\3", bfr)

  # Relative path?
  if (!isAbsolutePath(target)) {
    # Prepend working directory
    target <- file.path(dir, target)
    # Return the relative pathname, iff possible
    target <- getRelativePath(target)
  }

  target
} # .Windows.Sys.readlink()
