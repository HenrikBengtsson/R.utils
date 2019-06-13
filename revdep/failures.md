# gdalUtils

<details>

* Version: 2.0.1.14
* Source code: https://github.com/cran/gdalUtils
* Date/Publication: 2018-04-23 03:23:04 UTC
* Number of recursive dependencies: 11

Run `revdep_details(,"gdalUtils")` for more info

</details>

## In both

*   R CMD check timed out
    

# uavRst

<details>

* Version: 0.5-2
* Source code: https://github.com/cran/uavRst
* Date/Publication: 2018-12-09 14:20:06 UTC
* Number of recursive dependencies: 198

Run `revdep_details(,"uavRst")` for more info

</details>

## In both

*   checking whether package ‘uavRst’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/hb/repositories/R.utils/revdep/checks/uavRst/new/uavRst.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘uavRst’ ...
** package ‘uavRst’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/home/hb/software/R-devel/R-3-6-branch/lib/R/include" -DNDEBUG  -I"/home/hb/repositories/R.utils/revdep/library/uavRst/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/home/hb/software/R-devel/R-3-6-branch/lib/R/include" -DNDEBUG  -I"/home/hb/repositories/R.utils/revdep/library/uavRst/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c brewCppFun.cpp -o brewCppFun.o
g++ -std=gnu++11 -I"/home/hb/software/R-devel/R-3-6-branch/lib/R/include" -DNDEBUG  -I"/home/hb/repositories/R.utils/revdep/library/uavRst/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c mapviewCppFun.cpp -o mapviewCppFun.o
g++ -std=gnu++11 -shared -L/home/hb/software/R-devel/R-3-6-branch/lib/R/lib -L/usr/local/lib -o uavRst.so RcppExports.o brewCppFun.o mapviewCppFun.o -L/home/hb/software/R-devel/R-3-6-branch/lib/R/lib -lR
installing to /home/hb/repositories/R.utils/revdep/checks/uavRst/new/uavRst.Rcheck/00LOCK-uavRst/00new/uavRst/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
ERROR: hard-coded installation path: please report to the package maintainer and use ‘--no-staged-install’
* removing ‘/home/hb/repositories/R.utils/revdep/checks/uavRst/new/uavRst.Rcheck/uavRst’

```
### CRAN

```
* installing *source* package ‘uavRst’ ...
** package ‘uavRst’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/home/hb/software/R-devel/R-3-6-branch/lib/R/include" -DNDEBUG  -I"/home/hb/repositories/R.utils/revdep/library/uavRst/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/home/hb/software/R-devel/R-3-6-branch/lib/R/include" -DNDEBUG  -I"/home/hb/repositories/R.utils/revdep/library/uavRst/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c brewCppFun.cpp -o brewCppFun.o
g++ -std=gnu++11 -I"/home/hb/software/R-devel/R-3-6-branch/lib/R/include" -DNDEBUG  -I"/home/hb/repositories/R.utils/revdep/library/uavRst/Rcpp/include" -I/usr/local/include  -fpic  -g -O2  -c mapviewCppFun.cpp -o mapviewCppFun.o
g++ -std=gnu++11 -shared -L/home/hb/software/R-devel/R-3-6-branch/lib/R/lib -L/usr/local/lib -o uavRst.so RcppExports.o brewCppFun.o mapviewCppFun.o -L/home/hb/software/R-devel/R-3-6-branch/lib/R/lib -lR
installing to /home/hb/repositories/R.utils/revdep/checks/uavRst/old/uavRst.Rcheck/00LOCK-uavRst/00new/uavRst/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
ERROR: hard-coded installation path: please report to the package maintainer and use ‘--no-staged-install’
* removing ‘/home/hb/repositories/R.utils/revdep/checks/uavRst/old/uavRst.Rcheck/uavRst’

```
