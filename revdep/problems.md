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

# adjustedCurves

<details>

* Version: 0.9.0
* GitHub: https://github.com/RobinDenz1/adjustedCurves
* Source code: https://github.com/cran/adjustedCurves
* Date/Publication: 2022-09-22 08:40:13 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "adjustedCurves")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'cif_aiptw.Rd':
      ‘coxph’
    
    Missing link or links in documentation object 'cif_aiptw_pseudo.Rd':
      ‘multinom’
    
    Missing link or links in documentation object 'cif_iptw.Rd':
      ‘multinom’
    
    Missing link or links in documentation object 'cif_iptw_pseudo.Rd':
    ...
    Missing link or links in documentation object 'surv_iptw_km.Rd':
      ‘multinom’
    
    Missing link or links in documentation object 'surv_iptw_pseudo.Rd':
      ‘multinom’
    
    Missing link or links in documentation object 'surv_km.Rd':
      ‘survfit’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
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

# arc

<details>

* Version: 1.3
* GitHub: https://github.com/kliegr/arc
* Source code: https://github.com/cran/arc
* Date/Publication: 2020-11-07 00:20:11 UTC
* Number of recursive dependencies: 10

Run `revdep_details(, "arc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qCBA’
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

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
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
* Number of recursive dependencies: 170

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
* Number of recursive dependencies: 205

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
* Number of recursive dependencies: 145

Run `revdep_details(, "BANDITS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
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

# bigsnpr

<details>

* Version: 1.11.4
* GitHub: https://github.com/privefl/bigsnpr
* Source code: https://github.com/cran/bigsnpr
* Date/Publication: 2022-10-21 16:05:07 UTC
* Number of recursive dependencies: 148

Run `revdep_details(, "bigsnpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.6Mb
      sub-directories of 1Mb or more:
        libs  17.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘runonce’
      All declared Imports should be used.
    ```

# bsseq

<details>

* Version: 1.32.0
* GitHub: https://github.com/kasperdanielhansen/bsseq
* Source code: https://github.com/cran/bsseq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 126

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

# casabourse

<details>

* Version: 2.0.0
* GitHub: https://github.com/NA/NA
* Source code: https://github.com/cran/casabourse
* Date/Publication: 2022-08-19 21:30:09 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "casabourse")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R.utils’
      All declared Imports should be used.
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

# cifti

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 49

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
* Number of recursive dependencies: 71

Run `revdep_details(, "cmdfun")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cmsaf

<details>

* Version: 3.4.4
* GitHub: https://github.com/cmsaf/cmsaf-r-tools
* Source code: https://github.com/cran/cmsaf
* Date/Publication: 2022-08-15 14:50:10 UTC
* Number of recursive dependencies: 125

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
* Number of recursive dependencies: 177

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
      installed size is 20.3Mb
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
* Number of recursive dependencies: 198

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

*   checking R code for possible problems ... NOTE
    ```
    CNVresults_to_GRanges: no visible global function definition for ‘.’
    CNVresults_to_GRanges: no visible binding for global variable
      ‘sample_ID’
    CNVresults_to_GRanges: no visible binding for global variable ‘GT’
    CNVresults_to_GRanges: no visible binding for global variable ‘meth_ID’
    CNVresults_to_GRangesList: no visible binding for global variable ‘GRL’
    DT_uniform_internal: no visible binding for global variable ‘chr’
    DT_uniform_internal: no visible binding for global variable ‘start’
    DT_uniform_internal: no visible binding for global variable ‘end’
    DT_uniform_internal: no visible binding for global variable ‘CN’
    ...
      inheritance ix last_P len locus locus_end locus_start log2R m_pval
      mean_len meth_ID mmmethod n_cnvs outer_end outer_start p.adjust
      p_pval pdf pos r_ID reorder role sample_ID sd seg_ID sex start tail
      used wilcox.test
    Consider adding
      importFrom("grDevices", "dev.off", "pdf")
      importFrom("stats", "end", "p.adjust", "reorder", "sd", "start",
                 "wilcox.test")
      importFrom("utils", "head", "tail")
    to your NAMESPACE file.
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
* Number of recursive dependencies: 195

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
    + cond = "test")
    [1] "Initializing S4 object"
    [1] "Condition test"
    [1] "n cells 815"
    [1] "Start estimation mu with linear method"
    [1] 2001  815
    Error in py_run_file_impl(file, local, convert) : 
      ImportError: /lib64/libstdc++.so.6: version `GLIBCXX_3.4.21' not found (required by /c4/home/henrik/.cache/R/basilisk/1.8.1/COTAN/1.0.0/my_env_cotan/lib/python3.7/site-packages/pandas/_libs/window/aggregations.cpython-37m-x86_64-linux-gnu.so)
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
      Error in `py_run_file_impl(file, local, convert)`: ImportError: /lib64/libstdc++.so.6: version `GLIBCXX_3.4.21' not found (required by /c4/home/henrik/.cache/R/basilisk/1.8.1/COTAN/1.0.0/my_env_cotan/lib/python3.7/site-packages/pandas/_libs/window/aggregations.cpython-37m-x86_64-linux-gnu.so)
    ...
      ── Error ('test-my-test.R:120'): 5.get_pval_test ───────────────────────────────
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
    ImportError: /lib64/libstdc++.so.6: version `GLIBCXX_3.4.21' not found (required by /c4/home/henrik/.cache/R/basilisk/1.8.1/COTAN/1.0.0/my_env_cotan/lib/python3.7/site-packages/pandas/_libs/window/aggregations.cpython-37m-x86_64-linux-gnu.so)
    
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
* Number of recursive dependencies: 104

Run `revdep_details(, "countyfloods")` for more info

</details>

## In both

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
* Number of recursive dependencies: 158

Run `revdep_details(, "cRegulome")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cTRAP

