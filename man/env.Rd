%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  env.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{env}
\alias{env}


 \title{Creates a new environment, evaluates an expression therein, and returns the environment}

 \description{
  Creates a new environment, evaluates an expression therein, and returns the environment.
 }

 \usage{env(..., hash=FALSE, parent=parent.frame(), size=29)}

 \arguments{
   \item{...}{Arguments passed to \code{\link[base]{evalq}}(), particularly a
     \code{\link[base]{expression}} to be evaluated inside the newly created \code{\link[base]{environment}}.}
   \item{hash, parent, size}{Arguments passed to \code{\link[base]{new.env}}().}
 }

 \value{
   Returns an \code{\link[base]{environment}}.
 }

 \examples{
x <- list();

x$case1 <- env({
 # Cut'n'pasted from elsewhere
 a <- 1;
 b <- 2;
});

x$case2 <- env({
 # Cut'n'pasted from elsewhere
 foo <- function(x) x^2;
 a <- foo(2);
 b <- 1;
 rm(foo); # Not needed anymore
});

# Turn into a list of lists
x <- lapply(x, FUN=as.list);

str(x);
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   Internally \code{\link[base]{new.env}}() and \code{\link[base]{evalq}}() are used.
 }

 \references{
   [1] R-devel thread 'Create an environment and assign objects to it in
       one go?' on March 9-10, 2011.\cr
 }



\keyword{device}
\keyword{utilities}
