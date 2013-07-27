%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  tempvar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{tempvar}
\alias{tempvar}


\title{Gets a unique non-existing temporary variable name}

\description{
 Gets a unique non-existing temporary variable name and optionally assigns it an initial value.
}

\usage{
tempvar(prefix="var", value, envir=parent.frame(), inherits=FALSE)
}

\arguments{
  \item{prefix}{A \code{\link[base]{character}} string specifying the prefix of the
    temporary variable name.}
  \item{value}{(optional) If given, a variable with the temporary
    name is assigned this value.}
  \item{envir}{An \code{\link[base]{environment}} where the variable should exist.}
  \item{inherits}{A \code{\link[base]{logical}} specifying whether the enclosing frames
    of the environment should be searched or not.}
}

\value{
 Returns a \code{\link[base]{character}} string.
}

\examples{
# Get a temporary variable
name <- tempvar()
print(name)

# Get and assign a temporary variable
name <- tempvar(value=base::letters)
print(name)
str(get(name))

# Get a temporary variable with custom prefix
name <- tempvar(prefix=".hidden")
print(name)
}

\author{Henrik Bengtsson}

\seealso{
 \code{\link[base]{tempfile}}() and \code{\link[base]{assign}}().
}



\keyword{programming}
\keyword{internal}