<details>

* Version: 1.14.1
* GitHub: https://github.com/nuno-agostinho/cTRAP
* Source code: https://github.com/cran/cTRAP
* Date/Publication: 2022-07-17
* Number of recursive dependencies: 171

Run `revdep_details(, "cTRAP")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .devcontainer
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        data   4.3Mb
        doc    1.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘cTRAP/R/shinyInterface_session.R’:
      assignInNamespace("dataTablesFilter", dt_mod, "DT")
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
* Number of recursive dependencies: 160

Run `revdep_details(, "ddPCRclust")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘ddPCRclust.Rnw’ using Sweave
    Warning: replacing previous import ‘flowCore::plot’ by ‘graphics::plot’ when loading ‘flowDensity’
    double positive detection failed.
    Switching the middle two double populations.
    
    Starting the flow Peaks analysis...
    
        Task A: compute kmeans...
    
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
* Number of recursive dependencies: 159

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
* Number of recursive dependencies: 79

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
* Number of recursive dependencies: 115

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.0Mb
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
    R.methodsS3 v1.8.2 (2022-06-13 22:00:14 UTC) successfully loaded. See ?R.methodsS3 for help.
    R.oo v1.25.0 (2022-06-12 02:20:02 UTC) successfully loaded. See ?R.oo for help.
    
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

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 26.1Mb
      sub-directories of 1Mb or more:
        libs  24.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# Eagle

<details>

* Version: 2.5
* GitHub: NA
* Source code: https://github.com/cran/Eagle
* Date/Publication: 2021-11-30 05:30:02 UTC
* Number of recursive dependencies: 81

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
* Number of recursive dependencies: 148

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
* Number of recursive dependencies: 152

Run `revdep_details(, "eegc")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘eegc.Rnw’ using knitr
    Quitting from lines 27-28 (eegc.Rnw) 
    Error: processing vignette 'eegc.Rnw' failed with diagnostics:
    there is no package called 'BiocStyle'
    --- failed re-building ‘eegc.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘eegc.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'barplotEnrich.Rd':
      ‘[DOSE]{barplot.enrichResult}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking LazyData ... WARNING
    ```
      LazyData DB of 10.5 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.5Mb
      sub-directories of 1Mb or more:
        data  10.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    categorizeGene : <anonymous>: no visible global function definition for
      ‘quantile’
    densityPlot: no visible binding for global variable ‘density’
    densityPlot: no visible global function definition for ‘lines’
    densityPlot: no visible global function definition for ‘axis’
    densityPlot: no visible global function definition for ‘adjustcolor’
    densityPlot: no visible global function definition for ‘legend’
    densityPlot : <anonymous>: no visible global function definition for
      ‘quantile’
    densityPlot: no visible global function definition for ‘text’
    ...
      legend lines lm model.matrix p.adjust par phyper points quantile
      results text title treat
    Consider adding
      importFrom("grDevices", "adjustcolor", "colorRampPalette",
                 "dev.copy2pdf")
      importFrom("graphics", "abline", "axis", "legend", "lines", "par",
                 "points", "text", "title")
      importFrom("stats", "density", "lm", "model.matrix", "p.adjust",
                 "phyper", "quantile")
    to your NAMESPACE file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocStyle’
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

*   checking dependencies in R code ... WARNING
    ```
    Missing or unexported object: 'TCGAbiolinks::GDCquery_Maf'
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'render_report':
    render_report
      Code: function(title = "Report", mae.file, group.col, group1, group2,
                     direction, dir.out, genome = "hg38", mode =
                     "supervised", minSubgroupFrac = 0.2, minMetdiff = 0.3,
                     metfdr = 0.01, permu = 10000, rawpval = 0.01, pe =
                     0.01, nprobes = 10, lower.OR = 1.1, out_file =
                     file.path(getwd(), "report.html"), funcivar = FALSE)
      Docs: function(title = "Report", mae.file, group.col, group1, group2,
                     direction, dir.out, genome = "hg38", mode =
                     "supervised", minSubgroupFrac = "20%", minMetdiff =
                     "0.3", metfdr = "0.01", permu = "10000", rawpval =
                     "0.01", pe = "0.01", nprobes = "10", lower.OR = "1.1",
                     out_file = file.path(getwd(), "report.html"), funcivar
                     = FALSE)
      Mismatches in argument default values:
        Name: 'minSubgroupFrac' Code: 0.2 Docs: "20%"
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 75.2Mb
      sub-directories of 1Mb or more:
        doc  74.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    TCGA.pipe: warning in render_report(genome = genome, mode = mode, title
      = paste0(disease, " report"), minSubgroupFrac = ifelse(mode ==
      "supervised", 1, 0.2), mae = mae.path, direction = direction,
      group.col = group.col, group1 = group1, group2 = group2, dir.out =
      results.path, out_file = file.path(results.path, paste0(disease,
      "_report.html"))): partial argument match of 'mae' to 'mae.file'
    Stat.nonpara: no visible global function definition for 'head'
    Stat.nonpara: no visible global function definition for 'tail'
    Stat.nonpara.permu: no visible global function definition for 'head'
    Stat.nonpara.permu: no visible global function definition for 'tail'
    ...
      'DistanceTSS'
    get.top.tf.by.pval: no visible global function definition for 'head'
    getRegionNearGenes : f: no visible binding for global variable 'Side'
    getRegionNearGenes: no visible binding for global variable 'ID'
    getTFtargets: no visible binding for global variable 'TF'
    Undefined global functions or variables:
      DistanceTSS Hugo_Symbol ID Side TF head tail
    Consider adding
      importFrom("utils", "head", "tail")
    to your NAMESPACE file.
    ```

