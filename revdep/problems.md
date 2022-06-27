# ACNE

<details>

* Version: 0.8.1
* GitHub: https://github.com/HenrikBengtsson/ACNE
* Source code: https://github.com/cran/ACNE
* Date/Publication: 2015-10-27 08:09:51
* Number of recursive dependencies: 25

Run `revdep_details(, "ACNE")` for more info

</details>

## Newly broken

*   checking whether package ‘ACNE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/ACNE/new/ACNE.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ACNE’ ...
** package ‘ACNE’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘R.devices’:
 object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘ACNE’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/ACNE/new/ACNE.Rcheck/ACNE’


```
### CRAN

```
* installing *source* package ‘ACNE’ ...
** package ‘ACNE’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning message:
In .requireBiocPackage("affxparser", neededBy = getName(pkg)) :
  Package 'affxparser' could not be loaded. Without it aroma.affymetrix will not work. Please install it from Bioconductor, cf. https://www.bioconductor.org/
** help
...
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
Warning in .requireBiocPackage("affxparser", neededBy = getName(pkg)) :
  Package 'affxparser' could not be loaded. Without it aroma.affymetrix will not work. Please install it from Bioconductor, cf. https://www.bioconductor.org/
** testing if installed package can be loaded from final location
Warning in .requireBiocPackage("affxparser", neededBy = getName(pkg)) :
  Package 'affxparser' could not be loaded. Without it aroma.affymetrix will not work. Please install it from Bioconductor, cf. https://www.bioconductor.org/
** testing if installed package keeps a record of temporary installation path
* DONE (ACNE)


```
# acroname

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/acroname
* Date/Publication: 2021-01-25 08:40:11 UTC
* Number of recursive dependencies: 52

Run `revdep_details(, "acroname")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘hunspell’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# affxparser

<details>

* Version: 1.68.1
* GitHub: https://github.com/HenrikBengtsson/affxparser
* Source code: https://github.com/cran/affxparser
* Date/Publication: 2022-04-29
* Number of recursive dependencies: 4

Run `revdep_details(, "affxparser")` for more info

</details>

## In both

*   checking whether package ‘affxparser’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      fusion/file/CELFileData.cpp:2409:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2414:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2419:28: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2445:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2451:37: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2457:38: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2506:23: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2509:23: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2512:24: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2551:24: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:2554:24: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3194:16: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3199:16: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3204:17: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3251:17: warning: taking address of packed member of ‘affxcel::_CELFileTranscriptomeEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3255:16: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
      fusion/file/CELFileData.cpp:3294:28: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/affxparser/new/affxparser.Rcheck/00install.out’ for details.
    ```

*   checking compiled code ... WARNING
    ```
    File ‘affxparser/libs/affxparser.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Object: ‘fusion/util/Verbose.o’
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Objects: ‘fusion/file/TsvFile/TsvFile.o’, ‘fusion/util/Err.o’
      Found ‘abort’, possibly from ‘abort’ (C)
        Objects: ‘fusion/calvin_files/fusion/src/FusionCHPData.o’,
          ‘fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCHPDataAdapter.o’,
          ‘fusion/calvin_files/parameter/src/ParameterNameValueType.o’,
          ‘fusion/file/BPMAPFileWriter.o’
    ...
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘fusion/calvin_files/utils/src/AffymetrixGuid.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘fusion/util/Util.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.0Mb
      sub-directories of 1Mb or more:
        libs  17.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 73

Run `revdep_details(, "aroma.affymetrix")` for more info

</details>

## Newly broken

*   checking whether package ‘aroma.affymetrix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/aroma.affymetrix/new/aroma.affymetrix.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘aroma.affymetrix’ ...
** package ‘aroma.affymetrix’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘R.devices’:
 object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘aroma.affymetrix’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/aroma.affymetrix/new/aroma.affymetrix.Rcheck/aroma.affymetrix’


```
### CRAN

```
* installing *source* package ‘aroma.affymetrix’ ...
** package ‘aroma.affymetrix’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
...
The following object is masked _by_ package:aroma.affymetrix:

    writeCdf

The following object is masked from package:R.utils:

    findFiles

** testing if installed package keeps a record of temporary installation path
* DONE (aroma.affymetrix)


```
# aroma.cn

<details>

* Version: 1.6.1
* GitHub: https://github.com/HenrikBengtsson/aroma.cn
* Source code: https://github.com/cran/aroma.cn
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 25

Run `revdep_details(, "aroma.cn")` for more info

</details>

## Newly broken

*   checking whether package ‘aroma.cn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/aroma.cn/new/aroma.cn.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘aroma.cn’ ...
** package ‘aroma.cn’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘R.devices’:
 object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘aroma.cn’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/aroma.cn/new/aroma.cn.Rcheck/aroma.cn’


```
### CRAN

```
* installing *source* package ‘aroma.cn’ ...
** package ‘aroma.cn’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (aroma.cn)


```
# aroma.core

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2021-01-05 05:10:12 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "aroma.core")` for more info

</details>

## Newly broken

*   checking whether package ‘aroma.core’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/aroma.core/new/aroma.core.Rcheck/00install.out’ for details.
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

## Installation

### Devel

```
* installing *source* package ‘aroma.core’ ...
** package ‘aroma.core’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘R.devices’:
 object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘aroma.core’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/aroma.core/new/aroma.core.Rcheck/aroma.core’


