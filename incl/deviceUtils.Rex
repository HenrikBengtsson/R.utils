# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Use devices for conditional processing of code.  
# Close devices to rerun code.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Currently opened device:\n")
print(devList())

# Alt A: Use device index counter (starting with the 16:th)
fig <- 15
if (!devIsOpen(fig <- fig + 1)) {
  devSet(fig)
  cat("Figure", fig, "\n")
  plot(1:10)
}
cat("Currently opened device:\n")
print(devList())

if (!devIsOpen(fig <- fig + 1)) {
  devSet(fig)
  cat("Figure", fig, "\n")
  plot(1:10)
}
cat("Currently opened device:\n")
print(devList())

# Alt B: Use device labels
if (!devIsOpen(label <- "part 1")) {
  devSet(label)
  cat("Part 1\n")
  plot(1:10)
}
cat("Currently opened device:\n")
print(devList())


if (!devIsOpen(label <- "part 2")) {
  devSet(label)
  cat("Part 2\n")
  plot(1:10)
}
cat("Currently opened device:\n")
print(devList())
