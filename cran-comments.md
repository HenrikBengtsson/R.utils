# CRAN submission R.utils 2.12.12

on 2022-11-11

This submission addresses check NOTEs on R-devel.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.4.x     | L      |        |                 |
| 3.6.x     | L      |        |                 |
| 4.0.x     | L      |        |                 |
| 4.1.x     | L      |   M    |                 |
| 4.2.x     | L M W  | L   W  | M1 W            |
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
── R.utils 2.12.2: OK

  Build ID:   R.utils_2.12.2.tar.gz-0df1e5e3211f4c6f8ae8845bfe963890
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  22m 19.4s ago
  Build time: 21m 51.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.2: OK

  Build ID:   R.utils_2.12.2.tar.gz-eea70a87565d40de88ba7183f824ddf8
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  22m 19.4s ago
  Build time: 20m 7.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.2: OK

  Build ID:   R.utils_2.12.2.tar.gz-025492e49cb948cf9f4c7debda94debe
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  22m 19.4s ago
  Build time: 14m 2.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.utils 2.12.2: WARNING

  Build ID:   R.utils_2.12.2.tar.gz-57a6d863f0fe4c3989d88a6e71acdee3
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  22m 19.5s ago
  Build time: 3m 35.6s

❯ checking whether package ‘R.utils’ can be installed ... WARNING
  Found the following significant warnings:
  Warning: package ‘R.oo’ was built under R version 4.1.2
  Warning: package ‘R.methodsS3’ was built under R version 4.1.2
 
0 errors ✔ | 1 warning ✖ | 0 notes ✔

── R.utils 2.12.2: OK

  Build ID:   R.utils_2.12.2.tar.gz-2341fd0318a44647a1e333218bceb892
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  22m 19.5s ago
  Build time: 4m 16.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