```
### CRAN

```
* installing *source* package ‘aroma.core’ ...
** package ‘aroma.core’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in setGenericS3.default(name, export = exportGeneric, envir = envir,  :
  Renamed the preexisting function write to write.default, which was defined in environment base.
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (aroma.core)


```
# aroma.light

<details>

* Version: 3.26.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 6

Run `revdep_details(, "aroma.light")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# AUCell

<details>

* Version: 1.18.1
* GitHub: NA
* Source code: https://github.com/cran/AUCell
* Date/Publication: 2022-05-19
* Number of recursive dependencies: 171

Run `revdep_details(, "AUCell")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG'
    ```

*   checking R code for possible problems ... NOTE
    ```
    AUCell_createViewerApp : <anonymous>: no visible global function
      definition for ‘%>%’
    AUCell_createViewerApp : <anonymous>: no visible binding for global
      variable ‘tsne1’
    AUCell_createViewerApp : <anonymous>: no visible binding for global
      variable ‘tsne2’
    AUCell_createViewerApp : <anonymous>: no visible binding for global
      variable ‘cell’
    plotEmb_rgb : <anonymous>: no visible global function definition for
      ‘rgb’
    Undefined global functions or variables:
      %>% cell rgb tsne1 tsne2
    Consider adding
      importFrom("grDevices", "rgb")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘SingleCellExperiment’
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocManager’
    'library' or 'require' call not declared from: ‘Matrix’
    ```

# autonomics

<details>

* Version: 1.4.0
* GitHub: https://github.com/bhagwataditya/autonomics
* Source code: https://github.com/cran/autonomics
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 206

Run `revdep_details(, "autonomics")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘using_autonomics.Rmd’ using rmarkdown
    Error: processing vignette 'using_autonomics.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘using_autonomics.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘using_autonomics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'normimpute'
      ‘ref’ ‘pos’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# BANDITS

<details>

* Version: 1.12.0
* GitHub: https://github.com/SimoneTiberi/BANDITS
* Source code: https://github.com/cran/BANDITS
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 146

Run `revdep_details(, "BANDITS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        extdata   1.3Mb
        libs      7.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R.utils’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    infer_one_group: no visible binding for global variable ‘p’
    plot_precision: no visible binding for global variable ‘x’
    test_DTU: no visible binding for global variable ‘p’
    test_DTU_multi_group: no visible binding for global variable ‘p’
    Undefined global functions or variables:
      p x
    ```

# BgeeDB

<details>

* Version: 2.22.0
* GitHub: https://github.com/BgeeDB/BgeeDB_R
* Source code: https://github.com/cran/BgeeDB
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 96

Run `revdep_details(, "BgeeDB")` for more info

</details>

## In both

*   R CMD check timed out
    

# bigsnpr

<details>

* Version: 1.9.11
* GitHub: https://github.com/privefl/bigsnpr
* Source code: https://github.com/cran/bigsnpr
* Date/Publication: 2022-02-16 17:50:05 UTC
* Number of recursive dependencies: 141

Run `revdep_details(, "bigsnpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.9Mb
      sub-directories of 1Mb or more:
        libs  16.6Mb
    ```

# bsseq

<details>

* Version: 1.32.0
* GitHub: https://github.com/kasperdanielhansen/bsseq
* Source code: https://github.com/cran/bsseq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 127

Run `revdep_details(, "bsseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘bsseq.Rmd’ using rmarkdown
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
        IQR, mad, sd, var, xtabs
    
    ...
    Quitting from lines 29-31 (bsseq_analysis.Rmd) 
    Error: processing vignette 'bsseq_analysis.Rmd' failed with diagnostics:
    there is no package called 'bsseqData'
    --- failed re-building ‘bsseq_analysis.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘bsseq_analysis.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bsseqData’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        data   1.9Mb
        doc    1.9Mb
        libs   3.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::normarg_grid’
      ‘GenomicRanges:::.extract_groups_from_GenomicRanges’
      ‘GenomicRanges:::.get_circle_length’
      ‘GenomicRanges:::extraColumnSlotNames’
      ‘IRanges:::.shift_ranges_in_groups_to_first_circle’
      ‘S4Vectors:::normarg_names’ ‘S4Vectors:::numeric2integer’
      ‘S4Vectors:::sapply_isNULL’ ‘data.table:::funique’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘bsseqData’
    ```

# calmate

<details>

* Version: 0.13.0
* GitHub: https://github.com/HenrikBengtsson/calmate
* Source code: https://github.com/cran/calmate
* Date/Publication: 2022-03-08 23:00:03 UTC
* Number of recursive dependencies: 22

Run `revdep_details(, "calmate")` for more info

</details>

## Newly broken

*   checking whether package ‘calmate’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/calmate/new/calmate.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘calmate’ ...
** package ‘calmate’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘R.devices’:
 object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘calmate’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/calmate/new/calmate.Rcheck/calmate’


```
### CRAN

```
* installing *source* package ‘calmate’ ...
** package ‘calmate’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (calmate)


```
# CB2

<details>

* Version: 1.3.4
* GitHub: NA
* Source code: https://github.com/cran/CB2
* Date/Publication: 2020-07-24 09:42:24 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "CB2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        data      1.5Mb
        extdata   1.1Mb
        libs      4.3Mb
    ```

# cellbaseR

<details>

* Version: 1.20.0
* GitHub: https://github.com/melsiddieg/cellbaseR
* Source code: https://github.com/cran/cellbaseR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 151

Run `revdep_details(, "cellbaseR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘cellbaseR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: AnnotateVcf,CellBaseR-method
    > ### Title: AnnotateVcf
    > ### Aliases: AnnotateVcf,CellBaseR-method AnnotateVcf
    > 
    > ### ** Examples
    > 
    > cb <- CellBaseR()
    ...
    > res <- AnnotateVcf(object=cb, file=fl, BPPARAM = bpparam(workers=2),batch_size=100)
    Error: BiocParallel errors
      2 remote errors, element index: 1, 2
      0 unevaluated and other errors
      first remote error:
    Error: lexical error: invalid char in json text.
                                           <!DOCTYPE html><html><head><tit
                         (right here) ------^
    
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘cellbaseR.Rmd’ using rmarkdown
    Loading required package: Gviz
    Loading required package: S4Vectors
    Loading required package: stats4
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    ...
                         (right here) ------^
    
    
    --- failed re-building ‘cellbaseR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘cellbaseR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cifti

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 47

Run `revdep_details(, "cifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# civis

<details>

* Version: 3.0.0
* GitHub: https://github.com/civisanalytics/civis-r
* Source code: https://github.com/cran/civis
* Date/Publication: 2020-06-22 18:00:02 UTC
* Number of recursive dependencies: 88

Run `revdep_details(, "civis")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cmdfun

<details>

* Version: 1.0.2
* GitHub: https://github.com/snystrom/cmdfun
* Source code: https://github.com/cran/cmdfun
* Date/Publication: 2020-10-10 09:30:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "cmdfun")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cmsaf

<details>

* Version: 3.4.2
* GitHub: NA
* Source code: https://github.com/cran/cmsaf
* Date/Publication: 2022-03-18 10:20:15 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "cmsaf")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘FNN’ ‘R.utils’ ‘SearchTrees’ ‘colorspace’ ‘colourpicker’
      ‘data.table’ ‘fields’ ‘mapproj’ ‘maps’ ‘maptools’ ‘ncdf4’ ‘raster’
      ‘rworldxtra’ ‘shinyFiles’ ‘shinyWidgets’ ‘shinyjs’ ‘shinythemes’ ‘sp’
      ‘tcltk’ ‘xml2’
      All declared Imports should be used.
    ```

# CNEr

<details>

* Version: 1.32.0
* GitHub: https://github.com/ge11232002/CNEr
* Source code: https://github.com/cran/CNEr
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 173

Run `revdep_details(, "CNEr")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    File ‘CNEr/libs/CNEr.so’:
      Found ‘abort’, possibly from ‘abort’ (C)
        Object: ‘ucsc/errabort.o’
      Found ‘exit’, possibly from ‘exit’ (C)
        Objects: ‘ucsc/errabort.o’, ‘ucsc/pipeline.o’
      Found ‘printf’, possibly from ‘printf’ (C)
        Objects: ‘ceScan.o’, ‘ucsc/pipeline.o’
      Found ‘puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Object: ‘ucsc/pipeline.o’
      Found ‘rand’, possibly from ‘rand’ (C)
    ...
          ‘ucsc/verbose.o’, ‘ucsc/os.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Objects: ‘ucsc/common.o’, ‘ucsc/errabort.o’, ‘ucsc/verbose.o’,
          ‘ucsc/os.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.2Mb
      sub-directories of 1Mb or more:
        doc       1.8Mb
        extdata  15.9Mb
        libs      1.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
      See the note in ?`:::` about the use of this operator.
    ```

# CNVgears

<details>

* Version: 1.4.0
* GitHub: https://github.com/SinomeM/CNVgears
* Source code: https://github.com/cran/CNVgears
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 188

Run `revdep_details(, "CNVgears")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘CNVgears.Rmd’ using rmarkdown
    Error: processing vignette 'CNVgears.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘CNVgears.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘CNVgears.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data      1.4Mb
        extdata   3.6Mb
    ```

# cometr

<details>

* Version: 0.2.0
* GitHub: https://github.com/comet-ml/cometr
* Source code: https://github.com/cran/cometr
* Date/Publication: 2020-08-13 17:40:03 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "cometr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# COTAN

<details>

* Version: 1.0.0
* GitHub: https://github.com/seriph78/COTAN
* Source code: https://github.com/cran/COTAN
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 191

Run `revdep_details(, "COTAN")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘COTAN-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: automatic.COTAN.object.creation
    > ### Title: automatic.COTAN.object.creation
    > ### Aliases: automatic.COTAN.object.creation
    > ###   automatic.COTAN.object.creation,data.frame-method
    > 
    > ### ** Examples
    > 
    ...
    
    Please update conda by running
    
        $ conda update -n base -c defaults conda
    
    
    Error in py_run_file_impl(file, local, convert) : 
      ImportError: /lib64/libstdc++.so.6: version `GLIBCXX_3.4.21' not found (required by /c4/home/henrik/.cache/R/basilisk/1.8.0/COTAN/1.0.0/my_env_cotan/lib/python3.7/site-packages/pandas/_libs/window/aggregations.cpython-37m-x86_64-linux-gnu.so)
    Calls: automatic.COTAN.object.creation ... <Anonymous> -> <Anonymous> -> py_run_file -> py_run_file_impl
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘spelling.R’
      Comparing ‘spelling.Rout’ to ‘spelling.Rout.save’ ...6c6
    < NULL
    ---
    > All Done!
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Error in `py_run_file_impl(file, local, convert)`: ImportError: /lib64/libstdc++.so.6: version `GLIBCXX_3.4.21' not found (required by /c4/home/henrik/.cache/R/basilisk/1.8.0/COTAN/1.0.0/my_env_cotan/lib/python3.7/site-packages/pandas/_libs/window/aggregations.cpython-37m-x86_64-linux-gnu.so)
    ...
      ── Error (test-my-test.R:120:5): 5.get_pval_test ───────────────────────────────
      Error in `gzfile(file, "rb")`: cannot open the connection
      Backtrace:
          ▆
       1. └─base::readRDS(file.path(tm, "temp.RDS")) at test-my-test.R:120:4
       2.   └─base::gzfile(file, "rb")
      
      [ FAIL 5 | WARN 3 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Guided_tutorial.Rmd’ using rmarkdown
    Quitting from lines 131-136 (Guided_tutorial.Rmd) 
    Error: processing vignette 'Guided_tutorial.Rmd' failed with diagnostics:
    ImportError: /lib64/libstdc++.so.6: version `GLIBCXX_3.4.21' not found (required by /c4/home/henrik/.cache/R/basilisk/1.8.0/COTAN/1.0.0/my_env_cotan/lib/python3.7/site-packages/pandas/_libs/window/aggregations.cpython-37m-x86_64-linux-gnu.so)
    
    --- failed re-building ‘Guided_tutorial.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Guided_tutorial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# countyfloods

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/countyfloods
* Date/Publication: 2017-10-26 03:22:55 UTC
* Number of recursive dependencies: 103

Run `revdep_details(, "countyfloods")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘countyfloods-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: find_nws
    > ### Title: Get National Weather Service (NWS) flood stage/discharge levels
    > ###   for gages.
    > ### Aliases: find_nws
    > 
    > ### ** Examples
    > 
    ...
      6. │ ├─dplyr::filter(.data, !!!dots)
      7. │ └─dplyr:::filter.data.frame(.data, !!!dots)
      8. │   └─dplyr:::filter_rows(.data, ..., caller_env = caller_env())
      9. │     └─dplyr:::filter_eval(dots, mask = mask, error_call = error_call)
     10. │       ├─base::withCallingHandlers(...)
     11. │       └─mask$eval_all_filter(dots, env_filter)
     12. └─base::.handleSimpleError(...)
     13.   └─dplyr h(simpleError(msg, call))
     14.     └─rlang::abort(bullets, call = error_call, parent = skip_internal_condition(e))
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cRegulome

<details>

* Version: 0.3.2
* GitHub: https://github.com/ropensci/cRegulome
* Source code: https://github.com/cran/cRegulome
* Date/Publication: 2020-05-08 13:20:09 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "cRegulome")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cTRAP

<details>

* Version: 1.14.0
* GitHub: https://github.com/nuno-agostinho/cTRAP
* Source code: https://github.com/cran/cTRAP
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 171

Run `revdep_details(, "cTRAP")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘cTRAP-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: convertGeneIdentifiers
    > ### Title: Convert gene identifiers
    > ### Aliases: convertGeneIdentifiers
    > 
    > ### ** Examples
    > 
    > genes <- c("ENSG00000012048", "ENSG00000083093", "ENSG00000141510",
    ...
    loading from cache
    Warning: Couldn't set cache size: database disk image is malformed
    Use `cache_size` = NULL to turn off this warning.
    Warning: Couldn't set synchronous mode: database disk image is malformed
    Use `synchronous` = NULL to turn off this warning.
    Error: failed to load resource
      name: AH100408
      title: org.Hs.eg.db.sqlite
      reason: database disk image is malformed
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        data   4.3Mb
        doc    1.9Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# ddPCRclust

<details>

* Version: 1.16.0
* GitHub: https://github.com/bgbrink/ddPCRclust
* Source code: https://github.com/cran/ddPCRclust
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 159

Run `revdep_details(, "ddPCRclust")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘ddPCRclust.Rnw’ using Sweave
    Warning in fun(libname, pkgname) :
      rgeos: versions of GEOS runtime 3.9.1-CAPI-1.14.2
    and GEOS at installation 3.4.2-CAPI-1.8.2differ
    Warning: replacing previous import ‘flowCore::plot’ by ‘graphics::plot’ when loading ‘flowDensity’
    double positive detection failed.
    Switching the middle two double populations.
    
    Starting the flow Peaks analysis...
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘ddPCRclust.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘ddPCRclust.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# DeepBlueR

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 156

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

<details>

* Version: 1.48.0
* GitHub: NA
* Source code: https://github.com/cran/DEGraph
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 80

Run `revdep_details(, "DEGraph")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘graph’ ‘KEGGgraph’ ‘lattice’ ‘RBGL’ ‘rrcov’ ‘Rgraphviz’ ‘NCIgraph’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘R.utils’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: ‘graph:::getIndices’
      See the note in ?`:::` about the use of this operator.
    ```

# detrendr

<details>

* Version: 0.6.14
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2021-05-16 05:00:05 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        libs   8.9Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DEWSeq

<details>

* Version: 1.10.0
* GitHub: https://github.com/EMBL-Hentze-group/DEWSeq
* Source code: https://github.com/cran/DEWSeq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 123

Run `revdep_details(, "DEWSeq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘DEWSeq.Rmd’ using rmarkdown
    Loading required package: DEWSeq
    Loading required package: R.utils
    Loading required package: R.oo
    Loading required package: R.methodsS3
    R.methodsS3 v1.8.1 (2020-08-26 16:20:06 UTC) successfully loaded. See ?R.methodsS3 for help.
    R.oo v1.24.0 (2020-08-26 16:11:58 UTC) successfully loaded. See ?R.oo for help.
    
    Attaching package: 'R.oo'
    ...
    Quitting from lines 506-507 (DEWSeq.Rmd) 
    Error: processing vignette 'DEWSeq.Rmd' failed with diagnostics:
    could not find function "read_tsv"
    --- failed re-building ‘DEWSeq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘DEWSeq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘R.utils’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported objects imported by ':::' calls:
      ‘DESeq2:::checkContrast’ ‘DESeq2:::cleanContrast’ ‘DESeq2:::getCoef’
      ‘DESeq2:::getCoefSE’ ‘DESeq2:::getNworkers’ ‘DESeq2:::getPvalue’
      ‘DESeq2:::getStat’ ‘DESeq2:::lastCoefName’ ‘DESeq2:::makeWaldTest’
      ‘DESeq2:::mleContrast’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘dplyr’
    'library' or 'require' call not declared from: ‘tidyverse’
    ```

# DropletUtils

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/DropletUtils
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 135

Run `revdep_details(, "DropletUtils")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      'SingleCellExperiment', 'SummarizedExperiment', 'DelayedArray',
      'DelayedMatrixStats', 'HDF5Array', 'beachmat', 'scuttle'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Eagle

<details>

* Version: 2.5
* GitHub: NA
* Source code: https://github.com/cran/Eagle
* Date/Publication: 2021-11-30 05:30:02 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "Eagle")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.2Mb
      sub-directories of 1Mb or more:
        libs       18.8Mb
        shiny_app   1.0Mb
    ```

# easyDifferentialGeneCoexpression

<details>

* Version: 1.0
* GitHub: https://github.com/davidechicco/easyDifferentialGeneCoexpression
* Source code: https://github.com/cran/easyDifferentialGeneCoexpression
* Date/Publication: 2022-02-16 20:20:07 UTC
* Number of recursive dependencies: 146

Run `revdep_details(, "easyDifferentialGeneCoexpression")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘stringi’
      All declared Imports should be used.
    ```

# eegc

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/eegc
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 150

Run `revdep_details(, "eegc")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ggplot2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ELMER

<details>

* Version: 2.20.0
* GitHub: NA
* Source code: https://github.com/cran/ELMER
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 228

Run `revdep_details(, "ELMER")` for more info

</details>

## In both

*   checking whether package ‘ELMER’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/ELMER/new/ELMER.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GenomicInteractions’
    ```

## Installation

### Devel

```
* installing *source* package ‘ELMER’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘RSQLite’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ELMER’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/ELMER/new/ELMER.Rcheck/ELMER’


```
### CRAN

```
* installing *source* package ‘ELMER’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘RSQLite’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ELMER’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/ELMER/old/ELMER.Rcheck/ELMER’


```
# enrichTF

<details>

* Version: 1.12.0
* GitHub: https://github.com/wzthu/enrichTF
* Source code: https://github.com/cran/enrichTF
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 211

Run `revdep_details(, "enrichTF")` for more info

</details>

## In both

*   checking whether package ‘enrichTF’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/enrichTF/new/enrichTF.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘enrichTF’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RSQLite’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘enrichTF’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/enrichTF/new/enrichTF.Rcheck/enrichTF’


```
### CRAN

```
* installing *source* package ‘enrichTF’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RSQLite’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘enrichTF’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/enrichTF/old/enrichTF.Rcheck/enrichTF’


```
# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EpiSoon’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 225.9Mb
      sub-directories of 1Mb or more:
        libs  224.3Mb
    ```

# esATAC

<details>

* Version: 1.18.0
* GitHub: https://github.com/wzthu/esATAC
* Source code: https://github.com/cran/esATAC
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 207

Run `revdep_details(, "esATAC")` for more info

</details>

## In both

*   checking whether package ‘esATAC’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/esATAC/new/esATAC.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘esATAC’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c BedLine.cpp -o BedLine.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c BedUtils.cpp -o BedUtils.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ChrDivi.cpp -o ChrDivi.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c CutCountPre.cpp -o CutCountPre.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c CutSiteCount.cpp -o CutSiteCount.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c LibComplexQC.cpp -o LibComplexQC.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
...
installing to /c4/home/henrik/repositories/R.utils/revdep/checks/esATAC/new/esATAC.Rcheck/00LOCK-esATAC/00new/esATAC/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tibble’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘esATAC’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/esATAC/new/esATAC.Rcheck/esATAC’


```
### CRAN

```
* installing *source* package ‘esATAC’ ...
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c BedLine.cpp -o BedLine.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c BedUtils.cpp -o BedUtils.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ChrDivi.cpp -o ChrDivi.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c CutCountPre.cpp -o CutCountPre.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c CutSiteCount.cpp -o CutSiteCount.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c LibComplexQC.cpp -o LibComplexQC.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DNDEBUG -DPLF_SYS_LINUX  -DR_EVN_FLAG -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
...
installing to /c4/home/henrik/repositories/R.utils/revdep/checks/esATAC/old/esATAC.Rcheck/00LOCK-esATAC/00new/esATAC/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tibble’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘esATAC’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/esATAC/old/esATAC.Rcheck/esATAC’


```
# ezknitr

<details>

* Version: 0.6
* GitHub: https://github.com/ropenscilabs/ezknitr
* Source code: https://github.com/cran/ezknitr
* Date/Publication: 2016-09-16 07:13:44
* Number of recursive dependencies: 52

Run `revdep_details(, "ezknitr")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fastreeR

<details>

* Version: 1.0.0
* GitHub: https://github.com/gkanogiannis/fastreeR
* Source code: https://github.com/cran/fastreeR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 87

Run `revdep_details(, "fastreeR")` for more info

</details>

## In both

*   R CMD check timed out
    

# FCPS

<details>

* Version: 1.3.1
* GitHub: https://github.com/Mthrun/FCPS
* Source code: https://github.com/cran/FCPS
* Date/Publication: 2022-05-20 16:40:05 UTC
* Number of recursive dependencies: 267

Run `revdep_details(, "FCPS")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ProjectionBasedClustering’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    3.9Mb
    ```

# FGNet

<details>

* Version: 3.30.0
* GitHub: NA
* Source code: https://github.com/cran/FGNet
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 78

Run `revdep_details(, "FGNet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘FGNet.Rmd’ using rmarkdown
    Quitting from lines 89-90 (FGNet.Rmd) 
    Error: processing vignette 'FGNet.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘FGNet.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘FGNet.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘RGtk2’
    ```

# fitteR

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/fitteR
* Date/Publication: 2022-02-22 12:00:02 UTC
* Number of recursive dependencies: 211

Run `revdep_details(, "fitteR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘reliaR’
    ```

# FRASER

<details>

* Version: 1.8.0
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 188

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      'SummarizedExperiment', 'BSgenome', 'DelayedArray',
      'DelayedMatrixStats', 'GenomicAlignments', 'GenomicFeatures',
      'HDF5Array', 'OUTRIDER', 'tibble'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GCSscore

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/GCSscore
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 110

Run `revdep_details(, "GCSscore")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘GCSscore.Rnw’ using ‘UTF-8’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘GCSscore.Rnw’
      ...
    *This package will only be generated once for each chip-type*
    *Or if probeFile version for the chip-type needs to be updated*
    writing intermediary .probe_tab file to temporary directory
    Importing the data.
    Warning in packageDescription(thispkg) :
      no package 'AnnotationForge' was found
    
      When sourcing ‘GCSscore.R’:
    Error: $ operator is invalid for atomic vectors
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        extdata  11.6Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘GCSscore.Rnw’ using Sweave
    GCSscore supports the selected chip-type: Clariom_S_Mouse
    Bioconductor platform design (.pd) package already installed for: Clariom_S_Mouse
    GCS-score analysis initiated for chip-type: Clariom_S_Mouse
    GCS-score 'probeFile' package needs to be installed for chip-type: Clariom_S_Mouse
    typeFilter set to (0) by default for best .CEL file scaling and normalization statistics 
     all probe_id types (including control probe_ids and bgp probe_ids) will be for GCS-score calculation.
    it is generally recommended to leave the typeFilter option set to (0)
    ```

# geneExpressionFromGEO

<details>

* Version: 0.9
* GitHub: https://github.com/davidechicco/geneExpressionFromGEO
* Source code: https://github.com/cran/geneExpressionFromGEO
* Date/Publication: 2021-12-16 08:40:02 UTC
* Number of recursive dependencies: 88

Run `revdep_details(, "geneExpressionFromGEO")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocManager’ ‘R.utils’ ‘markdown’
      All declared Imports should be used.
    ```

# GenomicDataCommons

<details>

* Version: 1.20.1
* GitHub: https://github.com/Bioconductor/GenomicDataCommons
* Source code: https://github.com/cran/GenomicDataCommons
* Date/Publication: 2022-04-28
* Number of recursive dependencies: 156

Run `revdep_details(, "GenomicDataCommons")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘overview.Rmd’ using rmarkdown
    Loading required package: magrittr
    
    Attaching package: 'GenomicDataCommons'
    
    The following object is masked from 'package:stats':
    
        filter
    
    ...
    Quitting from lines 69-75 (somatic_mutations.Rmd) 
    Error: processing vignette 'somatic_mutations.Rmd' failed with diagnostics:
    there is no package called 'VariantAnnotation'
    --- failed re-building ‘somatic_mutations.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘somatic_mutations.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GenomicAlignments', 'VariantAnnotation'
    ```

# GEOquery

<details>

* Version: 2.64.2
* GitHub: https://github.com/seandavi/GEOquery
* Source code: https://github.com/cran/GEOquery
* Date/Publication: 2022-05-15
* Number of recursive dependencies: 80

Run `revdep_details(, "GEOquery")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.8Mb
      sub-directories of 1Mb or more:
        extdata  12.8Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘GEOquery’ for: ‘show’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R.utils’
      All declared Imports should be used.
    Package in Depends field not imported from: ‘methods’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    File ‘GEOquery/R/zzz.R’:
      .onLoad calls:
        packageStartupMessage("Setting options('download.file.method.GEOquery'='auto')")
        packageStartupMessage("Setting options('GEOquery.inmemory.gpl'=FALSE)")
    
    See section ‘Good practice’ in '?.onAttach'.
    ```

# GGIR

<details>

* Version: 2.7-0
* GitHub: https://github.com/wadpac/GGIR
* Source code: https://github.com/cran/GGIR
* Date/Publication: 2022-05-23 18:30:08 UTC
* Number of recursive dependencies: 137

Run `revdep_details(, "GGIR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        doc    3.7Mb
        libs   2.4Mb
    ```

# gifti

<details>

* Version: 0.8.0
* GitHub: https://github.com/muschellij2/gifti
* Source code: https://github.com/cran/gifti
* Date/Publication: 2020-11-11 22:40:02 UTC
* Number of recursive dependencies: 62

Run `revdep_details(, "gifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# glue

<details>

* Version: 1.6.2
* GitHub: https://github.com/tidyverse/glue
* Source code: https://github.com/cran/glue
* Date/Publication: 2022-02-24 07:50:20 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "glue")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘engines.Rmd’ using rmarkdown
    Quitting from lines 55-58 (engines.Rmd) 
    Error: processing vignette 'engines.Rmd' failed with diagnostics:
    error in evaluating the argument 'drv' in selecting a method for function 'dbConnect': there is no package called 'RSQLite'
    --- failed re-building ‘engines.Rmd’
    
    --- re-building ‘speed.Rmd’ using rmarkdown
    --- finished re-building ‘speed.Rmd’
    ...
    Loading required package: emo
    Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
      there is no package called 'emo'
    --- finished re-building ‘transformers.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘engines.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RSQLite’
    ```

# HiCBricks

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/HiCBricks
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 94

Run `revdep_details(, "HiCBricks")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc       4.4Mb
        extdata   2.2Mb
    ```

# HiCDCPlus

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/HiCDCPlus
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 164

Run `revdep_details(, "HiCDCPlus")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘HiCDCPlus-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: HTClist2gi_list
    > ### Title: HTClist2gi_list
    > ### Aliases: HTClist2gi_list
    > 
    > ### ** Examples
    > 
    > gi_list<-generate_binned_gi_list(50e3,chrs=c('chr22'))
    ...
        strsplit
    
    Loading required package: rtracklayer
    > gi_list<-add_hic_counts(gi_list,
    + hic_path=system.file("extdata", "GSE63525_HMEC_combined_example.hic",
    + package = "HiCDCPlus"))
    Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
      there is no package called ‘ggplot2’
    Calls: add_hic_counts ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘HiCDCPlus.Rmd’ using rmarkdown
    Loading required package: BSgenome
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
        IQR, mad, sd, var, xtabs
    ...
    Quitting from lines 120-125 (HiCDCPlus.Rmd) 
    Error: processing vignette 'HiCDCPlus.Rmd' failed with diagnostics:
    there is no package called 'ggplot2'
    --- failed re-building ‘HiCDCPlus.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘HiCDCPlus.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        extdata   3.3Mb
        libs      2.0Mb
    ```

# hoardeR

<details>

* Version: 0.9.4-2
* GitHub: NA
* Source code: https://github.com/cran/hoardeR
* Date/Publication: 2019-02-12 08:23:21 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "hoardeR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# htmldf

<details>

* Version: 0.5.0
* GitHub: https://github.com/alastairrushworth/htmldf
* Source code: https://github.com/cran/htmldf
* Date/Publication: 2022-01-13 11:12:43 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "htmldf")` for more info

</details>

## In both

*   checking whether package ‘htmldf’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/htmldf/new/htmldf.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘htmldf’ ...
** package ‘htmldf’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pillar’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘htmldf’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/htmldf/new/htmldf.Rcheck/htmldf’


```
### CRAN

```
* installing *source* package ‘htmldf’ ...
** package ‘htmldf’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pillar’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘htmldf’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/htmldf/old/htmldf.Rcheck/htmldf’


```
# HyPhy

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/HyPhy
* Date/Publication: 2012-07-30 04:09:01
* Number of recursive dependencies: 7

Run `revdep_details(, "HyPhy")` for more info

</details>

## In both

*   checking whether package ‘HyPhy’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/HyPhy/new/HyPhy.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘HyPhy’ ...
** package ‘HyPhy’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ape’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rcpp’
Execution halted
ERROR: lazy loading failed for package ‘HyPhy’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/HyPhy/new/HyPhy.Rcheck/HyPhy’


```
### CRAN

```
* installing *source* package ‘HyPhy’ ...
** package ‘HyPhy’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ape’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘Rcpp’
Execution halted
ERROR: lazy loading failed for package ‘HyPhy’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/HyPhy/old/HyPhy.Rcheck/HyPhy’


```
# ISAnalytics

<details>

* Version: 1.6.2
* GitHub: https://github.com/calabrialab/ISAnalytics
* Source code: https://github.com/cran/ISAnalytics
* Date/Publication: 2022-05-24
* Number of recursive dependencies: 156

Run `revdep_details(, "ISAnalytics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    4.3Mb
    ```

# joinXL

<details>

* Version: 1.0.1
* GitHub: https://github.com/yvonneglanville/joinXL
* Source code: https://github.com/cran/joinXL
* Date/Publication: 2016-09-19 01:45:37
* Number of recursive dependencies: 51

Run `revdep_details(, "joinXL")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# jsTreeR

<details>

* Version: 1.6.0
* GitHub: https://github.com/stla/jsTreeR
* Source code: https://github.com/cran/jsTreeR
* Date/Publication: 2022-02-28 05:20:02 UTC
* Number of recursive dependencies: 37

Run `revdep_details(, "jsTreeR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 17 marked UTF-8 strings
    ```

# KnowSeq

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/KnowSeq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 159

Run `revdep_details(, "KnowSeq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        doc       5.8Mb
        extdata   5.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    DEGsExtraction: warning in topTable(fit, number = number, coef = 2,
      sort.by = "logFC", p.value = pvalue, adjust = "fdr", lfc = lfc):
      partial argument match of 'adjust' to 'adjust.method'
    RNAseqQA : outlierBarPlot: no visible binding for global variable ‘x’
    RNAseqQA : outlierBarPlot: no visible binding for global variable ‘y’
    RNAseqQA: no visible binding for global variable ‘Var1’
    RNAseqQA: no visible binding for global variable ‘Var2’
    RNAseqQA: no visible binding for global variable ‘value’
    RNAseqQA: no visible binding for global variable ‘Expression’
    RNAseqQA: no visible binding for global variable ‘Samples’
    dataPlot: no visible binding for global variable ‘Var1’
    dataPlot: no visible binding for global variable ‘Var2’
    dataPlot: no visible binding for global variable ‘value’
    dataPlot: no visible binding for global variable ‘Classes’
    dataPlot: no visible binding for global variable ‘Value’
    knn_trn: no visible global function definition for ‘knn.cv’
    knowseqReport: no visible binding for global variable ‘target’
    Undefined global functions or variables:
      Classes Expression Samples Value Var1 Var2 knn.cv target value x y
    ```

# latrend

<details>

* Version: 1.3.0
* GitHub: https://github.com/philips-software/latrend
* Source code: https://github.com/cran/latrend
* Date/Publication: 2022-05-26 14:40:05 UTC
* Number of recursive dependencies: 233

Run `revdep_details(, "latrend")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rmarkdown’
      All declared Imports should be used.
    ```

# link2GI

<details>

* Version: 0.4-7
* GitHub: https://github.com/r-spatial/link2GI
* Source code: https://github.com/cran/link2GI
* Date/Publication: 2021-09-03 04:50:34 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "link2GI")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# logger

<details>

* Version: 0.2.2
* GitHub: https://github.com/daroczig/logger
* Source code: https://github.com/cran/logger
* Date/Publication: 2021-10-19 05:30:08 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "logger")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'logging', 'futile.logger', 'log4r'
    ```

# MACSQuantifyR

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/MACSQuantifyR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 91

Run `revdep_details(, "MACSQuantifyR")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      revdep/.cache.rds
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# maftools

<details>

* Version: 2.12.0
* GitHub: https://github.com/PoisonAlien/maftools
* Source code: https://github.com/cran/maftools
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 117

Run `revdep_details(, "maftools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.1Mb
      sub-directories of 1Mb or more:
        doc       8.7Mb
        extdata   6.0Mb
        libs      2.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rhtslib’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .dnaCopy_plotter: no visible binding for global variable ‘contig’
    .dnaCopy_plotter: no visible binding for global variable ‘Chromosome’
    .dnaCopy_plotter: no visible global function definition for ‘par’
    .dnaCopy_plotter: no visible global function definition for ‘abline’
    .dnaCopy_plotter: no visible global function definition for ‘segments’
    .dnaCopy_plotter: no visible global function definition for ‘axis’
    .mafSetKeys: no visible binding for global variable ‘Chromosome’
    .mafSetKeys: no visible binding for global variable ‘Start_Position’
    .mafSetKeys: no visible binding for global variable ‘End_Position’
    OncogenicPathways: no visible binding for global variable
    ...
                 "stripchart", "symbols", "text", "title")
      importFrom("stats", "C", "complete.cases", "cophenetic", "cor.test",
                 "dbinom", "density", "fisher.test", "glm", "kmeans",
                 "median", "na.omit", "p.adjust", "pairwise.t.test",
                 "pairwise.table", "pchisq", "pnorm", "poisson",
                 "poisson.test", "qf", "qnorm", "runif", "sd", "start",
                 "t.test", "wilcox.test")
      importFrom("utils", "browseURL", "combn", "download.file", "read.csv",
                 "setTxtProgressBar", "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

*   checking compiled code ... NOTE
    ```
    File ‘maftools/libs/maftools.so’:
      Found ‘stderr’, possibly from ‘stderr’ (C)
        Object: ‘snpcounts.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘snpcounts.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# metaboliteIDmapping

<details>

* Version: 1.0.0
* GitHub: https://github.com/yigbt/metaboliteIDmapping
* Source code: https://github.com/cran/metaboliteIDmapping
* Number of recursive dependencies: 107

Run `revdep_details(, "metaboliteIDmapping")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘metaboliteIDmapping.Rmd’ using rmarkdown
    Error: processing vignette 'metaboliteIDmapping.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘metaboliteIDmapping.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘metaboliteIDmapping.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MetaDBparse

<details>

* Version: 2.0.0
* GitHub: NA
* Source code: https://github.com/cran/MetaDBparse
* Date/Publication: 2021-05-03 14:00:11 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "MetaDBparse")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘pacman’
      All declared Imports should be used.
    ```

# MethReg

<details>

* Version: 1.6.0
* GitHub: https://github.com/TransBioInfoLab/MethReg
* Source code: https://github.com/cran/MethReg
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 225

Run `revdep_details(, "MethReg")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'methReg_analysis'
      ‘tf.dnam.classifier.pval.threshold’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        doc   2.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘TCGAbiolinks’
    ```

# methylKit

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/methylKit
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 131

Run `revdep_details(, "methylKit")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'methylRawList-class'
      ‘...’ ‘treatment’
    
    Undocumented arguments in documentation object 'methylRawListDB-class'
      ‘...’ ‘treatment’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        doc    1.4Mb
        libs   4.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘KernSmooth’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# mirTarRnaSeq

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/mirTarRnaSeq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 232

Run `revdep_details(, "mirTarRnaSeq")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘mirTarRnaSeq-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mirRnaHeatmap
    > ### Title: mirRnaHeatmap pheatmap for miRTarRNASeq miRNA and mRNA
    > ###   correlation
    > ### Aliases: mirRnaHeatmap
    > ### Keywords: color, correlation heatmap, pheatmap, plot,correlation_plot
    > 
    > ### ** Examples
    > 
    > x <- mirRnaHeatmap(corr_0)
    Error in loadNamespace(x) : there is no package called ‘viridis’
    Calls: mirRnaHeatmap ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mirTarRnaSeq.Rmd’ using rmarkdown
    Quitting from lines 17-36 (mirTarRnaSeq.Rmd) 
    Error: processing vignette 'mirTarRnaSeq.Rmd' failed with diagnostics:
    there is no package called 'viridis'
    --- failed re-building ‘mirTarRnaSeq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mirTarRnaSeq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   3.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘ggplot2’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘tidyr’ ‘viridis’
    ```

# mistyR

<details>

* Version: 1.4.0
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 136

Run `revdep_details(, "mistyR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# msgbsR

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/msgbsR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 162

Run `revdep_details(, "msgbsR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.6Mb
      sub-directories of 1Mb or more:
        extdata  15.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'utils'
      All declared Imports should be used.
    ```

# nc

<details>

* Version: 2020.8.6
* GitHub: https://github.com/tdhock/nc
* Source code: https://github.com/cran/nc
* Date/Publication: 2020-08-10 17:10:17 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "nc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘re2r’
    ```

# nearBynding

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/nearBynding
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 125

Run `revdep_details(, "nearBynding")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        extdata   6.9Mb
    ```

# netboost

<details>

* Version: 2.4.0
* GitHub: https://github.com/PascalSchlosser/netboost
* Source code: https://github.com/cran/netboost
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 111

Run `revdep_details(, "netboost")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘netboost.Rmd’ using rmarkdown
    Error: processing vignette 'netboost.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘netboost.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘netboost.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# NPMLEmix

<details>

* Version: 1.2
* GitHub: https://github.com/NabarunD/NPMLEmix
* Source code: https://github.com/cran/NPMLEmix
* Date/Publication: 2020-12-06 05:50:02 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "NPMLEmix")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CAMAN’ ‘Hmisc’ ‘latexpdf’ ‘spatstat’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# NxtIRFcore

<details>

* Version: 1.2.0
* GitHub: https://github.com/alexchwong/NxtIRFcore
* Source code: https://github.com/cran/NxtIRFcore
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 168

Run `revdep_details(, "NxtIRFcore")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.7Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        doc    2.4Mb
        libs   9.0Mb
    ```

# oce

<details>

* Version: 1.7-3
* GitHub: https://github.com/dankelley/oce
* Source code: https://github.com/cran/oce
* Date/Publication: 2022-05-13 08:10:05 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "oce")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.5Mb
      sub-directories of 1Mb or more:
        R      2.5Mb
        doc    1.9Mb
        help   2.9Mb
        libs   7.6Mb
    ```

# openCyto

<details>

* Version: 2.8.0
* GitHub: NA
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 145

Run `revdep_details(, "openCyto")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        doc    2.5Mb
        libs   4.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘flowViz’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘flowClust:::.ellipsePoints’ ‘flowStats:::drvkde’
      ‘flowWorkspace:::.addGate’ ‘flowWorkspace:::.cpp_addGate’
      ‘flowWorkspace:::.cpp_boolGating’ ‘flowWorkspace:::.cpp_setIndices’
      ‘flowWorkspace:::.getAllDescendants’
      ‘flowWorkspace:::filter_to_list.booleanFilter’
      ‘flowWorkspace:::filter_to_list.rectangleGate’ ‘lattice:::updateList’
      ‘ncdfFlow:::toBitVec’ ‘ncdfFlow:::toLogical’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘groupBy’ ‘isCollapse’ ‘ppMethod’ ‘unlockNamespace’
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘openCyto/R/pluginFramework.R’:
      unlockBinding(methodName, ENV)
      unlockBinding(methodName, ENV)
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘gridExtra’
    ```

# ORFik

<details>

* Version: 1.16.0
* GitHub: https://github.com/Roleren/ORFik
* Source code: https://github.com/cran/ORFik
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 161

Run `revdep_details(, "ORFik")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        doc    4.1Mb
        libs   3.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘GenomicFeatures:::.merge_seqinfo_and_infer_missing_seqlengths’
      ‘IRanges:::regroupBySupergroup’ ‘S4Vectors:::normarg_mcols’
      ‘biomartr:::getENSEMBL.Seq’ ‘biomartr:::getENSEMBL.gtf’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘find_url_ebi’ ‘trimming.table’
    ```

# pagoda2

<details>

* Version: 1.0.10
* GitHub: https://github.com/kharchenkolab/pagoda2
* Source code: https://github.com/cran/pagoda2
* Date/Publication: 2022-04-19 21:40:01 UTC
* Number of recursive dependencies: 163

Run `revdep_details(, "pagoda2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.9Mb
      sub-directories of 1Mb or more:
        libs   9.3Mb
    ```

# paxtoolsr

<details>

* Version: 1.30.0
* GitHub: https://github.com/BioPAX/paxtoolsr
* Source code: https://github.com/cran/paxtoolsr
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 163

Run `revdep_details(, "paxtoolsr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘paxtoolsr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: validate
    > ### Title: Validate BioPAX files
    > ### Aliases: validate
    > 
    > ### ** Examples
    > 
    > outFile <- tempfile()
    ...
    	at org.apache.http.impl.execchain.RedirectExec.execute(RedirectExec.java:108)
    	at org.apache.http.impl.client.InternalHttpClient.doExecute(InternalHttpClient.java:186)
    	at org.apache.http.impl.client.CloseableHttpClient.execute(CloseableHttpClient.java:82)
    	at org.apache.http.impl.client.CloseableHttpClient.execute(CloseableHttpClient.java:57)
    	at org.apache.http.client.fluent.Executor.execute(Executor.java:215)
    	at org.biopax.paxtools.client.BiopaxValidatorClient.validate(BiopaxValidatorClient.java:175)
    	at org.biopax.paxtools.PaxtoolsMain.validate(PaxtoolsMain.java:310)
    Start tag expected, '<' not found
    Error: 1: Start tag expected, '<' not found
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      	at org.biopax.paxtools.client.BiopaxValidatorClient.validate(BiopaxValidatorClient.java:175)
      	at org.biopax.paxtools.PaxtoolsMain.validate(PaxtoolsMain.java:310)
      2157 [main] ERROR org.biopax.paxtools.PaxtoolsMain  - Unable to check with the biopax-validator web service: 
       java.net.UnknownHostException: www.biopax.org
       Fall-back: trying to parse the file(s) with paxtools (up to the first syntax error in each file)...
      
    ...
      
      Backtrace:
          ▆
       1. ├─paxtoolsr::validate(...) at test_paxtools.R:41:4
       2. │ └─XML::xmlTreeParse(outputFile, useInternalNodes = TRUE)
       3. └─XML `<fn>`(`<chr>`)
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 57 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 33.8Mb
      sub-directories of 1Mb or more:
        doc       1.9Mb
        extdata   7.3Mb
        java     24.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    splitSifnxByPathway: no visible global function definition for
      ‘%dopar%’
    Undefined global functions or variables:
      %dopar%
    ```

# PhenotypeSimulator

<details>

* Version: 0.3.4
* GitHub: https://github.com/HannahVMeyer/PhenotypeSimulator
* Source code: https://github.com/cran/PhenotypeSimulator
* Date/Publication: 2021-07-16 13:30:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "PhenotypeSimulator")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.1Mb
        libs      1.2Mb
    ```

# pmparser

<details>

* Version: 1.0.10
* GitHub: https://github.com/hugheylab/pmparser
* Source code: https://github.com/cran/pmparser
* Date/Publication: 2022-04-27 22:10:08 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "pmparser")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Component "major_topic": Lengths (92, 196) differ (string compare on first 92)
      ── Failure (test_modify_pubmed_db_std.R:52:5): modifyPubmedDb update matches standard ──
      keyword_list not equal to DBI::dbReadTable(conExp, tableName).
      Attributes: < Component "row.names": Numeric: lengths (18, 37) differ >
      Component "pmid": Numeric: lengths (18, 37) differ
      Component "list_owner": Lengths (18, 37) differ (string compare on first 18)
    ...
      Attributes: < Component "row.names": Numeric: lengths (28, 74) differ >
      Component "pmid": Numeric: lengths (28, 74) differ
      Component "type_name": Lengths (28, 74) differ (string compare on first 28)
      Component "type_id": Lengths (28, 74) differ (string compare on first 28)
      
      [ FAIL 26 | WARN 0 | SKIP 4 | PASS 98 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# PopGenReport

<details>

* Version: 3.0.4
* GitHub: https://github.com/green-striped-gecko/PopGenReport
* Source code: https://github.com/cran/PopGenReport
* Date/Publication: 2019-02-04 12:13:23 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "PopGenReport")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# primirTSS

<details>

* Version: 1.14.0
* GitHub: https://github.com/ipumin/primirTSS
* Source code: https://github.com/cran/primirTSS
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 182

Run `revdep_details(, "primirTSS")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'magrittr'
    ```

# Prostar

<details>

* Version: 1.28.0
* GitHub: https://github.com/samWieczorek/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 259

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DAPAR’ ‘DAPARdata’ ‘DT’ ‘R.utils’ ‘XML’ ‘colourpicker’ ‘data.table’
      ‘future’ ‘highcharter’ ‘htmlwidgets’ ‘later’ ‘promises’
      ‘rhandsontable’ ‘sass’ ‘shinyAce’ ‘shinyBS’ ‘shinyWidgets’
      ‘shinycssloaders’ ‘shinyjqui’ ‘shinyjs’ ‘shinythemes’ ‘tibble’
      ‘webshot’
      All declared Imports should be used.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Prostar_UserManual.Rnw’ using Sweave
    Error: processing vignette 'Prostar_UserManual.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'Prostar_UserManual.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `nowidow.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘Prostar_UserManual.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘Prostar_UserManual.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# psichomics

<details>

* Version: 1.22.0
* GitHub: https://github.com/nuno-agostinho/psichomics
* Source code: https://github.com/cran/psichomics
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 247

Run `revdep_details(, "psichomics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    4.4Mb
        libs   2.0Mb
    ```

# PubBias

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/PubBias
* Date/Publication: 2013-11-21 06:48:21
* Number of recursive dependencies: 4

Run `revdep_details(, "PubBias")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘R.utils’ ‘rmeta’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# pubtatordb

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/pubtatordb
* Date/Publication: 2019-11-22 19:30:02 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "pubtatordb")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# pulsedSilac

<details>

* Version: 1.9.1
* GitHub: NA
* Source code: https://github.com/cran/pulsedSilac
* Date/Publication: 2021-11-21
* Number of recursive dependencies: 90

Run `revdep_details(, "pulsedSilac")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘taRifx’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# PureCN

<details>

* Version: 2.2.0
* GitHub: https://github.com/lima1/PureCN
* Source code: https://github.com/cran/PureCN
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 158

Run `revdep_details(, "PureCN")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Quick.Rmd’ using rmarkdown
    Loading required package: DNAcopy
    Loading required package: VariantAnnotation
    Loading required package: BiocGenerics
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:stats':
    
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘PureCN.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘PureCN.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘genomicsdb’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   2.7Mb
    ```

# QDNAseq

<details>

* Version: 1.32.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 80

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'QDNAseq.hg19', 'QDNAseq.mm10'
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘QDNAseq.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# QGameTheory

<details>

* Version: 0.1.2
* GitHub: https://github.com/indrag49/QGameTheory
* Source code: https://github.com/cran/QGameTheory
* Date/Publication: 2020-06-12 08:20:03 UTC
* Number of recursive dependencies: 22

Run `revdep_details(, "QGameTheory")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# R.devices

<details>

* Version: 2.17.0
* GitHub: https://github.com/HenrikBengtsson/R.devices
* Source code: https://github.com/cran/R.devices
* Date/Publication: 2021-01-19 18:30:06 UTC
* Number of recursive dependencies: 8

Run `revdep_details(, "R.devices")` for more info

</details>

## Newly broken

*   checking whether package ‘R.devices’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/R.devices/new/R.devices.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘R.devices’ ...
** package ‘R.devices’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘R.devices’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/R.devices/new/R.devices.Rcheck/R.devices’


```
### CRAN

```
* installing *source* package ‘R.devices’ ...
** package ‘R.devices’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (R.devices)


```
# R.rsp

<details>

* Version: 0.44.0
* GitHub: https://github.com/HenrikBengtsson/R.rsp
* Source code: https://github.com/cran/R.rsp
* Date/Publication: 2020-07-09 16:20:02 UTC
* Number of recursive dependencies: 18

Run `revdep_details(, "R.rsp")` for more info

</details>

## Newly broken

*   checking whether package ‘R.rsp’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/R.rsp/new/R.rsp.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘R.rsp’ ...
** package ‘R.rsp’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** exec
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘inherits’ is not exported by 'namespace:R.utils'
Execution halted
ERROR: lazy loading failed for package ‘R.rsp’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/R.rsp/new/R.rsp.Rcheck/R.rsp’


```
### CRAN

```
* installing *source* package ‘R.rsp’ ...
** package ‘R.rsp’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** exec
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (R.rsp)


```
# rCBA

<details>

* Version: 0.4.3
* GitHub: https://github.com/jaroslav-kuchar/rCBA
* Source code: https://github.com/cran/rCBA
* Date/Publication: 2019-05-29 21:50:03 UTC
* Number of recursive dependencies: 9

Run `revdep_details(, "rCBA")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# RcisTarget

<details>

* Version: 1.16.0
* GitHub: https://github.com/aertslab/RcisTarget
* Source code: https://github.com/cran/RcisTarget
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 146

Run `revdep_details(, "RcisTarget")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘RcisTarget-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: addSignificantGenes
    > ### Title: Add significant genes
    > ### Aliases: addSignificantGenes addSignificantGenes,list-method
    > ###   addSignificantGenes,character-method
    > ###   addSignificantGenes,GeneSet-method
    > ###   addSignificantGenes,GeneSetCollection-method getSignificantGenes
    > ###   getSignificantGenes,list-method getSignificantGenes,character-method
    ...
    +                                        genesFormat="geneList",
    +                                        plotCurve=TRUE,
    +                                        geneSets=geneLists,
    +                                        rankings=motifRankings,
    +                                        method="aprox")
    [1] 5050
    Error in .getSignificantGenes(geneSet = geneSet, rankings = rankings,  : 
      Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
    Calls: addSignificantGenes ... .addSignificantGenes -> lapply -> FUN -> .getSignificantGenes
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(RcisTarget)
      > 
      > test_check("RcisTarget")
      [1] 5050
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 45 ]
    ...
       3.     ├─RcisTarget::addSignificantGenes(...) at test_RcisTarget.R:57:2
       4.     └─RcisTarget::addSignificantGenes(...)
       5.       └─RcisTarget:::.addSignificantGenes(...)
       6.         └─base::lapply(...)
       7.           └─RcisTarget FUN(X[[i]], ...)
       8.             └─RcisTarget:::.getSignificantGenes(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 45 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘RcisTarget_MainTutorial.Rmd’ using rmarkdown
    Quitting from lines 346-350 (RcisTarget_MainTutorial.Rmd) 
    Error: processing vignette 'RcisTarget_MainTutorial.Rmd' failed with diagnostics:
    Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
    --- failed re-building ‘RcisTarget_MainTutorial.Rmd’
    
    --- re-building ‘Tutorial_AnalysisOfGenomicRegions.Rmd’ using rmarkdown
    trying URL 'https://gbiomed.kuleuven.be/apps/lcb/i-cisTarget/examples/input_files/human/peaks/Encode_GATA1_peaks.bed'
    ...
    --- finished re-building ‘Tutorial_AnalysisOfGenomicRegions.Rmd’
    
    --- re-building ‘Tutorial_AnalysisWithBackground.Rmd’ using rmarkdown
    --- finished re-building ‘Tutorial_AnalysisWithBackground.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘RcisTarget_MainTutorial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG', 'zoo'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.8Mb
      sub-directories of 1Mb or more:
        data   8.2Mb
        doc    3.1Mb
    ```

# Rcwl

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/Rcwl
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 126

Run `revdep_details(, "Rcwl")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘Rcwl’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/Rcwl/new/Rcwl.Rcheck/00install.out’ for details.
    ```

# rddapp

<details>

* Version: 1.3.0
* GitHub: NA
* Source code: https://github.com/cran/rddapp
* Date/Publication: 2022-02-13 18:50:02 UTC
* Number of recursive dependencies: 139

Run `revdep_details(, "rddapp")` for more info

</details>

## In both

*   checking whether package ‘rddapp’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/rddapp/new/rddapp.Rcheck/00install.out’ for details.
    ```

# read.gt3x

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/read.gt3x
* Date/Publication: 2021-01-13 17:20:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "read.gt3x")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# recountmethylation

