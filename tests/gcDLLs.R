library("R.utils")

message("*** getDLLs() ...")

dlls <- strayDLLs()
print(dlls)

dlls <- gcDLLs(quiet = TRUE)
print(dlls)

dlls <- gcDLLs(quiet = FALSE)
print(dlls)

message("*** getDLLs() ... DONE")