# Added '...' to some base functions. These will later be
# turned into default functions by setMethodS3().

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Methods in 'base'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# USED TO DO: getOption <- appendVarArgs(getOption);
getOption <- function(...) UseMethod("getOption");
setMethodS3("getOption", "default", function(...) {
  base::getOption(...);
})

# USED TO DO: inherits <- appendVarArgs(inherits)
inherits <- function(...) UseMethod("inherits");
setMethodS3("inherits", "default", function(...) {
  base::inherits(...);
})

# USED TO DO: isOpen <- appendVarArgs(isOpen)
isOpen <- function(...) UseMethod("isOpen");
setMethodS3("isOpen", "default", function(...) {
  base::isOpen(...);
})

# USED TO DO: parse <- appendVarArgs(parse)
parse <- function(...) UseMethod("parse");
setMethodS3("parse", "default", function(...) {
  base::parse(...);
})

# Other fixes to avoid .Internal()
cat <- function(...) UseMethod("cat");
setMethodS3("cat", "default", function(...) {
  base::cat(...);
})


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Methods in 'base'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if (exists("timestamp", mode="function")) {
  # USED TO DO: timestamp <- appendVarArgs(timestamp);
  timestamp <- function(...) UseMethod("timestamp");
  setMethodS3("timestamp", "default", function(...) {
    utils::timestamp(...);
  })
}


############################################################################
# HISTORY:
# 2012-03-06
# o Replaced several appendVarArgs() with explicit default functions
#   in order to avoid copying functions with .Internal() calls.
# 2006-05-09
# o Now '...' is added to parse() in zzz.R.
# 2006-03-28
# o Added fix to fresh timestamp() in utils.
# 2005-05-26
# o Added fix for default getOption().
# 2005-02-15
# o Created to please R CMD check.
############################################################################
