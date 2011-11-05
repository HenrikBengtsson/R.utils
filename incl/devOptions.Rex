# List the default widths and heights for all known devices
types <- eval(formals(devOptions)$type)
dims <- sapply(types, FUN=function(type) {
  devOptions(type)[c("width", "height")]
})
dims <- t(dims)
print(dims)
