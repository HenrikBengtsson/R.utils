# Tabulate some of the default settings for known devices
knownDevices <- eval(formals(devOptions)$type)
fields <- c("width", "height", "bg", "fg", "pointsize")
opts <- sapply(knownDevices, FUN=function(type) {
  devOptions(type)[fields]
})
rownames(opts) <- fields
opts <- t(opts)
print(opts)
