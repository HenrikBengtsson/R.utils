###########################################################################/**
# @RdocFunction hsize
# @alias hsize.numeric
# @alias hsize.object_size
#
# @title "Convert byte sizes into human-readable byte sizes"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{size}{A @numeric @vector of sizes.}
#   \item{digits}{Number of digits to be presented in the give unit.}
#   \item{units}{A @character string specifying type of units to use.}
#   \item{bytes}{The string used for units of bytes without a prefix.
#    Applied only if \code{units="auto"}.}
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
setMethodS3("hsize", "numeric", function(sizes, digits=1L, units="auto", standard=getOption("hsize.standard", "IEC"), bytes=getOption("hsize.standard", "B"), ...) {
  standard <- match.arg(standard, choices=c("IEC", "JEDEC", "SI"))
  stopifnot(is.character(units), length(units) == 1L)
  stopifnot(is.numeric(digits), length(digits) == 1L)
  stopifnot(is.character(bytes), length(bytes) == 1L)
  nsizes <- length(sizes)

  kunits <- list(
    IEC   = c(bytes=0, B=0, KiB=1, MiB=2, GiB=3, TiB=4, PiB=5, EiB=6, ZiB=7, YiB=8),
    JEDEC = c(bytes=0, B=0, KB=1, MB=2, GB=3),
    SI    = c(bytes=0, B=0, kB=1, MB=2, GB=3, TB=4, PB=5, EB=6, ZB=7, YB=8)
  )

  ## Infer standard from unit?
  if (units != "auto") {
    idx <- which(sapply(kunits, FUN=function(x) any(units == names(x))))
    if (length(idx) == 0L) {
      stop(sprintf("Unknown units: %s", sQuote(units)))
    }
    standard <- names(idx[1])
  }
  kunits <- kunits[[standard]]
  base <- switch(standard, IEC=1024, JEDEC=1024, SI=1000)

  if (units == "auto") {
    ## Keep the "bytes" alternative specified
    excl <- setdiff(c("bytes", "B"), bytes)
    kunits <- kunits[-which(names(kunits) == excl)]

    exps <- log(sizes, base=base)
    exps <- floor(exps)
    exps[exps < 0] <- 0
    maxexp <- max(kunits)
    exps[exps > maxexp] <- maxexp
    units <- names(kunits)[exps+1L]
    positions <- rep(digits, length.out=nsizes)
    positions[exps == 0] <- 0L
  } else {
    exps <- kunits[units]
    if (is.na(exps)) {
      stop(sprintf("Unknown units for standard %s: %s", sQuote(standard), sQuote(units)))
    }
    units <- rep(units, times=nsizes)
  }

  ## Use '1 byte' (not '1 bytes')
  ones <- which(sizes == 1)
  if (length(ones) > 0) units[ones] <- gsub("s$", "", units[ones])

  sizes <- round(sizes / base^exps, digits=digits)
  positions <- rep(digits, length.out=nsizes)
  positions[exps == 0] <- 0L
  sprintf("%.*f %s", positions, sizes, units)
})

setMethodS3("hsize", "object_size", function(sizes, ...) {
  hsize(as.numeric(sizes), ...)
})
