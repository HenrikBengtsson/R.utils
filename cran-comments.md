# CRAN submission R.utils 2.12.0

on 2022-06-27

I've verified that this submission does not cause issues for the 248 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance

# Take 2

Shaved off 1.0 seconds from example("withTimeout", package = "R.utils") to lower the risk of running beyond five seconds, which happened with the previous submission.


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.6.x         | L      |          |                 |
| 4.1.x         | L      |          |                 |
| 4.2.x         | L M W  | L M M1 W | M1 W            |
| devel         | L   W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```

── R.utils 2.12.0: OK

  Build ID:   R.utils_2.12.0.tar.gz-f37e21fdf3df4d31ab4d9c0905d25845
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  6m 31.4s ago
  Build time: 6m 17.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0: OK

  Build ID:   R.utils_2.12.0.tar.gz-25c49198f7d0484dbd53266c51493c92
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  6m 31.4s ago
  Build time: 5m 34.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0: OK

  Build ID:   R.utils_2.12.0.tar.gz-6b386d42e0334ac6b4b9cdd3f74a69a3
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  6m 31.4s ago
  Build time: 4m 39.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0: WARNING

  Build ID:   R.utils_2.12.0.tar.gz-317a61b026f94dfca872ef44f9e07af3
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  6m 31.4s ago
  Build time: 3m 36.8s

❯ checking whether package ‘R.utils’ can be installed ... WARNING
  Found the following significant warnings:
  Warning: package ‘R.oo’ was built under R version 4.1.2
  Warning: package ‘R.methodsS3’ was built under R version 4.1.2
  See ‘/Users/userawLVDt2x/R.utils.Rcheck/00install.out’ for details.

0 errors ✔ | 1 warning ✖ | 0 notes ✔

── R.utils 2.12.0: OK

  Build ID:   R.utils_2.12.0.tar.gz-c69bf1532a22485f881f305011fbfae3
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  6m 31.5s ago
  Build time: 1m 45.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.0: WARNING

  Build ID:   R.utils_2.12.0.tar.gz-a918d9335cd34375a20ab86e40aaed36
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  6m 31.5s ago
  Build time: 5m 56.9s

❯ checking whether package 'R.utils' can be installed ... WARNING
  Found the following significant warnings:
  Warning: package 'R.oo' was built under R version 4.1.3
  Warning: package 'R.methodsS3' was built under R version 4.1.3
  See 'C:/Users/USERXodtTDHzab/R.utils.Rcheck/00install.out' for details.

0 errors ✔ | 1 warning ✖ | 0 notes ✔
```
