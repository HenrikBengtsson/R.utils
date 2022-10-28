# CRAN submission R.utils 2.12.1

on 2022-10-28

I've verified that this submission does not cause issues for the 261 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.4.x     | L      |        |                 |
| 3.6.x     | L      |        |                 |
| 4.0.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L M W  | L M W  | M1 W            |
| devel     | L M W  | L      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "debian-gcc-patched", 
  "fedora-gcc-devel",
  "macos-highsierra-release-cran",
  "windows-x86_64-release"
))
print(res)
```

gives

```
── R.utils 2.12.0-9004: OK

  Build ID:   R.utils_2.12.0-9004.tar.gz-d0bf6cbad26d42969026b3e6e80e7bd6
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  19m 8.6s ago
  Build time: 16m 23.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0-9004: OK

  Build ID:   R.utils_2.12.0-9004.tar.gz-23ba3c19869c46c6aea11e746dfde608
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  19m 8.7s ago
  Build time: 15m 37s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0-9004: OK

  Build ID:   R.utils_2.12.0-9004.tar.gz-2b3ebf139f304cac8d0889715f727d2a
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  19m 8.7s ago
  Build time: 10m 41.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0-9004: WARNING

  Build ID:   R.utils_2.12.0-9004.tar.gz-f921976e44254caa96181d8c4c19fbd8
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  19m 8.7s ago
  Build time: 3m 36s

❯ checking whether package ‘R.utils’ can be installed ... WARNING
  Found the following significant warnings:
  Warning: package ‘R.oo’ was built under R version 4.1.2
  Warning: package ‘R.methodsS3’ was built under R version 4.1.2

0 errors ✔ | 1 warning ✖ | 0 notes ✔

── R.utils 2.12.0-9004: OK

  Build ID:   R.utils_2.12.0-9004.tar.gz-1b8891c8f2274636aa7ec160534d0d79
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  19m 8.7s ago
  Build time: 5m 58.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
