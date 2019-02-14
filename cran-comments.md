# CRAN submission R.utils 2.8.0

on 2019-02-13

This submission fixes a bug causing createWindowsShortcut() to fail, which is likely the underlying reason for R CMD check on aroma.affymetrix to fail on the Windows CRAN servers.

Thanks in advance



## Notes not sent to CRAN

### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.4.4 (2018-03-15)
  - R version 3.5.2 (2018-12-20)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [r-hub]:
  - R version 3.5.2 (2018-12-20)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.4.4 (2017-01-27) [sic!]
  - R version 3.5.2 (2017-01-27) [sic!]
  - R Under development (unstable) (2019-02-13 r76098)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2019-02-09 r76080)

* Platform x86_64-pc-linux-gnu (64-bit):
 - R version 2.14.0 (2011-10-31)
 - R version 3.0.0 (2013-04-03)
 - R version 3.2.0 (2015-04-16)
 - R version 3.5.2 (2018-12-20)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.4 (2018-03-15)

* Platform i386-pc-solaris2.10 (32-bit) [r-hub]:
  - R version 3.5.0 Patched (2018-04-30 r74674)
  
* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2019-02-12 r76095)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.5.2 (2018-12-20)
  - R Under development (unstable) (2019-02-12 r76095)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2019-01-26 r76018)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.5.2 (2018-12-20)
  - R Under development (unstable) (2019-02-13 r76098)