<details>

* Version: 1.6.0
* GitHub: https://github.com/metamaden/recountmethylation
* Source code: https://github.com/cran/recountmethylation
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 187

Run `revdep_details(, "recountmethylation")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘recountmethylation-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_qcsignal
    > ### Title: get_qcsignal
    > ### Aliases: get_qcsignal
    > 
    > ### ** Examples
    > 
    > library(minfiData)
    Error in library(minfiData) : there is no package called ‘minfiData’
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘recountmethylation_data_analyses.Rmd’ using rmarkdown
    Warning in eval(expr, envir, enclos) : NAs introduced by coercion
    Warning in cor.test.default(mdf$predage, mdf$chron.age, method = "spearman") :
      Cannot compute exact p-value with ties
    The magick package is required to crop "/c4/home/henrik/repositories/R.utils/revdep/checks/recountmethylation/new/recountmethylation.Rcheck/vign_test/recountmethylation/vignettes/recountmethylation_data_analyses_files/figure-html/unnamed-chunk-13-1.png" but not available.
    `geom_smooth()` using formula 'y ~ x'
    The magick package is required to crop "/c4/home/henrik/repositories/R.utils/revdep/checks/recountmethylation/new/recountmethylation.Rcheck/vign_test/recountmethylation/vignettes/recountmethylation_data_analyses_files/figure-html/unnamed-chunk-14-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/R.utils/revdep/checks/recountmethylation/new/recountmethylation.Rcheck/vign_test/recountmethylation/vignettes/recountmethylation_data_analyses_files/figure-html/unnamed-chunk-21-1.png" but not available.
    Warning in regularize.values(x, y, ties, missing(ties), na.rm = na.rm) :
    ...
    Error: processing vignette 'recountmethylation_users_guide.Rmd' failed with diagnostics:
    cannot load annotation package IlluminaHumanMethylation450kanno.ilmn12.hg19
    --- failed re-building ‘recountmethylation_users_guide.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘recountmethylation_search_index.Rmd’
      ‘recountmethylation_users_guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' imports not declared from:
      ‘DelayedMatrixStats’ ‘basilisk’ ‘reticulate’
    Namespace in Imports field not imported from: ‘IlluminaHumanMethylation450kmanifest’
      All declared Imports should be used.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘ba.background’ ‘ba.biotinstaining.grn’ ‘ba.biotinstaining.red’
      ‘ba.bisulfiteconv1.grn’ ‘ba.bisulfiteconv1.red’ ‘ba.bisulfiteconv2’
      ‘ba.extension.grn’ ‘ba.extension.red’ ‘ba.hybridization.hi.vs.med’
      ‘ba.hybridization.med.vs.low’ ‘ba.nonpolymorphic.grn’
      ‘ba.nonpolymorphic.red’ ‘ba.restoration’ ‘ba.specificity1.grn’
      ‘ba.specificity1.red’ ‘ba.specificity2’ ‘ba.targetremoval1’
      ‘ba.targetremoval2’ ‘setup_sienv’
    ```

