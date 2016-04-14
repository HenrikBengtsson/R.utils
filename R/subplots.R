#########################################################################/**
# @RdocDefault subplots
#
# @title "Creates a grid of subplots"
#
# \description{
#   @get "title" in the current figure. If arguments
#   \code{nrow} and \code{ncol} are given a \code{nrow}-by-\code{ncol}
#   grid of subplots are created. If only argument \code{n} is given
#   then a r-by-s grid is created where |r-s| <= 1, i.e. a square or almost
#   a square of subplots is created. If \code{n} and \code{nrow} is
#   given then a grid with \code{nrow} rows and at least \code{n} subplots
#   are created. Similar if \code{n} and \code{ncol} is given.
#   The argument \code{byrow} specifies if the order of the subplots
#   should be rowwise (\code{byrow=TRUE}) or columnwise.
# }
#
# @synopsis
#
# \arguments{
#   \item{n}{If given, the minimum number of subplots.}
#   \item{nrow}{If given, the number of rows the grid of subplots should
#     contain.}
#   \item{ncol}{If given, the number of columns the grid of subplots should
#     contain.}
#   \item{byrow}{If @TRUE, the panels are ordered row by row in the grid,
#     otherwise column by column.}
#   \item{...}{Not used.}
# }
#
# \value{Returns the @matrix containing the order of plots.}
#
# @author
#
# \examples{
#    subplots(nrow=2, ncol=3)  # 2-by-3 grid of subplots
#    subplots(n=6, nrow=2)     # 2-by-3 grid of subplots
#    subplots(n=5, ncol=2)     # 3-by-2 grid of subplots
#    subplots(1)               # (Reset) to a 1-by-1 grid of subplots
#    subplots(2)               # 1-by-2 grid of subplots
#    subplots(3)               # 2-by-2 grid of subplots
#    l <- subplots(8)          # 3-by-3 grid of subplots
#    layout.show(length(l))
# }
#
# \seealso{
#   @see "graphics::layout" and \code{layout.show}().
# }
#*/#########################################################################
setMethodS3("subplots", "default", function(n=1, nrow=NULL, ncol=NULL,
                                                          byrow=TRUE, ...) {
  # If a vector was passed, then use the length of the vector for 'n'
  if (!missing(n) && length(n) > 1)
    n <- length(n);

  if (!is.null(nrow) && !is.null(ncol) && !missing(n)) {
    if (n != nrow*ncol)
      stop("Arguments 'nrow' and 'ncol' is incompatible with argument 'n'. Do you really want to specify all three?!");
  }

  if (missing(n)) {
    layout <- matrix(seq_len(nrow*ncol), nrow=nrow, ncol=ncol, byrow=byrow);
  } else {
    if (n == 1) {
      nrow <- ncol <- 1
    } else if (!is.null(nrow)) {
      ncol <- ceiling(n / nrow);
    } else if (!is.null(ncol)) {
      nrow <- ceiling(n / ncol);
    } else {
      side <- sqrt(n);
      nrow <- floor(side);
        ncol <- ncol-1;
      ncol <- ceiling(n / nrow);
      if (ncol - nrow > 1) {
        nrow <- nrow+1;
        ncol <- ceiling(n / nrow);
      }
    }
    layout <- matrix(seq_len(nrow*ncol), nrow=nrow, ncol=ncol, byrow=byrow);
  }

  layout(layout, ...);
  invisible(layout);
})


############################################################################
# HISTORY:
# 2008-12-17
# o Created by extracting it from subplots() of the Device class in the
#   obsolete R.graphics package.
############################################################################
