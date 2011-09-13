setMethodS3("writeDataFrame", "data.frame", function(data, filename, path=NULL, sep="\t", quote=FALSE, row.names=FALSE, col.names=TRUE, ..., header=list(), headerPrefix="# ", headerSep=": ", createdBy=NULL, createdOn=format(Sys.time(), format="%Y-%m-%d %H:%M:%S %Z"), nbrOfRows=nrow(data), overwrite=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  # Argument 'filename' & 'path':
  pathname <- Arguments$getWritablePathname(filename, path=path, mustNotExist=!overwrite);  

  # Argument 'header':
  if (!is.list(header)) {
    throw("Argument 'header' is not a list: ", class(header)[1]);
  }

  # Argument 'headerPrefix':
  headerPrefix <- Arguments$getCharacter(headerPrefix);

  # Argument 'headerSep':
  headerSep <- Arguments$getCharacter(headerSep);

  # Argument 'createdBy':
  if (!is.null(createdBy)) {
    createdBy <- Arguments$getCharacter(createdBy);
  }

  # Argument 'createdOn':
  if (!is.null(createdOn)) {
    createdOn <- Arguments$getCharacter(createdOn);
  }

  # Argument 'nbrOfRows':
  if (!is.null(nbrOfRows)) {
    nbrOfRows <- Arguments$getInteger(nbrOfRows);
  }

  
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  # Build header
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  header$createdBy <- createdBy;
  header$createdOn <- createdOn;
  header$nbrOfRows <- nbrOfRows;  
  header$nbrOfColumns <- ncol(data);  
  header$columnNames <- colnames(data);
  header$columnClasses <- sapply(data, FUN=storage.mode);
  header <- lapply(header, FUN=paste, collapse=sep);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  # Write to file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  verbose && enter(verbose, "Writing to file");

  # Remove existing file?
  if (overwrite && isFile(pathname)) {
    file.remove(pathname);
  }

  # Write to a temporary file
  pathnameT <- pushTemporaryFile(pathname, verbose=verbose);  

  # Write header
  bfr <- paste(headerPrefix, names(header), headerSep, header, sep="");
  cat(file=pathnameT, bfr, sep="\n");

  # Write data section
  write.table(file=pathnameT, data, append=TRUE, sep=sep, quote=quote, row.names=row.names, col.names=col.names, ...);

  # Rename temporary file
  pathname <- popTemporaryFile(pathnameT, verbose=verbose); 
  verbose && exit(verbose);

  verbose && exit(verbose);  # "Writing CDF...exit"

  verbose && exit(verbose);

  pathname;
}) # writeDataFrame()


#############################################################################
# HISTORY:
# 2011-09-12
# o Added writeDataFrame().  Is really true that I haven't created this
#   method earlier/somewhere else?
# o Created.
#############################################################################
