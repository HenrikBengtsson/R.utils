library("R.utils")

# Set new default repositories for this test
orepos <- options(repos=c(
  CRAN="http://cran.r-project.org",
  EXAMPLE="http://example.org"
))

message("Default repositories:")
str(as.list(getOption("repos")))

message("All default repositories:")
withRepos({
  str(as.list(getOption("repos")))
})

message("CRAN (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="CRAN")


message("AROMA (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="AROMA")

message("CRAN and AROMA (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos=c("CRAN", "AROMA"))

message("AROMA and CRAN (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos=c("AROMA", "CRAN"))


message("All CRAN replated repositories (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[CRAN]]")

message("Mainstream (CRAN and BioC related) repositories (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[mainstream]]")

message("AROMA and mainstream (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[AROMA]]")

message("R-Forge and mainstream (only):")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[[R-Forge]]")

message("All known:")
withRepos({
  str(as.list(getOption("repos")))
}, repos="[*]")

# Undo
options(orepos)
