# CRAN submission R.utils 2.12.3

on 2022-11-16

This submission addresses the conflict with R-devel's use() function.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.5.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L      |        |                 |
| 4.3.x     | L      | L   -  | -  W            |
| devel     | L M W  | L      |    .            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
#  "windows-x86_64-release" ## not available
))
print(res)
```

gives

```
── R.utils 2.12.3: OK

  Build ID:   R.utils_2.12.3.tar.gz-b66a8fd3f15f4c0190f4cc34749c11e9
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  11m 36s ago
  Build time: 9m 2.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.3: OK

  Build ID:   R.utils_2.12.3.tar.gz-79bb6ce577644763911180d983a938e4
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  11m 36s ago
  Build time: 7m 5.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.3: OK

  Build ID:   R.utils_2.12.3.tar.gz-a1a4a27b07744b95b9df4694cc6be551
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  11m 36s ago
  Build time: 8m 42s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
