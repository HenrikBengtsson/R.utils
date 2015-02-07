library("R.utils")

# Set new default repositories for this test
orepos <- options(repos=c(
  CRAN="http://cran.r-project.org",
  EXAMPLE="http://example.org"
))

message("Current repositories:")
str(as.list(getOption("repos")))

message("All current repositories:")
withRepos({
  str(as.list(getOption("repos")))
})

message("All current repositories (explicit):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[current]]")

message("CRAN (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="CRAN")


message("braju.com (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="braju.com")

message("CRAN and braju.com (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos=c("CRAN", "braju.com"))

message("braju.com and CRAN (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos=c("braju.com", "CRAN"))


message("All CRAN replated repositories (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[CRAN]]")

message("Mainstream (CRAN and BioC related) repositories (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[mainstream]]")

message("braju.com and mainstream (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[braju.com]]")

message("R-Forge and mainstream (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[R-Forge]]")

message("An explicit repository URL:")
withRepos({
  str(as.list(getOption("repos")))
}, repos="http://r-forge.r-project.org")

message("An explicit repository URL + mainstream:")
withRepos({
  str(as.list(getOption("repos")))
}, repos=c("http://r-forge.r-project.org", "[[mainstream]]"))

message("All known:")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[all]]")



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Visibility
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withVisible({
  withRepos({ 1 })
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(res$visible)

x <- 0
res <- withVisible({
  withRepos({ x <- 1 })
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(!res$visible)
stopifnot(all.equal(x, 1))


# Undo
options(orepos)
