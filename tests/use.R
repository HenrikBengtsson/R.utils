library("R.utils")

# Use with one package
use("tools", how="load")

# Use with one package
use("tools")

# Use with multiple packages
use(c("tools", "graphics"))
use("tools, graphics")
use(c("tools, graphics", "grDevices"))

# Use with version constraint
use("tools", version="(>= 2.5.0)")
use("tools (>= 2.5.0)")

# Use with multiple packages and version constraints
use(c("tools", "graphics"), version=c("(>= 2.5.0)", "(>= 2.5.0)"))
use("tools, graphics", version="(>= 2.5.0), (>= 2.5.0)")
use("tools (>= 2.5.0), graphics (>= 2.5.0)")

# Exception should be visible
tryCatch({
  use("NonExistingPackage", install=FALSE)
}, error = function(ex) {
  print(ex);
})
