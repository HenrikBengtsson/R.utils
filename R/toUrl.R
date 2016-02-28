###########################################################################/**
# @RdocDefault toUrl
#
# @title "Converts a pathname into a URL"
#
# \description{
#  @get "title" starting with \code{file://}.
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character @vector of pathnames to be made into URLs.}
#   \item{safe}{If @TRUE, certain "unsafe" characters are escaped.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character @vector.
# }
#
# @author
#
# \seealso{
#   @see "utils::URLencode".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("toUrl", "default", function(pathname, safe=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  toURLEncodedPath <- function(pathname, encodeUrlSyntax=FALSE, ...) {
    hexDigits <- c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
                                                "A", "B", "C", "D", "E", "F");
    # "...Only alphanumerics [0-9a...zA...Z], the special characters
    # "$-_.+!*'()," [not including the quotes - ed], and reserved
    # characters used for their reserved purposes may be used unencoded
    # within a URL." [1]
    # "Further, to allow actual URLs to be encoded, this little converter
    # does not encode URL syntax characters (the ";", "/", "?", ":", "@",
    # "=", "#" and "&" characters)..." [1]
    # References:
    # [1] http://www.blooberry.com/indexdot/html/topics/urlencoding.htm

    # Note '-' must be last!!!
    if (encodeUrlSyntax == TRUE) {
      keepSet <- "[0-9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ$_.+!*'(),-]";
    } else {
      keepSet <- "[0-9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ$_.+!*'(),;/?:@=#&-]";
    }
    res <- NULL;

    for (k in seq_len(nchar(pathname, type="chars"))) {
      ch <- substring(pathname, k, k);
      re <- regexpr(keepSet, ch);
      if (re == -1) {
        ch <- charToInt(ch);
        hi  <- floor(ch/16);
        low <- ch - 16*hi;
        hi  <- hexDigits[hi+1];
        low <- hexDigits[low+1];
        ch <- paste("%", hi, low, sep="");
      }
      res <- c(res, ch);
    }

    paste(res, collapse="")
  } # toURLEncodedPath()


  # Argument 'pathname':
  url <- as.character(pathname);

  nUrls <- length(url);

  # Nothing to do?
  if (nUrls == 0L) return(character(0L));

  # Multiple pathnames?
  if (nUrls > 1L) {
    res <- sapply(url, FUN=toUrl, safe=safe, ...);
    return(res);
  }

  # Convert backslashes to forward ones
  url <- gsub("[\\]", "/", url);

  # Anything that contains at least two alphabetic letters followed
  # by a colon is assumed to be a protocol, e.g. http:, file: and mailto:.
  hasProtocol <- (regexpr("^[abcdefghijklmnopqrstuvwxyz]+:", url) != -1L);

  # If prefix is missing, assume a file...
  if (!hasProtocol) {
    if (!isAbsolutePath(url))
      url <- paste(getwd(), url, sep="/");
    url <- paste(sep="", "file://", url);
  }

  # Make a "safe" URL
  if (safe)
    url <- toURLEncodedPath(url);

  url;
})

###########################################################################
# HISTORY:
# 2014-04-06
# o Vectorized toUrl().
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
