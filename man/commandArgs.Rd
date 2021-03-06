%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  commandArgs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{commandArgs}
\alias{commandArgs}


\title{Extract command-line arguments}

\usage{
commandArgs(trailingOnly=FALSE, asValues=FALSE, defaults=NULL, always=NULL, adhoc=FALSE,
  unique=FALSE, excludeReserved=FALSE, excludeEnvVars=FALSE, os=NULL, .args=NULL, ...)
}

\description{
 Provides access to a copy of the command-line arguments supplied when
 this \R session was invoked.  This function is backward compatible with
 \code{\link[base]{commandArgs}}() of the \pkg{base} package, but adds more
 features.
}

\arguments{
  \item{trailingOnly}{If \code{\link[base:logical]{TRUE}}, only arguments after \code{--args}
    are returned.}
  \item{asValues}{If \code{\link[base:logical]{TRUE}}, a named \code{\link[base]{list}} is returned, where command
    line arguments of type \code{--foo} will be returned as \code{\link[base:logical]{TRUE}} with
    name \code{foo}, and arguments of type \code{-foo=value} will be
    returned as \code{\link[base]{character}} string \code{value} with name \code{foo}.
    In addition, if \code{-foo value} is given, this is interpreted
    as \code{-foo=value}, as long as \code{value} does not start with
    a double dash (\code{--}).}
  \item{defaults}{A \code{\link[base]{character}} \code{\link[base]{vector}} or a named \code{\link[base]{list}} of default
    arguments.  Any command-line or fixed arguments will override
    default arguments with the same name.}
  \item{always}{A \code{\link[base]{character}} \code{\link[base]{vector}} or a named \code{\link[base]{list}} of fixed
    arguments.  These will override default and command-line
    arguments with the same name.}
  \item{adhoc}{(ignored if \code{asValues=FALSE}) If \code{\link[base:logical]{TRUE}}, then
    additional coercion of \code{\link[base]{character}} command-line arguments to
    more specific data types is performed, iff possible.}
  \item{unique}{If \code{\link[base:logical]{TRUE}}, the returned set of arguments contains only
    unique arguments such that no two arguments have the same name.
    If duplicates exists, it is only the last one that is kept.}
  \item{excludeReserved}{If \code{\link[base:logical]{TRUE}}, arguments reserved by \R are excluded,
    otherwise not. Which the reserved arguments are depends on operating
    system. For details, see Appendix B on "Invoking R" in
    \emph{An Introduction to R}.}
  \item{excludeEnvVars}{If \code{\link[base:logical]{TRUE}}, arguments that assigns environment
    variable are excluded, otherwise not. As described in \code{R --help},
    these are arguments of format <key>=<value>.}
  \item{os}{A \code{\link[base]{vector}} of \code{\link[base]{character}} strings specifying which set of
     reserved arguments to be used. Possible values are \code{"unix"},
     \code{"mac"}, \code{"windows"}, \code{"ANY"} or \code{"current"}.
     If \code{"current"}, the current platform is used. If \code{"ANY"} or
     \code{\link[base]{NULL}}, all three OSs are assumed for total cross-platform
     compatibility.}
  \item{args}{A named \code{\link[base]{list}} of arguments.}
  \item{.args}{A \code{\link[base]{character}} \code{\link[base]{vector}} of command-line arguments.}
  \item{...}{Passed to \code{\link[base]{commandArgs}}() of the \pkg{base} package.}
}

\value{
  If \code{asValue} is \code{\link[base:logical]{FALSE}}, a \code{\link[base]{character}} \code{\link[base]{vector}} is returned, which
  contains the name of the executable and the non-parsed user-supplied
  arguments.

  If \code{asValue} is \code{\link[base:logical]{TRUE}}, a named \code{\link[base]{list}} containing is returned, which
  contains the the executable and the parsed user-supplied arguments.

  The first returned element is the name of the executable by which
  \R was invoked.  As far as I am aware, the exact form of this element
  is platform dependent. It may be the fully qualified name, or simply
  the last component (or basename) of the application.
  The returned attribute \code{isReserved} is a \code{\link[base]{logical}} \code{\link[base]{vector}}
  specifying if the corresponding command-line argument is a reserved
  \R argument or not.
}

\section{Backward compatibility}{
 This function should be fully backward compatible with the same
 function in the \pkg{base} package, except when littler is used
 (see below).
}
\section{Compatibility with littler}{
 The littler package provides the \code{r} binary, which parses
 user command-line options and assigns them to character vector
 \code{argv} in the global environment.
 The \code{commandArgs()} of this package recognizes \code{argv}
 arguments as well.
}

\section{Coercing to non-character data types}{
  When \code{asValues} is \code{\link[base:logical]{TRUE}}, the command-line arguments are
  returned as a named \code{\link[base]{list}}.  By default, the values of these
  arguments are \code{\link[base]{character}} strings.
  However, any command-line argument that share name with one of
  the 'always' or 'default' arguments, then its value is coerced to
  the corresponding data type (via \code{\link[methods]{as}}).
  This provides a mechanism for specifying data types other than
  \code{\link[base]{character}} strings.

  Furthermore, when \code{asValues} and \code{adhoc} are \code{\link[base:logical]{TRUE}}, any
  remaining character string command-line arguments are coerced to more
  specific data types (via \code{\link[utils]{type.convert}}), if possible.
}

\author{Henrik Bengtsson}

\examples{

######################################################################
# Non-parsed command-line arguments
######################################################################
# Display how this instance of R was invoked.
cmd <- paste(commandArgs(), collapse=" ")
cat("How R was invoked:\n");
cat(cmd, "\n")

# Get all arguments
args <- commandArgs()
print(args)

# Get only "private" arguments and not the name of the R executable.
args <- commandArgs(excludeReserved=TRUE)[-1]
print(args)

# Assert backward compatibility
args0 <- base::commandArgs()
args <- commandArgs()
stopifnot(all.equal(args, args0, check.attributes=FALSE))


######################################################################
# Parsed command-line arguments
######################################################################
# Get all arguments as a named list, e.g. if R is started as:
#
#   R DATAPATH=../data --args --root="do da" --foo bar --details --a=2
#
# then 'args' below will equal
#
#   list(R=NA, DATAPATH="../data" args=TRUE, root="do da",
#        foo="bar", details=TRUE, a="2")
args <- commandArgs(asValues=TRUE)
str(args)

# Turn arguments into R variables
args <- commandArgs(asValues=TRUE, excludeReserved=TRUE)[-1]
keys <- attachLocally(args)
cat("Command-line arguments attached to global environment:\n");
print(keys);
str(mget(keys, envir=globalenv()))
}

\seealso{
  For a more user friendly solution, see \code{\link{cmdArgs}}().
  Internally \code{\link[base]{commandArgs}}() is used.
}



\keyword{programming}
\keyword{internal}
