library("R.utils")

message("CRAN:")
str(as.list(parseRepos("CRAN")))

message("AROMA:")
str(as.list(parseRepos("AROMA")))

message("CRAN + AROMA:")
str(as.list(parseRepos(c("CRAN", "AROMA"))))

message("AROMA + CRAN:")
str(as.list(parseRepos(c("AROMA", "CRAN"))))

message("All CRAN related repositories:")
str(as.list(parseRepos("[[CRAN]]")))

message("All BioC related repositories:")
str(as.list(parseRepos("[[BioC]]")))

message("AROMA + all CRAN related repositories:")
str(as.list(parseRepos(c("AROMA", "[[CRAN]]"))))

message("All CRAN related repositories + AROMA:")
str(as.list(parseRepos(c("[[CRAN]]", "AROMA"))))

message("All CRAN related + BioC related repositories:")
str(as.list(parseRepos(c("[[CRAN]]", "[[BioC]]"))))

message("All BioC related + CRAN related repositories:")
str(as.list(parseRepos(c("[[BioC]]", "[[CRAN]]"))))

message("Mainstream (CRAN and BioC related) repositories (only):")
str(as.list(parseRepos("[[mainstream]]")))
