# Divert standard output
pathname <- tempfile(fileext=".output.txt")
res <- withSink(file=pathname, {
  print(letters)
})
mcat(readLines(pathname), sep="\n")


# Divert standard error/messages
pathname <- tempfile(fileext=".message.txt")
res <- withSink(file=pathname, type="message", {
  mprint(LETTERS)
})
mcat(readLines(pathname), sep="\n")
