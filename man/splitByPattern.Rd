%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  splitByPattern.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{splitByPattern}
\alias{splitByPattern.default}
\alias{splitByPattern}

 \title{Splits a single character string by pattern}

 \description{
   Splits a single character string by pattern.  The main difference compared to \code{\link[base]{strsplit}}()
   is that this method also returns the part of the string that matched
   the pattern. Also, it only takes a single character string.
 }

 \usage{\method{splitByPattern}{default}(str, pattern, ...)}

 \arguments{
  \item{str}{A single \code{\link[base]{character}} string to be split.}
  \item{pattern}{A regular expression \code{\link[base]{character}} string.}
  \item{...}{Not used.}
 }

 \value{
   Returns a named \code{\link[base]{character}} \code{\link[base]{vector}} with names equal to \code{"TRUE"}
   if element is a pattern part and \code{"FALSE"} otherwise.
 }

 \examples{

rspCode <- "<body>Hello <\%=\"world\"\%></body>"
rspParts <- splitByPattern(rspCode, pattern="<\%.*\%>")
cat(rspCode, "\n")
print(rspParts)
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   Compare to \code{\link[base]{strsplit}}().
 }


\keyword{programming}
