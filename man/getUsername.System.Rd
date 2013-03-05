%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{getUsername.System}
\alias{getUsername.System}
\alias{System.getUsername}
\alias{getUsername.System}
\alias{getUsername,System-method}


 \title{Retrieves the name of the user running R}

 \description{
  Retrieves the name of the user running R.
 }

 \usage{
## Static method (use this):
## System$getUsername(...)

## Don't use the below:
\method{getUsername}{System}(static, ...)
}

 \value{
  Returns a \code{\link[base]{character}} string.
 }

 \details{
  First, this function checks the system environment variables \code{USER},
  and \code{USERNAME}.
  Second, it checks \code{Sys.info()["user"]} for user name details.
  Finally, it tries to query the system command \code{whoami}.
 }

 \seealso{
   \code{\link[R.utils:getHostname.System]{*getHostname}()}.
 }
\keyword{internal}
\keyword{methods}
