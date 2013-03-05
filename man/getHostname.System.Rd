%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{getHostname.System}
\alias{getHostname.System}
\alias{System.getHostname}
\alias{getHostname.System}
\alias{getHostname,System-method}


 \title{Retrieves the computer name of the current host}

 \description{
  Retrieves the computer name of the current host.
 }

 \usage{
## Static method (use this):
## System$getHostname(...)

## Don't use the below:
\method{getHostname}{System}(static, ...)
}

 \value{
  Returns a \code{\link[base]{character}} string.
 }

 \details{
  First, this function checks the system environment variables \code{HOST},
  \code{HOSTNAME}, and \code{COMPUTERNAME}.
  Second, it checks \code{Sys.info()["nodename"]} for host name details.
  Finally, it tries to query the system command \code{uname -n}.
 }

 \seealso{
   \code{\link[R.utils:getUsername.System]{*getUsername}()}.
 }
\keyword{internal}
\keyword{methods}
