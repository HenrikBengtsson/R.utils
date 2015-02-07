library("R.utils")

urls <- c(
  "http://www.r-project.org/",
  "ftp://cran.r-project.org/",
  "htttp://www.r-project.org/",  ## typo, but still a URL
  "",                            ## empty
  NA_character_                  ## missing
)

print(urls)

res <- sapply(urls, FUN=isUrl)
print(res)

res <- isUrl(urls)
print(res)
stopifnot(is.logical(res))
stopifnot(length(res) == length(urls))
stopifnot(!any(is.na(res)))
