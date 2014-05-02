library("R.utils")

message("CRAN:")
str(as.list(parseRepos("CRAN")))

message("braju.com:")
str(as.list(parseRepos("braju.com")))

message("CRAN + braju.com:")
str(as.list(parseRepos(c("CRAN", "braju.com"))))

message("braju.com + CRAN:")
str(as.list(parseRepos(c("braju.com", "CRAN"))))

message("All CRAN related repositories:")
str(as.list(parseRepos("[[CRAN]]")))

message("All BioC related repositories:")
str(as.list(parseRepos("[[BioC]]")))

message("braju.com + all CRAN related repositories:")
str(as.list(parseRepos(c("braju.com", "[[CRAN]]"))))

message("All CRAN related repositories + braju.com:")
str(as.list(parseRepos(c("[[CRAN]]", "braju.com"))))

message("All CRAN related + BioC related repositories:")
str(as.list(parseRepos(c("[[CRAN]]", "[[BioC]]"))))

message("All BioC related + CRAN related repositories:")
str(as.list(parseRepos(c("[[BioC]]", "[[CRAN]]"))))

message("Mainstream (CRAN and BioC related) repositories (only):")
str(as.list(parseRepos("[[mainstream]]")))

message("An explicit repository URL:")
str(as.list(parseRepos("http://r-forge.r-project.org")))

message("An explicit repository URL + mainstream:")
str(as.list(parseRepos(c("http://r-forge.r-project.org", "[[mainstream]]"))))

message("Repositories according to option 'repos':")
str(as.list(parseRepos("[[current]]")))

message("All repositories known to this system:")
str(as.list(parseRepos("[[all]]")))