*   checking for unstated dependencies in examples ... WARNING
    ```
    'library' or 'require' call not declared from: ‘minfiData’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        doc       4.1Mb
        extdata   5.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    get_fh : <anonymous>: no visible global function definition for
      ‘make_fhmatrix_autolabel’
    make_si : <anonymous>: no visible global function definition for
      ‘make_hnsw_si’
    query_si: no visible binding for global variable ‘v’
    query_si : <anonymous>: no visible global function definition for
      ‘make_dfk_sampleid’
    Undefined global functions or variables:
      make_dfk_sampleid make_fhmatrix_autolabel make_hnsw_si v
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: query_si.Rd:33-35: Dropping empty section \value
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘basilisk’ ‘reticulate’
    ```

# RMassBank

<details>

* Version: 3.5.4
* GitHub: NA
* Source code: https://github.com/cran/RMassBank
* Date/Publication: 2022-04-01
* Number of recursive dependencies: 168

Run `revdep_details(, "RMassBank")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ChemmineOB’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RNAseq123

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/RNAseq123
* Date/Publication: 2022-04-29
* Number of recursive dependencies: 157

Run `revdep_details(, "RNAseq123")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘designmatrices.Rmd’ using rmarkdown
    Quitting from lines 94-95 (designmatrices.Rmd) 
    Error: processing vignette 'designmatrices.Rmd' failed with diagnostics:
    there is no package called 'here'
    --- failed re-building ‘designmatrices.Rmd’
    
    --- re-building ‘limmaWorkflow.Rmd’ using rmarkdown
    Loading required package: AnnotationDbi
    Loading required package: stats4
    ...
    The magick package is required to crop "/c4/home/henrik/repositories/R.utils/revdep/checks/RNAseq123/new/RNAseq123.Rcheck/vign_test/RNAseq123/vignettes/limmaWorkflow_CHN_files/figure-html/venn-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/R.utils/revdep/checks/RNAseq123/new/RNAseq123.Rcheck/vign_test/RNAseq123/vignettes/limmaWorkflow_CHN_files/figure-html/heatmap-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/R.utils/revdep/checks/RNAseq123/new/RNAseq123.Rcheck/vign_test/RNAseq123/vignettes/limmaWorkflow_CHN_files/figure-html/barcodeplot-1.png" but not available.
    --- finished re-building ‘limmaWorkflow_CHN.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘designmatrices.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Glimma', 'limma', 'edgeR', 'gplots', 'RColorBrewer', 'Mus.musculus',
      'R.utils', 'TeachingDemos', 'statmod', 'BiocWorkflowTools'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        doc       6.1Mb
        extdata   2.1Mb
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘here’
    ```

# RRphylo

<details>

* Version: 2.6.3
* GitHub: NA
* Source code: https://github.com/cran/RRphylo
* Date/Publication: 2022-05-09 08:40:26 UTC
* Number of recursive dependencies: 202

Run `revdep_details(, "RRphylo")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘RRphylo.Rmd’ using rmarkdown
    Loading required package: ape
    Loading required package: kableExtra
    Loading required package: phytools
    Loading required package: maps
    
    Attaching package: 'phytools'
    
    The following object is masked from 'package:RRphylo':
    ...
    --- failed re-building ‘search.trend.Rmd’
    
    --- re-building ‘swapONE.Rmd’ using rmarkdown
    --- finished re-building ‘swapONE.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘search.trend.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ruta