# enrichTF

<details>

* Version: 1.12.0
* GitHub: https://github.com/wzthu/enrichTF
* Source code: https://github.com/cran/enrichTF
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 209

Run `revdep_details(, "enrichTF")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘enrichTF-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: GenBackground
    > ### Title: Generate background regions and reset the size of foreground
    > ###   regions
    > ### Aliases: GenBackground enrichGenBackground,Step-method
    > ###   enrichGenBackground genBackground
    > 
    > ### ** Examples
    > 
    > setGenome("testgenome") #Use "hg19","hg38",etc. for your application
    Configure bsgenome ...
    Error in get_data_annotation_contrib_url(type) : 
      Install 'BiocManager' from CRAN to get 'BioCann' contrib.url
    Calls: setGenome ... checkAndInstallBSgenome -> <Anonymous> -> get_data_annotation_contrib_url
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(enrichTF)
      Loading required package: pipeFrame
      
      > 
      > test_check("enrichTF")
    ...
       4.       └─enrichTF (local) cai()
       5.         └─pipeFrame::runWithFinishCheck(...)
       6.           └─enrichTF (local) func(NULL)
       7.             └─pipeFrame::checkAndInstallBSgenome(refFilePath, genome)
       8.               └─BSgenome::available.genomes()
       9.                 └─BSgenome:::get_data_annotation_contrib_url(type)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘enrichTF.Rmd’ using rmarkdown
    Loading required package: pipeFrame
    
    Quitting from lines 58-62 (enrichTF.Rmd) 
    Error: processing vignette 'enrichTF.Rmd' failed with diagnostics:
    Install 'BiocManager' from CRAN to get 'BioCann' contrib.url
    --- failed re-building ‘enrichTF.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘enrichTF.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    processing,TissueOpennessConserve: no visible binding for global
      variable ‘X2’
    Undefined global functions or variables:
      X2
    ```

# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 159

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
* Number of recursive dependencies: 228

Run `revdep_details(, "esATAC")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘esATAC-Introduction.Rmd’ using rmarkdown
    Error: processing vignette 'esATAC-Introduction.Rmd' failed with diagnostics:
    there is no package called ‘prettydoc’
    --- failed re-building ‘esATAC-Introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘esATAC-Introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'PeakCallingMACS2'
      ‘genomeSize’ ‘pvalueThreshold’
    Documented arguments not in \usage in documentation object 'PeakCallingMACS2':
      ‘threshold’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        doc       3.3Mb
        extdata   5.1Mb
        libs      4.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘ShortRead:::.ShortReadQQA’ ‘ShortRead:::.qa_adapterContamination’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    atacPipe2: no visible global function definition for ‘getObjsInPipe’
    atacPipe2: no visible binding for global variable ‘case.peak’
    atacPipe2: no visible binding for global variable ‘ctrl.peak’
    atacPipe2: no visible binding for global variable ‘pwm’
    atacPipe2: no visible binding for global variable ‘bed.case’
    atacPipe2: no visible binding for global variable ‘bed.ctrl’
    atacPipe2: no visible binding for global variable ‘caselist’
    atacPipe2: no visible binding for global variable ‘ctrllist’
    atacPipe2: no visible global function definition for ‘.obtainConfigure’
    atacPipe2: no visible binding for global variable ‘param.tmp’
    ...
    atacPipe2: no visible binding for global variable ‘esATAC_report’
    atacPipe2: no visible global function definition for ‘getReportVal’
    atacPipe2: no visible binding for global variable ‘esATAC_result’
    processing,BamToBed : <anonymous>: no visible global function
      definition for ‘readGAlignments’
    processing,BedToBigWig: no visible binding for global variable ‘score’
    Undefined global functions or variables:
      .obtainConfigure bed.case bed.ctrl case.peak caselist ctrl.peak
      ctrllist esATAC_report esATAC_result getObjsInPipe getReportVal
      param.tmp pwm readGAlignments score
    ```

# eudysbiome

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/eudysbiome
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 27

Run `revdep_details(, "eudysbiome")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    Cartesian: no visible global function definition for ‘adjustcolor’
    Cartesian: no visible global function definition for ‘colors’
    Cartesian: no visible global function definition for ‘dev.hold’
    Cartesian: no visible global function definition for ‘dev.flush’
    Cartesian: no visible global function definition for ‘points’
    Cartesian: no visible global function definition for ‘abline’
    Cartesian: no visible global function definition for ‘axis’
    Cartesian: no visible global function definition for ‘text’
    Cartesian: no visible global function definition for ‘par’
    Cartesian: no visible global function definition for ‘mtext’
    ...
      read.table rect text title unzip
    Consider adding
      importFrom("grDevices", "adjustcolor", "colors", "dev.flush",
                 "dev.hold")
      importFrom("graphics", "abline", "axis", "mtext", "par", "points",
                 "rect", "text", "title")
      importFrom("stats", "chisq.test")
      importFrom("utils", "combn", "data", "download.file", "read.table",
                 "unzip")
    to your NAMESPACE file.
    ```

