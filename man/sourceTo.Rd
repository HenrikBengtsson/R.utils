%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  sourceTo.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{sourceTo}
\alias{sourceTo.default}
\alias{sourceTo}

 \title{Parses and evaluates code from a file or a connection}

 \usage{\method{sourceTo}{default}(file, path=NULL, chdir=FALSE, ..., local=TRUE, envir=parent.frame(), modifiedOnly=FALSE)}

 \description{
   Parses and evaluates code from a file or a connection.
   This has the same effect as if \code{source(..., local=TRUE)} would have
   been called from within the given environment.
   This is useful when setting up a new local working environment.
 }

 \arguments{
   \item{file}{A \code{\link[base:connections]{connection}} or a \code{\link[base]{character}} string giving the pathname
         of the file or URL to read from.}
   \item{path}{An optional \code{\link[base]{character}} string giving the path to the file.
         Ignored if \code{file} is a connection.}
   \item{chdir}{If \code{\link[base:logical]{TRUE}} and \code{file} is a pathname, the \R
         working directory is temporarily changed to the directory
         containing \code{file} for evaluating.}
   \item{...}{Arguments to \code{\link[base]{source}}(). If argument \code{file} is
      not explicitly given, the first argument is assumed to be the
      \code{file} argument. This argument is converted into a string by
      \code{as.character()}.
   }
   \item{local}{If \code{\link[base:logical]{FALSE}}, evaluation is done in the global environment,
      otherwise in the calling environment.}
   \item{envir}{An \code{\link[base]{environment}} in which \code{\link[base]{source}}() should be
      called. If \code{\link[base]{NULL}}, the global environment is used.}
   \item{modifiedOnly}{If \code{\link[base:logical]{TRUE}}, the file is sourced only if modified
      since the last time it was sourced, otherwise regardless.}
 }

 \value{
   Return the result of \code{\link[base]{source}}().
 }

 \section{Hooks}{
  This methods recognizes the hook \code{sourceTo/onPreprocess}, which
  is called after the lines in file has been read, but before they have
  been parsed by the \R parser, cf. \code{\link[base]{parse}}().
  An \code{onPreprocess} hook function should take a \code{\link[base]{character}} \code{\link[base]{vector}}
  of code lines and return a \code{\link[base]{character}} \code{\link[base]{vector}} of code lines.
  This can for instance be used to pre-process R source code with special
  directives such as \code{\link{VComments}}.

  Note that only one hook function can be used for this function, otherwise
  an error is generated.
 }

 \examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("=== Example 1 ================================================\n")

foo <- function(file, ...) {
  cat("Local objects before calling sourceTo():\n")
  print(ls())

  res <- sourceTo(file, ...)

  cat("Local objects after calling sourceTo():\n")
  print(ls())
}

cat("Global objects before calling foo():\n")
lsBefore <- NA
lsBefore <- ls()
foo(file=textConnection(c('a <- 1', 'b <- 2')))

cat("Global objects after calling foo():\n")
stopifnot(length(setdiff(ls(), lsBefore)) == 0)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 2 - with VComments preprocessor
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("=== Example 2 ================================================\n")

preprocessor <- function(lines, ...) {
  cat("-----------------------------------------\n")
  cat("Source code before preprocessing:\n")
  displayCode(code=lines, pager="console")
  cat("-----------------------------------------\n")
  cat("Source code after preprocessing:\n")
  lines <- VComments$compile(lines)
  displayCode(code=lines, pager="console")
  cat("-----------------------------------------\n")
  lines
}

oldHooks <- getHook("sourceTo/onPreprocess")
setHook("sourceTo/onPreprocess", preprocessor, action="replace")
code <- c(
 'x <- 2',
 '#V1# threshold=-1',
 '#Vc# A v-comment log message',
 'print("Hello world")'
)
fh <- textConnection(code)
sourceTo(fh)
setHook("sourceTo/onPreprocess", oldHooks, action="replace")
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link{sourceDirectory}}().
  \code{\link[base]{sys.source}}() and \code{\link[base]{source}}().
 }



\keyword{programming}
\keyword{IO}
