%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  pushBackupFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{pushBackupFile}
\alias{pushBackupFile.default}
\alias{pushBackupFile}

 \title{Appends a backup suffix to the pathname}

 \usage{
\method{pushBackupFile}{default}(filename, path=NULL, suffix=".bak", isFile=TRUE, onMissing=c("ignore", "error"), copy=FALSE, overwrite=TRUE, ..., verbose=FALSE)
}

 \description{
  Appends a backup suffix to the pathname and, optionally, renames an existing file accordingly.

  In combination with \code{\link{popBackupFile}}(), this method is useful
  for creating a backup of a file and restoring it.
 }

 \arguments{
   \item{filename}{The filename of the file to backup.}
   \item{path}{The path of the file.}
   \item{suffix}{The suffix to be appended.}
   \item{isFile}{If \code{\link[base:logical]{TRUE}}, the file must exist and will be renamed
      on the file system.  If \code{\link[base:logical]{FALSE}}, it is only the pathname string
      that will be modified. For details, see below.}
   \item{onMissing}{A \code{\link[base]{character}} string specifying what to do if the
      file does not exist.}
   \item{copy}{If \code{\link[base:logical]{TRUE}}, an existing original file remains after
      creating the backup copy, otherwise it is dropped.}
   \item{overwrite}{If \code{\link[base:logical]{TRUE}}, any existing backup files are overwritten,
      otherwise an exception is thrown.}
   \item{...}{Not used.}
   \item{verbose}{A \code{\link[base]{logical}} or \code{\link{Verbose}}.}
 }

 \value{
   Returns the pathname with the suffix appended.
 }

 \examples{
# Create a file
pathname <- "foobar.txt";
cat(file=pathname, "File v1\n");


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# (a) Backup and restore a file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Turn it into a backup file
pathnameB <- pushBackupFile(pathname, verbose=TRUE);
print(pathnameB);

# Restore main file from backup
pathnameR <- popBackupFile(pathnameB, verbose=TRUE);
print(pathnameR);


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# (b) Backup, create a new file and frop backup file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Turn it into a backup file
pathnameB <- pushBackupFile(pathname, verbose=TRUE);
print(pathnameB);

# Create a new file
cat(file=pathname, "File v2\n");

# Drop backup because a new main file was successfully created
pathnameR <- popBackupFile(pathnameB, verbose=TRUE);
print(pathnameR);


}

 \author{Henrik Bengtsson}

 \seealso{
  \code{\link{popBackupFile}}().
 }




\keyword{utilities}
\keyword{programming}
\keyword{IO}
