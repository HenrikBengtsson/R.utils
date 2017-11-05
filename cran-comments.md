# CRAN submission R.utils 2.6.0
on 2017-11-04

I've verified that this submission causes no issues for any of the
109 reverse (non-recursive) package dependencies available on CRAN
and Bioconductor.

The author or arc has been informed to update one of examples to make
use of R.utils::withTimeout() instead of R.utils::evalWithTimeout(),
which is now deprecated.

Thanks in advance


### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin15.6.0 (64-bit) [r-hub]:
  - R version 3.4.1 (2017-06-30)

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.2 (2017-09-28)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.2 (2017-09-28)
  - R Under development (unstable) (2017-11-03 r73667)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R Under development (unstable) (2017-07-26 r72972)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 2.14.0 (2011-10-31) ## zzz_finalizer_crash.R may core dump
  - R version 3.0.0 (2013-04-03)
  - R version 3.2.0 (2015-04-16)
  - R version 3.4.0 (2017-04-21)
  - R version 3.4.2 (2017-09-28)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.2 (2017-09-28)

* Platform i386-pc-solaris2.10 (32-bit) [r-hub]:
  - R version 3.4.1 Patched (2017-07-15 r72924)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2017-11-03 r73667)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.4.2 (2017-09-28)
  - R Under development (unstable) (2017-11-03 r73667)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.4.2 (2017-09-28)
  - R Under development (unstable) (2017-09-12 r73242)
