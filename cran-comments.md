# CRAN submission R.utils 2.9.2

on 2019-12-07

Recently, macOS CRAN checks uses a read-only file system, which causes one of the R.utils tests to fail because it attempts to create file '~/progress.simulation'.  I've updated R.utils to write to tempdir() instead.

Thanks in advance


## Notes not sent to CRAN

### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.5.3 (2019-03-11)
  - R version 3.6.1 (2019-07-05)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.5.3 (2017-01-27) [sic!]
  - R version 3.6.1 (2017-01-27) [sic!]
  - R Under development (unstable) (2019-12-06 r77536)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.6.1 (2019-07-05)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2019-12-05 r77528)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.6.1 (2019-07-05)
  - R Under development (unstable) (2019-12-05 r77528)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.6.1 (2019-07-05)
  - R Under development (unstable) (2019-12-02 r77499)
