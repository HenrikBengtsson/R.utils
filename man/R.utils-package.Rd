%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  999.package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{R.utils-package}
\alias{R.utils-package}
\alias{R.utils}
\docType{package}

\title{Package R.utils}


\description{
  This package provides utility methods useful when programming and developing R packages.

  \emph{Warning}:
  The Application Programming Interface (API) of the classes and methods
  in this package may change.  Classes and methods are considered either
  to be stable, or to be in beta or alpha (pre-beta) stage. See list
  below for details.

  The main reason for publishing this package on CRAN although it lacks
  a stable API, is that its methods and classes are used internally by
  other packages on CRAN that the author has published.

  For package history, see \code{showHistory(R.utils)}.
}

\section{Requirements}{
  This package requires the \pkg{R.oo} package [1].
}

\section{Installation and updates}{

  To install this package do:\cr

  \code{install.packages("R.utils")}
}

\section{To get started}{
  \itemize{
   \item{\link{Arguments}}{[alpha] Methods for common argument processing.}
   \item{\link{Assert}}{[alpha] Methods for assertion of values and states.}
   \item{\link{GString}}{[alpha] A character string class with methods for
           simple substitution.}
   \item{\link{Java}}{[beta] Reads and writes Java streams.}
   \item{\link{Options}}{[alpha] Tree-structured options queried in a
           file-system like manner.}
   \item{\link{Settings}}{[alpha] An Options class for reading and writing
           package settings.}
   \item{\link{ProgressBar}}{[beta] Text-based progress bar.}
   \item{\link{FileProgressBar}}{[beta] A ProgressBar that reports progess
           as file size.}
   \item{\link{System}}{[alpha] Methods for access to system.}
   \item{\link{Verbose}}{[alpha] A class for verbose and log output.
           Utilized by the VComments and LComments classes.}
   \item{\link{SmartComments}, \link{VComments}, \link{LComments}}{[alpha]
           Methods for preprocessing source code comments of certain
           formats into R code.}
  }
  In addition to the above, there is a large set of function for file
  handling such as support for reading/following Windows Shortcut links,
  but also other standalone utility functions.
  See package index for a list of these.
  These should also be considered to be in alpha or beta stage.
}

\section{How to cite this package}{
  Whenever using this package, please cite [1] as

  \preformatted{@INPROCEEDINGS{BengtssonH_2003,
 author       = {Henrik Bengtsson},
 title        = {The {R.oo} package - Object-Oriented Programming
                 with References Using Standard {R} Code},
 booktitle    = {Proceedings of the 3rd International Workshop on
                 Distributed Statistical Computing (DSC 2003)},
 year         = {2003},
 editor       = {Kurt Hornik and Friedrich Leisch and Achim Zeileis},
 address      = {Vienna, Austria},
 month        = {March},
 issn         = {1609-395X},
 howpublished = {http://www.ci.tuwien.ac.at/Conferences/DSC-2003/},
}}
\emph{}

}

\section{Wishlist}{
 Here is a list of features that would be useful, but which I have
 too little time to add myself. Contributions are appreciated.
 \itemize{
   \item Write a TclTkProgressBar class.
   \item Improve/stabilize the GString class.
   \item Mature the SmartComments classes.  Also add AComments and
         PComments for assertion and progress/status comments.
 }

 If you consider implement some of the above, make sure it is not
 already implemented by downloading the latest "devel" version!
}

\author{Henrik Bengtsson}

\section{License}{
  The releases of this package is licensed under
  LGPL version 2.1 or newer.

  The development code of the packages is under a private licence
  (where applicable) and patches sent to the author fall under the
  latter license, but will be, if incorporated, released under the
  "release" license above.
}

\section{References}{
[1] H. Bengtsson, \emph{The R.oo package - Object-Oriented Programming with References Using Standard R Code}, In Kurt Hornik, Friedrich Leisch and Achim Zeileis, editors, Proceedings of the 3rd International Workshop on Distributed Statistical Computing (DSC 2003), March 20-22, Vienna, Austria. \url{http://www.ci.tuwien.ac.at/Conferences/DSC-2003/Proceedings/}
 \cr
}
\keyword{package}