<details>

* Version: 1.1.0
* GitHub: https://github.com/fdavidcl/ruta
* Source code: https://github.com/cran/ruta
* Date/Publication: 2019-03-18 13:10:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "ruta")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# rutifier

<details>

* Version: 1.0.4
* GitHub: NA
* Source code: https://github.com/cran/rutifier
* Date/Publication: 2020-03-02 09:50:02 UTC
* Number of recursive dependencies: 3

Run `revdep_details(, "rutifier")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# shinydrive

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/shinydrive
* Date/Publication: 2021-01-11 09:30:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "shinydrive")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# signatureSearchData

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/signatureSearchData
* Date/Publication: 2022-04-28
* Number of recursive dependencies: 98

Run `revdep_details(, "signatureSearchData")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ExperimentHub’ ‘rhdf5’
      All declared Imports should be used.
    ```

# simpleSingleCell

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/simpleSingleCell
* Date/Publication: 2022-04-29
* Number of recursive dependencies: 151

Run `revdep_details(, "simpleSingleCell")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘simpleSingleCell-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: chapterPreamble
    > ### Title: Execute chapter preamble code
    > ### Aliases: chapterPreamble
    > 
    > ### ** Examples
    > 
    > tmp <- tempfile(fileext=".Rmd")
    ...
    processing file: file3bf1b4a70130d.Rmd
    label: unnamed-chunk-1 (with options) 
    List of 2
     $ echo   : logi FALSE
     $ results: chr "asis"
    
    Quitting from lines 2-3 (file3bf1b4a70130d.Rmd) 
    Error in loadNamespace(x) : there is no package called 'rebook'
    Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        doc   7.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BiocStyle’
      All declared Imports should be used.
    ```

# sparrow

<details>

* Version: 1.2.0
* GitHub: https://github.com/lianos/sparrow
* Source code: https://github.com/cran/sparrow
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 207

Run `revdep_details(, "sparrow")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        doc       2.0Mb
        extdata   2.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    geneSetsStats: no visible binding for global variable ‘direction’
    Undefined global functions or variables:
      direction
    ```

# systemPipeShiny

<details>

* Version: 1.6.0
* GitHub: https://github.com/systemPipeR/systemPipeShiny
* Source code: https://github.com/cran/systemPipeShiny
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 196

Run `revdep_details(, "systemPipeShiny")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘systemPipeShiny.Rmd’ using rmarkdown
    Quitting from lines 53-54 (systemPipeShiny.Rmd) 
    Error: processing vignette 'systemPipeShiny.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘systemPipeShiny.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘systemPipeShiny.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   3.8Mb
    ```

# tablet

<details>

* Version: 0.5.8
* GitHub: https://github.com/bergsmat/tablet
* Source code: https://github.com/cran/tablet
* Date/Publication: 2022-04-29 22:50:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "tablet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘tablet-introduction-html.Rmd’ using rmarkdown
    --- finished re-building ‘tablet-introduction-html.Rmd’
    
    --- re-building ‘tablet-introduction-pdf.Rmd’ using rmarkdown
    A new version of TeX Live has been released. If you need to install or update any LaTeX packages, you have to upgrade TinyTeX with tinytex::reinstall_tinytex(repository = "illinois").
    
    tlmgr: Local TeX Live (2021) is older than remote repository (2022).
    Cross release updates are only supported with
      update-tlmgr-latest(.sh/.exe) --update
    ...
    
    Error: processing vignette 'tablet-introduction-pdf.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/R.utils/revdep/checks/tablet/new/tablet.Rcheck/vign_test/tablet/vignettes/tablet-introduction-pdf.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See tablet-introduction-pdf.log for more info.
    --- failed re-building ‘tablet-introduction-pdf.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘tablet-introduction-pdf.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘foreign’
    ```

