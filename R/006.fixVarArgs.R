# Added '...' to some base functions. These will later be
# turned into default functions by setMethodS3().

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Methods in 'base'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# USED TO DO: getOption <- appendVarArgs(getOption)
getOption <- function(...) UseMethod("getOption")
setMethodS3("getOption", "default", function(...) {
  base::getOption(...)
})

# USED TO DO: isOpen <- appendVarArgs(isOpen)
isOpen <- function(...) UseMethod("isOpen")
setMethodS3("isOpen", "default", function(...) {
  base::isOpen(...)
})

# USED TO DO: parse <- appendVarArgs(parse)
parse <- function(...) UseMethod("parse")
setMethodS3("parse", "default", function(...) {
  base::parse(...)
})

# Other fixes to avoid .Internal()
cat <- function(...) UseMethod("cat")
setMethodS3("cat", "default", function(...) {
  base::cat(...)
})


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Methods in 'base'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if (exists("timestamp", mode="function")) {
  # USED TO DO: timestamp <- appendVarArgs(timestamp)
  timestamp <- function(...) UseMethod("timestamp")
  setMethodS3("timestamp", "default", function(...) {
    utils::timestamp(...)
  })
}
