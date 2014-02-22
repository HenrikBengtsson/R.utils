# This script crashes in ~20s on R 3.0.2 with R.oo (< 1.18.0)
library("R.methodsS3")
loadNamespace("R.utils")

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
