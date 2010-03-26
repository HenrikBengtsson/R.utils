# Added '...' to some base functions. These will later be
# turned into default functions by setMethodS3().

getOption <- appendVarArgs(getOption)
inherits <- appendVarArgs(inherits)
isOpen <- appendVarArgs(isOpen)
parse <- appendVarArgs(parse)

if (exists("timestamp", mode="function"))
  timestamp <- appendVarArgs(timestamp)


############################################################################
# HISTORY:
# 2006-05-09
# o Now '...' is added to parse() in zzz.R.
# 2006-03-28
# o Added fix to fresh timestamp() in utils.
# 2005-05-26
# o Added fix for default getOption().
# 2005-02-15
# o Created to please R CMD check.
############################################################################
