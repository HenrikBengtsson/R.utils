library("R.utils")

oopts <- options(warn=1)

message("*** resetWarnings() ...")

resetWarnings()
warning("First warning")
warning("Second warning")
print(warnings())
resetWarnings()

message("*** resetWarnings() ... DONE")

options(oopts)