# ezknitr

<details>

* Version: 0.6
* GitHub: https://github.com/ropenscilabs/ezknitr
* Source code: https://github.com/cran/ezknitr
* Date/Publication: 2016-09-16 07:13:44
* Number of recursive dependencies: 53

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
* Number of recursive dependencies: 86

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
* Number of recursive dependencies: 79

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

* Version: 1.8.1
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2022-06-30
* Number of recursive dependencies: 188

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘FRASER.Rnw’ using knitr
    Mon Oct 24 01:10:41 2022: Start counting the split reads ...
    Mon Oct 24 01:10:42 2022: Count split reads for sample: sample1
    Mon Oct 24 01:10:45 2022: Count split reads for sample: sample2
    Mon Oct 24 01:10:46 2022: Count split reads for sample: sample3
    Mon Oct 24 01:10:52 2022 : count ranges need to be merged ...
    Mon Oct 24 01:10:52 2022: Create splice site indices ...
    Mon Oct 24 01:10:52 2022: Writing split counts to folder: FRASER_output/savedObjects/Data_Analysis/splitCounts
    Mon Oct 24 01:10:56 2022: Identifying introns with read count <= 20 in all samples...
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘FRASER.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘FRASER.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        doc    1.6Mb
        libs   6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# GCSscore

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/GCSscore
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 134

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

# GEOquery

<details>

* Version: 2.64.2
* GitHub: https://github.com/seandavi/GEOquery
* Source code: https://github.com/cran/GEOquery
* Date/Publication: 2022-05-15
* Number of recursive dependencies: 81

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

# gifti

<details>

* Version: 0.8.0
* GitHub: https://github.com/muschellij2/gifti
* Source code: https://github.com/cran/gifti
* Date/Publication: 2020-11-11 22:40:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "gifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# HiCBricks

<details>

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/HiCBricks
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 96

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

* Version: 1.4.2
* GitHub: NA
* Source code: https://github.com/cran/HiCDCPlus
* Date/Publication: 2022-06-07
* Number of recursive dependencies: 168

Run `revdep_details(, "HiCDCPlus")` for more info

</details>

## In both

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
* Number of recursive dependencies: 73

