# This script crashes in ~40s on R 2.15.3 patched and R 3.0.2 with
# R.oo (< 1.18.0).  It only does so when 'methods' is attached.  It
# does not crash on R 3.0.2 patched (2014-02-21 r65057) and beyond.
# It appears to not crash with 'R CMD check' on 2.15.3 but if run
# via 'Rscript' or similar. /HB 2014-02-22
library("methods")
library("R.methodsS3")
loadNamespace("R.utils")

# Remove all existing variables
rm(list=ls(all.names=TRUE))
gc()

R.oo::setConstructorS3("Verbose2", function(con=stderr(), ...) {
  R.oo::extend(R.oo::Object(), "Verbose",
    .con = con
  )
})

print(sessionInfo())
message(Sys.time())
local({
  Verbose2(file())
  gctorture(TRUE)
  unloadNamespace("R.utils")
  unloadNamespace("R.oo")
  NULL
})
gctorture(FALSE)
message(Sys.time())
print(sessionInfo())
