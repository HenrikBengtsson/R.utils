%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  eget.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{eget}
\alias{eget}

\alias{ecget}

\title{Gets a variable by name}

\description{
 Gets a variable by name.  If non-existing, the default value is returned.
}

\usage{
eget(..., coerce=TRUE, envir=parent.frame(), inherits=TRUE, mode="any", cmdArg=FALSE)
}

\arguments{
  \item{...}{Named arguments \code{name} and \code{default}, where
    \code{name} must be a \code{\link[base]{character}} string and \code{default} is
    an optional default value (if not given, it's \code{\link[base]{NULL}}).
    Alternatively, \code{name} and \code{default} can be given as
    a named argument (e.g. \code{n=42}).}
  \item{coerce}{If \code{\link[base:logical]{TRUE}}, the returned value is coerced to the class
    of the default value (unless \code{\link[base]{NULL}}) using \code{\link[methods]{as}}.}
  \item{envir}{A \code{\link[base]{environment}} or a named \code{\link[base]{list}} where to look
    for the variable.  Only if \code{envir} is an \code{\link[base]{environment}}.}
  \item{inherits}{A \code{\link[base]{logical}} specifying whether the enclosing frames
    of the environment should be searched or not.}
  \item{mode}{A \code{\link[base]{character}} string specifying the mode of the object to
    retrieve.  Only if \code{envir} is an \code{\link[base]{environment}}.}
  \item{cmdArg}{If \code{\link[base:logical]{TRUE}}, the corresponding command-line argument
    is used as the default value.}
}

\value{
  Returns an object.
}

\details{
  \code{ecget(...)} is short for \code{eget(..., cmdArg=TRUE)}.
}

\examples{
# Get variable 'a' if it exists, otherwise return the default value.
value <- eget("a", default=42L)
print(value) # 42L

# Short version doing the same
value <- eget(a=42L)
print(value) # 42L

# Same, but look for the variable in 'envir' (here a list)
value <- eget("a", default=42L, envir=list(a=1))
print(value) # 1L

# Get variable 'n', which defaults to command-line argument
# 'n' ('-n' or '--n'), which in turn defaults to 42L.
value <- eget(n=cmdArg(n=42L))
print(value)

# Equivalently.
value <- ecget(n=42L)
print(value)
}

\author{Henrik Bengtsson}

\seealso{
  To retrieve command-line arguments, see \code{\link[R.utils]{cmdArg}}.
  See also \code{\link[base]{mget}}().
}




\keyword{file}
\keyword{IO}
\keyword{internal}