# TCGAutils

<details>

* Version: 1.16.0
* GitHub: https://github.com/waldronlab/TCGAutils
* Source code: https://github.com/cran/TCGAutils
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 216

Run `revdep_details(, "TCGAutils")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TCGAutils-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: oncoPrintTCGA
    > ### Title: OncoPrint for TCGA Mutation Assays
    > ### Aliases: oncoPrintTCGA
    > 
    > ### ** Examples
    > 
    > 
    ...
    harmonizing input:
      removing 915 sampleMap rows not in names(experiments)
      removing 2 colData rownames not in sampleMap 'primary'
    > 
    > oncoPrintTCGA(acc)
    
    Error in .find_assembly_ftp_dir(assembly_accession, assembly_name = assembly_name) : 
      unable to find FTP dir for assembly GCF_000001405.25
    Calls: oncoPrintTCGA ... .form_assembly_report_url -> .find_assembly_ftp_dir
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘TCGAutils.Rmd’ using rmarkdown
    Loading required package: MultiAssayExperiment
    Loading required package: SummarizedExperiment
    Loading required package: MatrixGenerics
    Loading required package: matrixStats
    
    Attaching package: 'MatrixGenerics'
    
    The following objects are masked from 'package:matrixStats':
    ...
    Quitting from lines 202-203 (TCGAutils.Rmd) 
    Error: processing vignette 'TCGAutils.Rmd' failed with diagnostics:
    unable to find FTP dir for assembly GCF_000001405.25
    --- failed re-building ‘TCGAutils.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘TCGAutils.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘GenomicRanges:::.normarg_field’
      ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# TFEA.ChIP

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/TFEA.ChIP
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 163

Run `revdep_details(, "TFEA.ChIP")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘runTests.R’
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Complete output:
      > BiocGenerics:::testPackage(pkgname = "TFEA.ChIP")
      
      Because of space limitations, TFEA.ChIPs internal database only includes ChIP-seq experiments from cell types in ENCODE's tiers 1, 2, and 2.5. 
      To download the full ReMap2022 database, as well as other ready-to-use databases, visit https://github.com/LauraPS1/TFEA.ChIP_downloads
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   4.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    rankTFs: no visible binding for global variable ‘arg.ES’
    rankTFs: no visible binding for global variable ‘ES’
    rankTFs: no visible binding for global variable ‘TF’
    Undefined global functions or variables:
      ES TF arg.ES
    ```

# tmle.npvi

<details>

* Version: 0.10.0
* GitHub: NA
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 41

Run `revdep_details(, "tmle.npvi")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘tmle-npvi.Rnw’ using knitr
    Error: processing vignette 'tmle-npvi.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'tmle-npvi.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `manfnt.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    ...
    l.59 \usepackage
                    [textwidth=15cm, textheight=23cm]{geometry}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘tmle-npvi.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘tmle-npvi.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    NPVI: no visible global function definition for ‘quantile’
    SL.glm.condExpX2givenW: no visible global function definition for
      ‘as.formula’
    SL.glm.condExpX2givenW: no visible global function definition for ‘glm’
    SL.glm.condExpXYgivenW: no visible global function definition for
      ‘as.formula’
    SL.glm.condExpXYgivenW: no visible global function definition for ‘glm’
    SL.glm.g: no visible global function definition for ‘as.formula’
    SL.glm.g: no visible global function definition for ‘glm’
    SL.glm.theta: no visible global function definition for ‘as.formula’
    ...
      as.formula binomial dnorm gaussian glm head integrate model.matrix
      optimize plogis pnorm qlogis qnorm quantile rnorm runif sd str tail
      update var
    Consider adding
      importFrom("stats", "as.formula", "binomial", "dnorm", "gaussian",
                 "glm", "integrate", "model.matrix", "optimize", "plogis",
                 "pnorm", "qlogis", "qnorm", "quantile", "rnorm", "runif",
                 "sd", "update", "var")
      importFrom("utils", "head", "str", "tail")
    to your NAMESPACE file.
    ```

