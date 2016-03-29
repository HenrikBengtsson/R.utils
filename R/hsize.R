###########################################################################/**
# @RdocFunction hsize
# @alias hsize.numeric
# @alias hsize.object_size
#
# @title "Returns a human-readable size string"
#
# \description{
#  @get "title" from a numeric value.
# }
#
# @synopsis
#
# \arguments{
#   \item{size}{A @numeric @vector of sizes.}
#   \item{digits}{Number of digits to be presented in the give unit.}
#   \item{unit}{A @character string specifying type of units to use.}
#   \item{...}{Not used.}
# }
#
# \value{
#  A @character @vector.
# }
#
# @examples "../incl/hsize.Rex"
#
# @author
#
# \seealso{
#  @see "utils::object.size".
# }
#
# @keyword programming
# @keyword internal
#*/###########################################################################
setMethodS3("hsize", "numeric", function(sizes, digits=1L, units="auto", standard=getOption("hsize.standard", "IEC"), ...) {
  standard <- match.arg(standard, choices=c("IEC", "SI"))
  stopifnot(is.character(units), length(units) == 1L)
  stopifnot(is.numeric(digits), length(digits) == 1L)

  kunits <- list(
    IEC = c("B", "KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"),
    SI  = c("B", "kB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB")
  )

  ## Infer standard from unit?
  if (units != "auto" && units != "bytes") {
    idx <- which(sapply(kunits, FUN=function(x) any(units == x)))
    if (length(idx) == 0L) {
      stop(sprintf("Unknown units: %s", sQuote(units)))
    }
    standard <- names(kunits)[idx[1]]
  }
  kunits <- kunits[[standard]]

  if (standard == "IEC") {
    base <- 1024
  } else if (standard == "SI") {
    base <- 1000
  }

  if (units == "auto") {
    exp <- log(sizes, base=base)
    exp <- floor(exp)
    exp[exp < 0] <- 0
    exp[exp > length(kunits)-1] <- length(kunits)-1
    units <- kunits[exp + 1L]
    positions <- rep(digits, length.out=length(sizes))
    positions[exp == 0] <- 0L
  } else if (units == "bytes") {
    exp <- 0L
  } else {
    exp <- match(units, kunits) - 1L
    if (is.na(exp)) {
      stop(sprintf("Unknown units for standard %s: %s", sQuote(standard), sQuote(units)))
    }
  }
  sizes <- round(sizes / base^exp, digits=digits)
  positions <- rep(digits, length.out=length(sizes))
  positions[exp == 0] <- 0L
  sprintf("%.*f %s", positions, sizes, units)
})

setMethodS3("hsize", "object_size", function(sizes, ...) {
  hsize(as.numeric(sizes), ...)
})
