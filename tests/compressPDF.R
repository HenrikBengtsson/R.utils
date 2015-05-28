library("R.utils")

oopts <- options(warn=1)

message("*** compressPDF() ...")

pathname <- file.path(R.home("doc"), "NEWS.pdf")
if (file_test("-f", pathname)) {
  tryCatch({
    pathnameZ <- compressPDF(pathname)
    print(pathnameZ)

    pathnameZ <- compressPDF(pathname, skip=TRUE)
    print(pathnameZ)

    pathnameZ <- compressPDF(pathname, overwrite=TRUE)
    print(pathnameZ)

    file.remove(pathnameZ)
    removeDirectory(dirname(pathnameZ))
  }, error = function(ex) {
    warning("TEST ERROR: ", ex$message)
  })
}

message("*** compressPDF() ...DONE")

options(oopts)