# TraRe

<details>

* Version: 1.4.0
* GitHub: https://github.com/ubioinformat/TraRe
* Source code: https://github.com/cran/TraRe
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 96

Run `revdep_details(, "TraRe")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc       2.0Mb
        extdata   4.4Mb
    ```

# Ularcirc

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/Ularcirc
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 154

Run `revdep_details(, "Ularcirc")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'Junction_Sequence_from_Genome'
      ‘SelectUniqueJunct_Value’
    Documented arguments not in \usage in documentation object 'Junction_Sequence_from_Genome':
      ‘SelectUniqueJunct_value’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc       1.1Mb
        extdata   4.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘GenomeInfoDb’ ‘GenomeInfoDbData’ ‘Organism.dplyr’ ‘ggplot2’
      ‘ggrepel’ ‘mirbase.db’ ‘moments’ ‘shinyFiles’ ‘shinydashboard’
      ‘shinyjs’ ‘yaml’
      All declared Imports should be used.
    ```

# understandBPMN

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/understandBPMN
* Date/Publication: 2019-09-27 11:30:03 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "understandBPMN")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Uniquorn

<details>

* Version: 2.16.0
* GitHub: NA
* Source code: https://github.com/cran/Uniquorn
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 123

Run `revdep_details(, "Uniquorn")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Missing or unexported object: ‘GenomicRanges::GenomicRangesList’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        extdata   6.5Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    add_p_q_values_statistics: no visible binding for '<<-' assignment to
      ‘sig_vec’
    add_p_q_values_statistics: no visible binding for global variable
      ‘sig_vec’
    create_bed_file: no visible binding for global variable ‘res_table’
    create_bed_file: no visible binding for global variable ‘sim_list’
    identify_vcf_file: no visible binding for global variable
      ‘vcf_fingerprint’
    identify_vcf_file: no visible binding for global variable
      ‘output_file_xls’
    ...
      assignment to ‘g_mat_exclude’
    write_w0_and_split_w0_into_lower_weights: no visible binding for global
      variable ‘g_mat_exclude’
    Undefined global functions or variables:
      .SD Index Tumor_Sample_Barcode ccls_all data.table fread
      g_mat_exclude output_file_xls position res_table sig_vec sim_list
      tail vcf_fingerprint
    Consider adding
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

# ViSEAGO

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/ViSEAGO
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 161

Run `revdep_details(, "ViSEAGO")` for more info

</details>

## In both

*   checking whether package ‘ViSEAGO’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘data.table::set’ by ‘dendextend::set’ when loading ‘ViSEAGO’
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/ViSEAGO/new/ViSEAGO.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... WARNING
    ```
    'library' or 'require' call not declared from: ‘topGO’
    'library' or 'require' call to ‘topGO’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘processx’
      All declared Imports should be used.
    ```

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                  old_size new_size compress
      myGOs.RData    876Kb    517Kb       xz
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.5Mb
      sub-directories of 1Mb or more:
        doc       4.3Mb
        extdata  10.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotate,character-genomic_ressource: warning in getBM(attributes =
      c("ensembl_gene_id", "go_id", "go_linkage_type", "namespace_1003"),
      filters = unlist(go_filter[grep("with GO ID", ignore.case = TRUE,
      go_filter$description), "name", with = FALSE]), value = TRUE, mart =
      myspecies): partial argument match of 'value' to 'values'
    compute_SS_distances,ANY-character: warning in select(GO.db, keys =
      onto$values, column = "TERM"): partial argument match of 'column' to
      'columns'
    merge_enrich_terms,list : genes_symbols_add: warning in
      getBM(attributes = c("ensembl_gene_id", "external_gene_name"), value
    ...
      ‘pathway’
    Undefined global functions or variables:
      . ENTREZID ES EVIDENCE GO GO.ID GO.cluster IC Id N NES ONTOLOGY
      Significant_genes dev.off end genes_frequency leadingEdge log2err
      nMoreExtreme padj pathway png pval size start text
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "text")
      importFrom("stats", "end", "start")
    to your NAMESPACE file.
    ```

# wrProteo

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/wrProteo
* Date/Publication: 2022-03-01 17:30:02 UTC
* Number of recursive dependencies: 56

Run `revdep_details(, "wrProteo")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc       3.3Mb
        extdata   2.4Mb
    ```

