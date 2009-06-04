###########################################################################/**
# @RdocDefault splitUrl
#
# @title "Splits a URL into its protocol, domain, context and parameters"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character string of a URL.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @list with @character elements \code{protocol}, \code{domain}, 
#  \code{context}, and \code{parameters}.
# }
#
# @author
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("splitUrl", "default", function(pathname, ...) {
  pathname <- Arguments$getCharacter(pathname);
  if (length(pathname) == 0)
    return(NULL);

  if (!hasUrlProtocol(pathname))
    throw("Can not split URL. Not a valid URL: ", pathname);

  # Get the protocol
  pattern <- "^([abcdefghijklmnopqrstuvwxyz]+)(://)(.*)";
  protocol <- gsub(pattern, "\\1", pathname);
  tail <- gsub(pattern, "\\3", pathname);

  domain <- NULL;
  context <- NULL;
  parameters <- NULL;

  # Get the domain 
  parts <- strsplit(tail, split="/", fixed=TRUE)[[1]];
  if (length(parts) > 0) {
    domain <- parts[1];
    tail <- paste(parts[-1], collapse="/");

    # Get the context
    parts <- strsplit(tail, split="?", fixed=TRUE)[[1]];
    if (length(parts) > 0) {
      context <- parts[1];
      tail <- paste(parts[-1], collapse="/");

      # Get the parameters
      parts <- strsplit(tail, split="&", fixed=TRUE)[[1]];
      if (length(parts) > 0) {
        parts <- strsplit(parameters, split="=", fixed=TRUE);
        if (length(parts) > 0) {
          names <- unlist(lapply(parts, FUN=function(x) x[1]));
          parameters <- unlist(lapply(parts, FUN=function(x) x[2]));
          names(parameters) <- names;
        }
      }
    }
  }

  # Get parameters
  list(protocol=protocol, domain=domain, context=context, parameters=parameters);
})





###########################################################################
# HISTORY: 
# 2005-07-21
# o Created.
###########################################################################