Run `revdep_details(, "hoardeR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
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

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘R.utils’ ‘ape’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# ISAnalytics

<details>

* Version: 1.6.2
* GitHub: https://github.com/calabrialab/ISAnalytics
* Source code: https://github.com/cran/ISAnalytics
* Date/Publication: 2022-05-24
* Number of recursive dependencies: 159

Run `revdep_details(, "ISAnalytics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    4.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .sh_row_permut: no visible global function definition for ‘.’
    .sharing_multdf_mult_key: no visible binding for global variable ‘.’
    .sharing_multdf_single_key: no visible binding for global variable ‘.’
    .sharing_singledf_mult_key: no visible binding for global variable ‘.’
    .sharing_singledf_single_key: no visible binding for global variable
      ‘.’
    cumulative_is: no visible binding for global variable ‘is’
    gene_frequency_fisher: no visible binding for global variable ‘.’
    sharing_heatmap : plot_rel_heat: no visible binding for global variable
      ‘..fill..’
    Undefined global functions or variables:
      . ..fill.. is
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# joinXL

<details>

* Version: 1.0.1
* GitHub: https://github.com/yvonneglanville/joinXL
* Source code: https://github.com/cran/joinXL
* Date/Publication: 2016-09-19 01:45:37
* Number of recursive dependencies: 53

Run `revdep_details(, "joinXL")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# jsTreeR

<details>

* Version: 2.2.0
* GitHub: https://github.com/stla/jsTreeR
* Source code: https://github.com/cran/jsTreeR
* Date/Publication: 2022-10-21 08:55:07 UTC
* Number of recursive dependencies: 39

Run `revdep_details(, "jsTreeR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 17 marked UTF-8 strings
    ```

# KnowSeq

<details>

* Version: 1.10.2
* GitHub: NA
* Source code: https://github.com/cran/KnowSeq
* Date/Publication: 2022-07-03
* Number of recursive dependencies: 162

Run `revdep_details(, "KnowSeq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.9Mb
      sub-directories of 1Mb or more:
        doc       5.8Mb
        extdata   6.9Mb
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

* Version: 1.4.2
* GitHub: https://github.com/philips-software/latrend
* Source code: https://github.com/cran/latrend
* Date/Publication: 2022-08-15 11:40:05 UTC
* Number of recursive dependencies: 238

Run `revdep_details(, "latrend")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rmarkdown’
      All declared Imports should be used.
    ```

# logger

<details>

* Version: 0.2.2
* GitHub: https://github.com/daroczig/logger
* Source code: https://github.com/cran/logger
* Date/Publication: 2021-10-19 05:30:08 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "logger")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘botor’
    
    Packages which this enhances but not available for checking:
      'logging', 'futile.logger', 'log4r'
    ```

# macrocol

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/macrocol
* Date/Publication: 2022-09-09 08:13:01 UTC
* Number of recursive dependencies: 37

Run `revdep_details(, "macrocol")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R.utils’
      All declared Imports should be used.
    ```

# MACSQuantifyR

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/MACSQuantifyR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 95

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
* Number of recursive dependencies: 119

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
* Number of recursive dependencies: 148

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
* Number of recursive dependencies: 221

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
* Number of recursive dependencies: 132

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
* Number of recursive dependencies: 229

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
* Number of recursive dependencies: 137

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
* Number of recursive dependencies: 167

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
* Number of recursive dependencies: 126

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

* Version: 2.4.1
* GitHub: https://github.com/PascalSchlosser/netboost
* Source code: https://github.com/cran/netboost
* Date/Publication: 2022-06-05
* Number of recursive dependencies: 113

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
* Number of recursive dependencies: 135

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

# numbat

<details>

* Version: 1.0.2
* GitHub: https://github.com/kharchenkolab/numbat
* Source code: https://github.com/cran/numbat
* Date/Publication: 2022-09-15 06:10:02 UTC
* Number of recursive dependencies: 178

Run `revdep_details(, "numbat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
        libs   6.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘argparse’ ‘tidyverse’ ‘vcfR’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# NxtIRFcore

<details>

* Version: 1.2.1
* GitHub: https://github.com/alexchwong/NxtIRFcore
* Source code: https://github.com/cran/NxtIRFcore
* Date/Publication: 2022-06-23
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

* Version: 1.7-10
* GitHub: https://github.com/dankelley/oce
* Source code: https://github.com/cran/oce
* Date/Publication: 2022-08-18 17:30:05 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "oce")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        R      2.6Mb
        doc    2.0Mb
        help   3.0Mb
        libs   7.7Mb
    ```

# openCyto

<details>

* Version: 2.8.4
* GitHub: NA
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2022-07-12
* Number of recursive dependencies: 147

Run `revdep_details(, "openCyto")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘CytoML’
    ```

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

* Version: 1.16.6
* GitHub: https://github.com/Roleren/ORFik
* Source code: https://github.com/cran/ORFik
* Date/Publication: 2022-10-13
* Number of recursive dependencies: 156

Run `revdep_details(, "ORFik")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
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
      ‘find_url_ebi’ ‘revElementsF’ ‘save.fstwig’ ‘trimming.table’
    ```

*   checking R code for possible problems ... NOTE
    ```
    DEG.plot.static: no visible binding for global variable ‘Regulation’
    DEG.plot.static: no visible binding for global variable ‘meanCounts’
    DEG.plot.static: no visible binding for global variable ‘LFC’
    DTEG.plot: no visible binding for global variable ‘Regulation’
    DTEG.plot: no visible binding for global variable ‘rna’
    DTEG.plot: no visible binding for global variable ‘rfp’
    QCplots: no visible binding for global variable ‘leaders’
    QCplots: no visible binding for global variable ‘trailers’
    QCstats.plot: no visible binding for global variable ‘variable’
    QCstats.plot: no visible binding for global variable ‘sample_total’
    ...
      seq2 seq3 seq4 seq5 size spec spots start1 start2 startCodonCoverage
      startRegionRelative subtitle sum.count sum_per_gene te trailers
      upstream_kozak_strength utr3_len utr5_len value variable widths
      windowMean windowSD zscore
    Consider adding
      importFrom("base", "length")
      importFrom("graphics", "frame")
      importFrom("stats", "df")
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

# pagoda2

<details>

* Version: 1.0.10
* GitHub: https://github.com/kharchenkolab/pagoda2
* Source code: https://github.com/cran/pagoda2
* Date/Publication: 2022-04-19 21:40:01 UTC
* Number of recursive dependencies: 161

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
* Number of recursive dependencies: 102

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
      ── Failure ('test_modify_pubmed_db_std.R:52'): modifyPubmedDb update matches standard ──
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

# primirTSS

<details>

* Version: 1.14.0
* GitHub: https://github.com/ipumin/primirTSS
* Source code: https://github.com/cran/primirTSS
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 186

Run `revdep_details(, "primirTSS")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'magrittr'
    ```

*   checking R code for possible problems ... NOTE
    ```
    check_DHS_df: no visible binding for global variable ‘can_tss’
    check_DHS_df: no visible binding for global variable ‘new_info’
    check_DHS_s: no visible binding for global variable ‘dhs_p1’
    check_DHS_s: no visible binding for global variable ‘dhs_p2’
    eponine_score: no visible binding for global variable ‘previous’
    eponine_score: no visible binding for global variable
      ‘histone_p1_flank’
    eponine_score: no visible binding for global variable
      ‘histone_p2_flank’
    eponine_score: no visible binding for global variable ‘tss_p1’
    ...
    require_fa: no visible binding for global variable ‘arrow’
    tss_filter: no visible binding for global variable ‘gene_id’
    tss_filter: no visible binding for global variable ‘new_info’
    tss_filter: no visible binding for global variable ‘predicted_tss’
    tss_filter: no visible binding for global variable ‘tss_type’
    Undefined global functions or variables:
      TF TF_class arrow can_tss dhs_p1 dhs_p2 e_p_rank end1 eponine_rank
      gene_id gene_p1 gene_p2 histone_p1_flank histone_p2_flank loci
      mir_name new_info phast_rank predicted_tss previous seqname start1
      stem_loop_p1 stem_loop_p2 symbol_name tss_p1 tss_p2 tss_type
    ```

# psichomics

<details>

* Version: 1.22.1
* GitHub: https://github.com/nuno-agostinho/psichomics
* Source code: https://github.com/cran/psichomics
* Date/Publication: 2022-07-17
* Number of recursive dependencies: 254

Run `revdep_details(, "psichomics")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .devcontainer
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    4.5Mb
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
* Number of recursive dependencies: 79

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
* Number of recursive dependencies: 91

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
* Number of recursive dependencies: 157

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
* Number of recursive dependencies: 82

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
* Number of recursive dependencies: 20

Run `revdep_details(, "QGameTheory")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# R.devices

<details>

* Version: 2.17.1
* GitHub: https://github.com/HenrikBengtsson/R.devices
* Source code: https://github.com/cran/R.devices
* Date/Publication: 2022-06-21 08:00:02 UTC
* Number of recursive dependencies: 8

Run `revdep_details(, "R.devices")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘R.devices-overview.tex.rsp’ using rsp
    R.devices v2.17.1 (2022-06-21 08:00:02 UTC) successfully loaded. See ?R.devices for help.
    Error: processing vignette 'R.devices-overview.tex.rsp' failed with diagnostics:
    Running 'texi2dvi' on 'R.devices-overview.tex' failed.
    LaTeX errors:
    ! Undefined control sequence.
    l.55 \pdfsuppressptexinfo
                             =-1
    ...
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ...                                              
    --- failed re-building ‘R.devices-overview.tex.rsp’
    
    SUMMARY: processing the following file failed:
      ‘R.devices-overview.tex.rsp’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# R.rsp

<details>

* Version: 0.45.0
* GitHub: https://github.com/HenrikBengtsson/R.rsp
* Source code: https://github.com/cran/R.rsp
* Date/Publication: 2022-06-27 18:30:09 UTC
* Number of recursive dependencies: 23

Run `revdep_details(, "R.rsp")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘R_packages-Static_PDF_and_HTML_vignettes.pdf.asis’ using asis
    --- finished re-building ‘R_packages-Static_PDF_and_HTML_vignettes.pdf.asis’
    
    --- re-building ‘R_packages-LaTeX_vignettes.ltx’ using tex
    Error: processing vignette 'R_packages-LaTeX_vignettes.ltx' failed with diagnostics:
    Running 'texi2dvi' on 'R_packages-LaTeX_vignettes.ltx' failed.
    LaTeX errors:
    ! Undefined control sequence.
    l.21 \pdfsuppressptexinfo
    ...
     ...                                              
    --- failed re-building ‘R_packages-Vignettes_prior_to_R300.tex.rsp’
    
    SUMMARY: processing the following files failed:
      ‘R_packages-LaTeX_vignettes.ltx’
      ‘Dynamic_document_creation_using_RSP.tex.rsp’ ‘RSP_refcard.tex.rsp’
      ‘R_packages-Vignettes_prior_to_R300.tex.rsp’
    
    Error: Vignette re-building failed.
    Execution halted
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

*   checking whether package ‘RcisTarget’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/new/RcisTarget.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG', 'zoo'
    ```

## Installation

### Devel

```
* installing *source* package ‘RcisTarget’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
sh: line 1: 36705 Illegal instruction     (core dumped) R_TESTS= '/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/bin/R' --no-save --no-restore --no-echo 2>&1 < '/scratch/henrik/Rtmp9Yw4QD/file8f5b641b179d'

 *** caught illegal operation ***
address 0x2acb618a32e7, cause 'illegal operand'
...
 4: asNamespace(ns)
 5: namespaceImportFrom(ns, loadNamespace(j <- i[[1L]], c(lib.loc,     .libPaths()), versionCheck = vI[[j]]), i[[2L]], from = package)
 6: loadNamespace(package = package, lib.loc = lib.loc, keep.source = keep.source,     keep.parse.data = keep.parse.data, partial = TRUE)
 7: withCallingHandlers(expr, packageStartupMessage = function(c) tryInvokeRestart("muffleMessage"))
 8: suppressPackageStartupMessages(loadNamespace(package = package,     lib.loc = lib.loc, keep.source = keep.source, keep.parse.data = keep.parse.data,     partial = TRUE))
 9: code2LazyLoadDB(package, lib.loc = lib.loc, keep.source = keep.source,     keep.parse.data = keep.parse.data, compress = compress, set.install.dir = set.install.dir)
10: tools:::makeLazyLoading("RcisTarget", "/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/new/RcisTarget.Rcheck/00LOCK-RcisTarget/00new",     keep.source = FALSE, keep.parse.data = FALSE, set.install.dir = "/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/new/RcisTarget.Rcheck/RcisTarget")
An irrecoverable exception occurred. R is aborting now ...
ERROR: lazy loading failed for package ‘RcisTarget’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/new/RcisTarget.Rcheck/RcisTarget’


```
### CRAN

```
* installing *source* package ‘RcisTarget’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
sh: line 1: 36634 Illegal instruction     (core dumped) R_TESTS= '/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/bin/R' --no-save --no-restore --no-echo 2>&1 < '/scratch/henrik/Rtmpu6NOaM/file8f1475564b2e'

 *** caught illegal operation ***
address 0x2b21e03252e7, cause 'illegal operand'
...
 4: asNamespace(ns)
 5: namespaceImportFrom(ns, loadNamespace(j <- i[[1L]], c(lib.loc,     .libPaths()), versionCheck = vI[[j]]), i[[2L]], from = package)
 6: loadNamespace(package = package, lib.loc = lib.loc, keep.source = keep.source,     keep.parse.data = keep.parse.data, partial = TRUE)
 7: withCallingHandlers(expr, packageStartupMessage = function(c) tryInvokeRestart("muffleMessage"))
 8: suppressPackageStartupMessages(loadNamespace(package = package,     lib.loc = lib.loc, keep.source = keep.source, keep.parse.data = keep.parse.data,     partial = TRUE))
 9: code2LazyLoadDB(package, lib.loc = lib.loc, keep.source = keep.source,     keep.parse.data = keep.parse.data, compress = compress, set.install.dir = set.install.dir)
10: tools:::makeLazyLoading("RcisTarget", "/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/old/RcisTarget.Rcheck/00LOCK-RcisTarget/00new",     keep.source = FALSE, keep.parse.data = FALSE, set.install.dir = "/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/old/RcisTarget.Rcheck/RcisTarget")
An irrecoverable exception occurred. R is aborting now ...
ERROR: lazy loading failed for package ‘RcisTarget’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/RcisTarget/old/RcisTarget.Rcheck/RcisTarget’


```
# Rcwl

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/Rcwl
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 127

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
* Number of recursive dependencies: 146

Run `revdep_details(, "rddapp")` for more info

</details>

## In both

*   checking whether package ‘rddapp’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/rddapp/new/rddapp.Rcheck/00install.out’ for details.
    ```

# rdwd

<details>

* Version: 1.6.0
* GitHub: https://github.com/brry/rdwd
* Source code: https://github.com/cran/rdwd
* Date/Publication: 2022-05-30 09:40:02 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "rdwd")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        R      3.7Mb
        data   1.4Mb
    ```

# recountmethylation

<details>

* Version: 1.6.1
* GitHub: https://github.com/metamaden/recountmethylation
* Source code: https://github.com/cran/recountmethylation
* Date/Publication: 2022-05-29
* Number of recursive dependencies: 186

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
      installed size is  9.4Mb
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

# regtools

<details>

* Version: 1.7.0
* GitHub: https://github.com/matloff/regtools
* Source code: https://github.com/cran/regtools
* Date/Publication: 2022-03-30 17:30:02 UTC
* Number of recursive dependencies: 156

Run `revdep_details(, "regtools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'cdparcoord', 'partools'
    ```

# ReportingTools

<details>

* Version: 2.36.0
* GitHub: NA
* Source code: https://github.com/cran/ReportingTools
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 190

Run `revdep_details(, "ReportingTools")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    .GeneSetCollection.to.data.frame: no visible binding for global
      variable 'description'
    .GeneSetCollection.to.html: no visible binding for global variable
      'description'
    .GeneSetCollection.to.html2: no visible binding for global variable
      'description'
    .PFAMhyperG.to.html: no visible binding for global variable 'keytype'
    .PFAMhyperG.to.html: no visible binding for global variable 'columns'
    .make.gene.plots: no visible global function definition for 'exprs'
    .marrayLM.to.data.frame: no visible global function definition for
    ...
    custHeaderPanel: no visible global function definition for 'tag'
    custHeaderPanel: no visible global function definition for 'div'
    custHeaderPanel: no visible global function definition for 'h1'
    publish,trellis-HTMLReport: no visible binding for global variable
      'htmlRep'
    toReportDF,DESeqDataSet: no visible global function definition for
      'mcols'
    Undefined global functions or variables:
      HTML columns description div exprs fData featureNames h1 htmlRep keys
      keytype mcols org.Hs.eg.db tag tagList tags
    ```

# RLSeq

<details>

* Version: 1.2.0
* GitHub: https://github.com/Bishop-Laboratory/RLSeq
* Source code: https://github.com/cran/RLSeq
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 231

Run `revdep_details(, "RLSeq")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      see ?RLHub and browseVignettes('RLHub') for documentation
      see ?RLHub and browseVignettes('RLHub') for documentation
      see ?RLHub and browseVignettes('RLHub') for documentation
      see ?RLHub and browseVignettes('RLHub') for documentation
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      see ?RLHub and browseVignettes('RLHub') for documentation
    ...
      warns\[1\] does not match "User-supplied sample test value is NA for .*".
      Actual value: "Use of \.data in tidyselect expressions was deprecated in tidyselect 1\.2\.0\.\\ni Please use `"db"` instead of `\.data\$db`"
      Backtrace:
          ▆
       1. └─testthat::expect_match(warns[1], regexp = "User-supplied sample test value is NA for .*") at test-plotEnrichment.R:15:4
       2.   └─testthat:::expect_match_(...)
      
      [ FAIL 1 | WARN 116 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# RMassBank

<details>

* Version: 3.6.1
* GitHub: NA
* Source code: https://github.com/cran/RMassBank
* Date/Publication: 2022-05-31
* Number of recursive dependencies: 171

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
* Number of recursive dependencies: 158

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

# ruta

<details>

* Version: 1.1.0
* GitHub: https://github.com/fdavidcl/ruta
* Source code: https://github.com/cran/ruta
* Date/Publication: 2019-03-18 13:10:02 UTC
* Number of recursive dependencies: 70

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
    processing file: file2e2b17189046.Rmd
    label: unnamed-chunk-1 (with options) 
    List of 2
     $ echo   : logi FALSE
     $ results: chr "asis"
    
    Quitting from lines 2-3 (file2e2b17189046.Rmd) 
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

# systemPipeShiny

<details>

* Version: 1.6.1
* GitHub: https://github.com/systemPipeR/systemPipeShiny
* Source code: https://github.com/cran/systemPipeShiny
* Date/Publication: 2022-05-26
* Number of recursive dependencies: 201

Run `revdep_details(, "systemPipeShiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   3.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    core_topServer : module : <anonymous>: warning in eval(code, env =
      .GlobalEnv): partial argument match of 'env' to 'envir'
    .validateGuide: no visible binding for global variable ‘guide_ui’
    .validateGuide: no visible binding for global variable ‘guide_content’
    .validateGuide : <anonymous>: no visible binding for global variable
      ‘guide_content’
    admin_infoServer : timeDiffString: no visible binding for global
      variable ‘time_start’
    admin_infoServer : getCPU: no visible binding for global variable ‘V2’
    appLoadingTime: no visible binding for global variable ‘time_start’
    ...
      .cur_plot .plot_num .rs_dir PC1 PC2 Sample V2 X1 X2 baseMean cmp
      dev.control dev.cur dev.new dev.off dim1 dim2 direction guide_content
      guide_ui hcl.colors input_code log2FoldChange padj pass_filter png
      recordPlot replayPlot session spsRNA_trans tab_file_name tab_info
      time_start title trans_table type
    Consider adding
      importFrom("grDevices", "dev.control", "dev.cur", "dev.new", "dev.off",
                 "hcl.colors", "png", "recordPlot", "replayPlot")
      importFrom("graphics", "title")
    to your NAMESPACE file.
    ```

# tablet

<details>

* Version: 0.5.8
* GitHub: https://github.com/bergsmat/tablet
* Source code: https://github.com/cran/tablet
* Date/Publication: 2022-04-29 22:50:02 UTC
* Number of recursive dependencies: 128

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

# TCGAbiolinks

<details>

* Version: 2.24.3
* GitHub: https://github.com/BioinformaticsFMRP/TCGAbiolinks
* Source code: https://github.com/cran/TCGAbiolinks
* Date/Publication: 2022-06-16
* Number of recursive dependencies: 346

Run `revdep_details(, "TCGAbiolinks")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    'library' or 'require' call not declared from: ‘dplyr’
    'library' or 'require' calls in package code:
      ‘dplyr’ ‘maftools’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 107.1Mb
      sub-directories of 1Mb or more:
        R       1.6Mb
        data    4.5Mb
        doc   100.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    GDCquery : <anonymous>: no visible binding for global variable
      ‘submitter_id’
    GDCquery : <anonymous>: no visible binding for global variable
      ‘is_ffpe’
    TCGAanalyze_DEA: no visible binding for global variable ‘barcode’
    TCGAanalyze_DEA: no visible binding for global variable ‘clinical’
    TCGAquery_recount2: no visible binding for global variable ‘rse_gene’
    TCGAtumor_purity: no visible binding for global variable ‘Tumor.purity’
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
    TCGAvisualize_starburst: no visible binding for global variable
    ...
    readGeneExpressionQuantification : <anonymous>: no visible binding for
      '<<-' assignment to ‘assay.list’
    readGeneExpressionQuantification: no visible binding for global
      variable ‘assay.list’
    readSingleCellAnalysis : <anonymous>: no visible global function
      definition for ‘Read10X’
    Undefined global functions or variables:
      Read10X Tumor.purity assay.list barcode clinical coordinates exon
      geFDR2 gene_name is_ffpe logFC meFDR2 rse_gene sample_submitter_id
      sample_type starburst.status submitter_id threshold.starburst value
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘DT’
    'library' or 'require' call not declared from: ‘DT’
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
* Number of recursive dependencies: 155

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

*   checking R code for possible problems ... NOTE
    ```
    FilterChimericJuncs: no visible global function definition for
      ‘Filter_by_Data_Set’
    FilterChimericJuncs: no visible binding for global variable
      ‘strandDonor’
    FilterChimericJuncs: no visible binding for global variable
      ‘startDonor’
    FilterChimericJuncs: no visible binding for global variable
      ‘startAcceptor’
    Junction_Sequence_from_Genome: no visible global function definition
      for ‘extractGenomeSequence’
    ...
      ‘BSjuncName’
    SelectUniqueJunctions: no visible binding for global variable
      ‘JuncType’
    SelectUniqueJunctions: no visible binding for global variable
      ‘strandDonor’
    loadSTAR_chimeric: no visible binding for global variable
      ‘..returnColIdx’
    Undefined global functions or variables:
      . ..returnColIdx BSjuncName Filter_by_Data_Set JuncType
      extractGenomeSequence startAcceptor startDonor strandDonor
    ```

# understandBPMN

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/understandBPMN
* Date/Publication: 2019-09-27 11:30:03 UTC
* Number of recursive dependencies: 103

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
* Number of recursive dependencies: 122

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
* Number of recursive dependencies: 162

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
* Number of recursive dependencies: 58

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

