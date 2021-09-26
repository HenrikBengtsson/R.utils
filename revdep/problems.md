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

* Version: 1.64.1
* GitHub: https://github.com/HenrikBengtsson/affxparser
* Source code: https://github.com/cran/affxparser
* Date/Publication: 2021-09-12
* Number of recursive dependencies: 4

Run `revdep_details(, "affxparser")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    File ‘affxparser/libs/affxparser.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Object: ‘fusion_sdk/util/Verbose.o’
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Objects: ‘fusion_sdk/file/TsvFile/TsvFile.o’,
          ‘fusion_sdk/util/Err.o’
      Found ‘abort’, possibly from ‘abort’ (C)
        Objects: ‘fusion_sdk/calvin_files/fusion/src/FusionCHPData.o’,
          ‘fusion_sdk/calvin_files/fusion/src/GCOSAdapter/GCOSCHPDataAdapter.o’,
          ‘fusion_sdk/calvin_files/parameter/src/ParameterNameValueType.o’,
    ...
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘fusion_sdk/util/Util.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file paths:
      affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.cpp
      affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.h
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.8Mb
      sub-directories of 1Mb or more:
        libs  17.6Mb
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
* Number of recursive dependencies: 9

Run `revdep_details(, "arc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qCBA’
    ```

# arkdb

<details>

* Version: 0.0.12
* GitHub: https://github.com/ropensci/arkdb
* Source code: https://github.com/cran/arkdb
* Date/Publication: 2021-04-05 12:40:05 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "arkdb")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MonetDBLite’
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

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        R             4.0Mb
        help          2.1Mb
        testScripts   1.1Mb
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

* Version: 3.22.0
* GitHub: https://github.com/HenrikBengtsson/aroma.light
* Source code: https://github.com/cran/aroma.light
* Date/Publication: 2021-05-19
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

* Version: 1.14.0
* GitHub: NA
* Source code: https://github.com/cran/AUCell
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 169

Run `revdep_details(, "AUCell")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘S4Vectors’
      All declared Imports should be used.
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

# autonomics

<details>

* Version: 1.0.1
* GitHub: https://github.com/bhagwataditya/autonomics
* Source code: https://github.com/cran/autonomics
* Date/Publication: 2021-06-06
* Number of recursive dependencies: 203

Run `revdep_details(, "autonomics")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘translate’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
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

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc   3.8Mb
    ```

# BANDITS

<details>

* Version: 1.8.0
* GitHub: https://github.com/SimoneTiberi/BANDITS
* Source code: https://github.com/cran/BANDITS
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 143

Run `revdep_details(, "BANDITS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        doc       1.0Mb
        extdata   1.3Mb
        libs      5.3Mb
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

# bedr

<details>

* Version: 1.0.7
* GitHub: NA
* Source code: https://github.com/cran/bedr
* Date/Publication: 2019-04-01 18:50:02 UTC
* Number of recursive dependencies: 52

Run `revdep_details(, "bedr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘bedr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: bedr
    > ### Title: Main bedtools wrapper function.
    > ### Aliases: bedr
    > ### Keywords: bedtools bedops tabix region interval bed
    > 
    > ### ** Examples
    > 
    ...
    }
    <bytecode: 0x5361708>
    <environment: namespace:bedr>
     --- function search by body ---
    Function bedr in namespace bedr has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in input.files != "" && deleteTmpDir == TRUE : 
      'length(x) = 2 > 1' in coercion to 'logical(1)'
    Calls: bedr
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Using-bedr.Rmd’ using rmarkdown
     ----------- FAILURE REPORT -------------- 
     --- failure: length > 1 in coercion to logical ---
     --- srcref --- 
    : 
     --- package (from environment) --- 
    bedr
     --- call from context --- 
    bedr(engine = "bedtools", input = list(a = x, b = y), method = "subtract", 
    ...
    Quitting from lines 175-191 (Using-bedr.Rmd) 
    Error: processing vignette 'Using-bedr.Rmd' failed with diagnostics:
    'length(x) = 2 > 1' in coercion to 'logical(1)'
    --- failed re-building ‘Using-bedr.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Using-bedr.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# bigsnpr

<details>

* Version: 1.8.1
* GitHub: https://github.com/privefl/bigsnpr
* Source code: https://github.com/cran/bigsnpr
* Date/Publication: 2021-06-03 11:00:12 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "bigsnpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        libs  11.5Mb
    ```

# biomartr

<details>

* Version: 0.9.2
* GitHub: https://github.com/ropensci/biomartr
* Source code: https://github.com/cran/biomartr
* Date/Publication: 2020-01-10 23:00:06 UTC
* Number of recursive dependencies: 125

Run `revdep_details(, "biomartr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘biomartr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: listDatabases
    > ### Title: Retrieve a List of Available NCBI Databases for Download
    > ### Aliases: listDatabases listNCBIDatabases
    > 
    > ### ** Examples
    > 
    > # retrieve all versions of the NCBI 'nr' database that can be downloaded
    > listNCBIDatabases(db = "nr")
    Error: No entries for db = 'nr' could not be found.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘fs’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# biscuiteer

<details>

* Version: 1.6.0
* GitHub: https://github.com/trichelab/biscuiteer
* Source code: https://github.com/cran/biscuiteer
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 216

Run `revdep_details(, "biscuiteer")` for more info

</details>

## In both

*   checking whether package ‘biscuiteer’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BiocParallel::bpstart’ by ‘QDNAseq::bpstart’ when loading ‘biscuiteer’
    See ‘/scratch/henrik/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘biscuiteer.Rmd’ using rmarkdown
    Error: processing vignette 'biscuiteer.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘biscuiteer.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘biscuiteer.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data      1.1Mb
        extdata   3.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘QDNAseq:::expectedVariance’
      See the note in ?`:::` about the use of this operator.
    ```

# bsseq

<details>

* Version: 1.28.0
* GitHub: https://github.com/kasperdanielhansen/bsseq
* Source code: https://github.com/cran/bsseq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 123

Run `revdep_details(, "bsseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘bsseq.Rmd’ using rmarkdown
    Loading required package: BiocGenerics
    Loading required package: parallel
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:parallel':
    
        clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
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
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data   1.9Mb
        doc    1.9Mb
        libs   2.7Mb
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

# CB2

<details>

* Version: 1.3.4
* GitHub: NA
* Source code: https://github.com/cran/CB2
* Date/Publication: 2020-07-24 09:42:24 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "CB2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        data      1.6Mb
        extdata   1.1Mb
        libs      3.5Mb
    ```

# cellbaseR

<details>

* Version: 1.16.0
* GitHub: https://github.com/melsiddieg/cellbaseR
* Source code: https://github.com/cran/cellbaseR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 148

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
    > fl <- system.file("extdata", "hapmap_exome_chr22_200.vcf.gz",
    +                   package = "cellbaseR" )
    > res <- AnnotateVcf(object=cb, file=fl, BPPARAM = bpparam(workers=2),batch_size=100)
    Error: BiocParallel errors
      element index: 1, 2
      first error: Required package plyr not found. Please run: install.packages('plyr')
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘cellbaseR.Rmd’ using rmarkdown
    Quitting from lines 58-68 (cellbaseR.Rmd) 
    Error: processing vignette 'cellbaseR.Rmd' failed with diagnostics:
    Required package plyr not found. Please run: install.packages('plyr')
    --- failed re-building ‘cellbaseR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘cellbaseR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cheatR

<details>

* Version: 1.2.1
* GitHub: https://github.com/mattansb/cheatR
* Source code: https://github.com/cran/cheatR
* Date/Publication: 2020-05-06 19:20:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "cheatR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cifti

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 44

Run `revdep_details(, "cifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# CINdex

<details>

* Version: 1.20.0
* GitHub: NA
* Source code: https://github.com/cran/CINdex
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 225

Run `revdep_details(, "CINdex")` for more info

</details>

## In both

*   checking LazyData ... WARNING
    ```
      LazyData DB of 17.7 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘HowToDownloadCytobandInfo.Rmd’ using rmarkdown
    --- finished re-building ‘HowToDownloadCytobandInfo.Rmd’
    
    --- re-building ‘PrepareInputData.Rmd’ using rmarkdown
    --- finished re-building ‘PrepareInputData.Rmd’
    
    --- re-building ‘CINdex.Rnw’ using knitr
    Loading required package: GenomicRanges
    Loading required package: stats4
    ...
    l.58 \usepackage
                    {pdfpages}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘CINdex.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘CINdex.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 33.9Mb
      sub-directories of 1Mb or more:
        data  32.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    comp.heatmap: no visible binding for global variable ‘dataMatrix’
    process.probe.anno: no visible binding for global variable ‘ID’
    process.probe.anno: no visible binding for global variable ‘midpoint’
    process.reference.genome: no visible binding for global variable
      ‘chrom’
    process.reference.genome: no visible binding for global variable ‘name’
    process.reference.genome: no visible binding for global variable
      ‘stain’
    run.cin.chr: no visible global function definition for ‘is’
    run.cin.cyto: no visible global function definition for ‘is’
    Undefined global functions or variables:
      ID chrom dataMatrix is midpoint name stain
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# circRNAprofiler

<details>

* Version: 1.6.0
* GitHub: https://github.com/Aufiero/circRNAprofiler
* Source code: https://github.com/cran/circRNAprofiler
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 230

Run `revdep_details(, "circRNAprofiler")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘circRNAprofiler-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annotateRepeats
    > ### Title: Annotate repetitive elements
    > ### Aliases: annotateRepeats
    > 
    > ### ** Examples
    > 
    > # Load data frame containing detected back-spliced junctions
    ...
    The following object is masked from ‘package:base’:
    
        strsplit
    
    snapshotDate(): 2021-05-18
    Error: Corrupt Cache: index file
      See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/R/AnnotationHub
      filename: annotationhub.index.rds
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(circRNAprofiler)
      > 
      > test_check("circRNAprofiler")
      
      Analysing: Ncoa6:-:chr2:155440785:155437860
      Analysing: Arhgap5:+:chr12:52516079:52542636
    ...
      Backtrace:
          █
       1. └─circRNAprofiler::annotateRepeats(...) test_annotateRepeats.R:31:8
       2.   └─AnnotationHub::AnnotationHub()
       3.     └─AnnotationHub::.Hub(...)
       4.       └─AnnotationHub:::.db_create_index(hub)
      
      [ FAIL 1 | WARN 5 | SKIP 0 | PASS 254 ]
      Error: Test failures
      Execution halted
    ```

# civis

<details>

* Version: 3.0.0
* GitHub: https://github.com/civisanalytics/civis-r
* Source code: https://github.com/cran/civis
* Date/Publication: 2020-06-22 18:00:02 UTC
* Number of recursive dependencies: 84

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
* Number of recursive dependencies: 67

Run `revdep_details(, "cmdfun")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cmsaf

<details>

* Version: 3.2.0
* GitHub: NA
* Source code: https://github.com/cran/cmsaf
* Date/Publication: 2021-09-06 08:20:10 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "cmsaf")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘FNN’ ‘R.utils’ ‘SearchTrees’ ‘colorspace’ ‘colourpicker’
      ‘data.table’ ‘fields’ ‘mapproj’ ‘maps’ ‘maptools’ ‘ncdf4’ ‘raster’
      ‘rworldxtra’ ‘shinyFiles’ ‘shinyjs’ ‘shinythemes’ ‘sp’ ‘tcltk’
      All declared Imports should be used.
    ```

# CNEr

<details>

* Version: 1.28.0
* GitHub: https://github.com/ge11232002/CNEr
* Source code: https://github.com/cran/CNEr
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 170

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
      installed size is 21.0Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        doc       1.9Mb
        extdata  15.9Mb
        libs      1.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
      See the note in ?`:::` about the use of this operator.
    ```

# CNVgears

<details>

* Version: 1.0.0
* GitHub: https://github.com/SinomeM/CNVgears
* Source code: https://github.com/cran/CNVgears
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 188

Run `revdep_details(, "CNVgears")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data      3.4Mb
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

# countyfloods

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/countyfloods
* Date/Publication: 2017-10-26 03:22:55 UTC
* Number of recursive dependencies: 99

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
* Number of recursive dependencies: 154

Run `revdep_details(, "cRegulome")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# cTRAP

<details>

* Version: 1.10.0
* GitHub: https://github.com/nuno-agostinho/cTRAP
* Source code: https://github.com/cran/cTRAP
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 161

Run `revdep_details(, "cTRAP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   4.3Mb
        doc    1.9Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# data.table

<details>

* Version: 1.14.0
* GitHub: https://github.com/Rdatatable/data.table
* Source code: https://github.com/cran/data.table
* Date/Publication: 2021-02-21 06:00:02 UTC
* Number of recursive dependencies: 31

Run `revdep_details(, "data.table")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   1.9Mb
    ```

# datapackage.r

<details>

* Version: 1.3.3
* GitHub: https://github.com/frictionlessdata/datapackage-r
* Source code: https://github.com/cran/datapackage.r
* Date/Publication: 2021-04-16 18:40:03 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "datapackage.r")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(datapackage.r)
      > 
      > test_check("datapackage.r")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-package.R:112:3): string remote path ────────────────────────────
      Error: 'with_mock_API' is not an exported object from 'namespace:httptest'
      ── Error (test-profile.R:49:3): load remote profile ────────────────────────────
      Error: 'with_mock_API' is not an exported object from 'namespace:httptest'
      ── Error (test-resource.R:67:3): string remote path ────────────────────────────
      Error: 'with_mock_API' is not an exported object from 'namespace:httptest'
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 186 ]
      Error: Test failures
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# ddPCRclust

<details>

* Version: 1.12.0
* GitHub: https://github.com/bgbrink/ddPCRclust
* Source code: https://github.com/cran/ddPCRclust
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 157

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
    Warning in if (class(data.points) != "matrix") { :
      the condition has length > 1 and only the first element will be used
    Warning in if (class(data.points) != "matrix") { :
      the condition has length > 1 and only the first element will be used
    Warning in if (class(data.points) != "matrix") { :
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

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 153

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘DeepBlueR.Rmd’ using rmarkdown
    Loading required package: XML
    Loading required package: RCurl
    Welcome to the DeepBlueR package
    DeepBlue is online
    Called method: deepblue_search
    Reported status was: okay
    Warning in deepblue_search(keyword = "'H3k27AC' 'blood' 'peak'", type = "experiments") :
      NAs introduced by coercion
    ...
    Quitting from lines 944-945 (DeepBlueR.Rmd) 
    Error: processing vignette 'DeepBlueR.Rmd' failed with diagnostics:
    'length(x) = 66 > 1' in coercion to 'logical(1)'
    --- failed re-building ‘DeepBlueR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘DeepBlueR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

<details>

* Version: 1.44.0
* GitHub: NA
* Source code: https://github.com/cran/DEGraph
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 88

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
* Number of recursive dependencies: 111

Run `revdep_details(, "detrendr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        libs   7.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DEWSeq

<details>

* Version: 1.6.0
* GitHub: https://github.com/EMBL-Hentze-group/DEWSeq
* Source code: https://github.com/cran/DEWSeq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 119

Run `revdep_details(, "DEWSeq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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
    Quitting from lines 494-496 (DEWSeq.Rmd) 
    Error: processing vignette 'DEWSeq.Rmd' failed with diagnostics:
    there is no package called 'tidyverse'
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

* Version: 1.12.3
* GitHub: NA
* Source code: https://github.com/cran/DropletUtils
* Date/Publication: 2021-09-19
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
      installed size is 26.0Mb
      sub-directories of 1Mb or more:
        libs  24.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# Eagle

<details>

* Version: 2.4.5
* GitHub: NA
* Source code: https://github.com/cran/Eagle
* Date/Publication: 2021-06-10 07:00:05 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "Eagle")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.2Mb
      sub-directories of 1Mb or more:
        libs       15.7Mb
        shiny_app   1.1Mb
    ```

# eegc

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/eegc
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 151

Run `revdep_details(, "eegc")` for more info

</details>

## In both

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

*   checking re-building of vignette outputs ... WARNING
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

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        data  10.5Mb
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocStyle’
    ```

# ELMER

<details>

* Version: 2.16.0
* GitHub: NA
* Source code: https://github.com/cran/ELMER
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 239

Run `revdep_details(, "ELMER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 75.6Mb
      sub-directories of 1Mb or more:
        doc  74.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    addMutCol: no visible binding for global variable 'Hugo_Symbol'
    calcDistNearestTSS: no visible binding for global variable
      'DistanceTSS'
    getRegionNearGenes : f: no visible binding for global variable 'Side'
    getRegionNearGenes: no visible binding for global variable 'ID'
    getTFtargets: no visible binding for global variable 'TF'
    Undefined global functions or variables:
      DistanceTSS Hugo_Symbol ID Side TF
    ```

# enrichTF

<details>

* Version: 1.8.0
* GitHub: https://github.com/wzthu/enrichTF
* Source code: https://github.com/cran/enrichTF
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 215

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
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(enrichTF)
      Loading required package: pipeFrame
      
      Warning message:
      In options(stringsAsFactors = TRUE) :
        'options(stringsAsFactors = TRUE)' is deprecated and will be disabled
    ...
       4.       └─enrichTF:::cai()
       5.         └─pipeFrame::runWithFinishCheck(...)
       6.           └─enrichTF:::func(NULL)
       7.             └─pipeFrame::checkAndInstallBSgenome(refFilePath, genome)
       8.               └─BSgenome::available.genomes()
       9.                 └─BSgenome:::get_data_annotation_contrib_url(type)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘enrichTF.Rmd’ using rmarkdown
    Loading required package: pipeFrame
    
    Warning in options(stringsAsFactors = TRUE) :
      'options(stringsAsFactors = TRUE)' is deprecated and will be disabled
    Quitting from lines 58-62 (enrichTF.Rmd) 
    Error: processing vignette 'enrichTF.Rmd' failed with diagnostics:
    Install 'BiocManager' from CRAN to get 'BioCann' contrib.url
    --- failed re-building ‘enrichTF.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘enrichTF.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning in options(stringsAsFactors = TRUE) :
      'options(stringsAsFactors = TRUE)' is deprecated and will be disabled
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EpiSoon’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 169.0Mb
      sub-directories of 1Mb or more:
        help    1.1Mb
        libs  166.7Mb
    ```

# esATAC

<details>

* Version: 1.14.0
* GitHub: https://github.com/wzthu/esATAC
* Source code: https://github.com/cran/esATAC
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 205

Run `revdep_details(, "esATAC")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'RMotifScan.Rd':
      ‘import’
    
    Missing link or links in documentation object 'RPeakAnno.Rd':
      ‘import’
    
    Missing link or links in documentation object 'RPeakComp.Rd':
      ‘import’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking re-building of vignette outputs ... WARNING
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

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        doc       3.4Mb
        extdata   5.1Mb
        libs      3.6Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning in options(stringsAsFactors = TRUE) :
      'options(stringsAsFactors = TRUE)' is deprecated and will be disabled
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘ShortRead:::.ShortReadQQA’ ‘ShortRead:::.qa_adapterContamination’
      See the note in ?`:::` about the use of this operator.
    ```

# ezknitr

<details>

* Version: 0.6
* GitHub: https://github.com/ropenscilabs/ezknitr
* Source code: https://github.com/cran/ezknitr
* Date/Publication: 2016-09-16 07:13:44
* Number of recursive dependencies: 48

Run `revdep_details(, "ezknitr")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fastai

<details>

* Version: 2.0.9
* GitHub: https://github.com/EagerAI/fastai
* Source code: https://github.com/cran/fastai
* Date/Publication: 2021-07-28 13:10:02 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "fastai")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc    3.0Mb
        help   2.0Mb
    ```

# FCPS

<details>

* Version: 1.3.0
* GitHub: https://github.com/Mthrun/FCPS
* Source code: https://github.com/cran/FCPS
* Date/Publication: 2021-07-07 17:10:02 UTC
* Number of recursive dependencies: 247

Run `revdep_details(, "FCPS")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   2.5Mb
        doc    3.5Mb
    ```

# FGNet

<details>

* Version: 3.26.0
* GitHub: NA
* Source code: https://github.com/cran/FGNet
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 75

Run `revdep_details(, "FGNet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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

# fitteR

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/fitteR
* Date/Publication: 2017-12-11 14:27:45 UTC
* Number of recursive dependencies: 204

Run `revdep_details(, "fitteR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ihs’
    ```

# FRASER

<details>

* Version: 1.4.0
* GitHub: https://github.com/gagneurlab/FRASER
* Source code: https://github.com/cran/FRASER
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 185

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘FRASER.Rnw’ using knitr
    Sat Sep 25 18:55:39 2021: Start counting the split reads ...
    Sat Sep 25 18:55:40 2021: Count split reads for sample: sample1
    Sat Sep 25 18:55:43 2021: Count split reads for sample: sample2
    Sat Sep 25 18:55:44 2021: Count split reads for sample: sample3
    Sat Sep 25 18:55:45 2021 : count ranges need to be merged ...
    Sat Sep 25 18:55:46 2021: Create splice site indices ...
    Sat Sep 25 18:55:47 2021: Writing split counts to folder: /scratch/henrik/RtmpcHqxFk/savedObjects/Data_Analysis/splitCounts
    Sat Sep 25 18:55:47 2021: Identifying introns with read count <= 20 in all samples...
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
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        doc    1.6Mb
        libs   4.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# freesurfer

<details>

* Version: 1.6.8
* GitHub: https://github.com/muschellij2/freesurfer
* Source code: https://github.com/cran/freesurfer
* Date/Publication: 2020-12-08 20:30:07 UTC
* Number of recursive dependencies: 37

Run `revdep_details(, "freesurfer")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘exploring_included_data.Rmd’ using rmarkdown
    Loading required package: oro.nifti
    oro.nifti 0.11.0
    Quitting from lines 106-109 (exploring_included_data.Rmd) 
    Error: processing vignette 'exploring_included_data.Rmd' failed with diagnostics:
    there is no package called 'codetools'
    --- failed re-building ‘exploring_included_data.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘exploring_included_data.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# FSK2R

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/FSK2R
* Date/Publication: 2020-10-06 09:00:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "FSK2R")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# GCSscore

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/GCSscore
* Date/Publication: 2021-05-19
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
      installed size is 12.2Mb
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

# gifti

<details>

* Version: 0.8.0
* GitHub: https://github.com/muschellij2/gifti
* Source code: https://github.com/cran/gifti
* Date/Publication: 2020-11-11 22:40:02 UTC
* Number of recursive dependencies: 59

Run `revdep_details(, "gifti")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# glue

<details>

* Version: 1.4.2
* GitHub: https://github.com/tidyverse/glue
* Source code: https://github.com/cran/glue
* Date/Publication: 2020-08-27 13:50:06 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "glue")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# GWASinspector

<details>

* Version: 1.5.2
* GitHub: NA
* Source code: https://github.com/cran/GWASinspector
* Date/Publication: 2021-03-22 21:40:02 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "GWASinspector")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# HiCBricks

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/HiCBricks
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 90

Run `revdep_details(, "HiCBricks")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        doc       4.4Mb
        extdata   2.2Mb
    ```

# HiCDCPlus

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/HiCDCPlus
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 161

Run `revdep_details(, "HiCDCPlus")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘HiCDCPlus.Rmd’ using rmarkdown
    Loading required package: BSgenome
    Loading required package: BiocGenerics
    Loading required package: parallel
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:parallel':
    
    ...
    Quitting from lines 158-197 (HiCDCPlus.Rmd) 
    Error: processing vignette 'HiCDCPlus.Rmd' failed with diagnostics:
    cons memory exhausted (limit reached?)
    --- failed re-building ‘HiCDCPlus.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘HiCDCPlus.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        extdata   3.3Mb
        libs      1.7Mb
    ```

# hoardeR

<details>

* Version: 0.9.4-2
* GitHub: NA
* Source code: https://github.com/cran/hoardeR
* Date/Publication: 2019-02-12 08:23:21 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "hoardeR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# homologene

<details>

* Version: 1.4.68.19.3.27
* GitHub: https://github.com/oganm/homologene
* Source code: https://github.com/cran/homologene
* Date/Publication: 2019-03-28 23:10:03 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "homologene")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data   6.1Mb
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

# isoreader

<details>

* Version: 1.3.0
* GitHub: https://github.com/isoverse/isoreader
* Source code: https://github.com/cran/isoreader
* Date/Publication: 2021-02-16 06:20:07 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "isoreader")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# joinXL

<details>

* Version: 1.0.1
* GitHub: https://github.com/yvonneglanville/joinXL
* Source code: https://github.com/cran/joinXL
* Date/Publication: 2016-09-19 01:45:37
* Number of recursive dependencies: 46

Run `revdep_details(, "joinXL")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# jsTreeR

<details>

* Version: 1.4.0
* GitHub: https://github.com/stla/jsTreeR
* Source code: https://github.com/cran/jsTreeR
* Date/Publication: 2021-09-19 06:20:02 UTC
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

* Version: 1.6.1
* GitHub: NA
* Source code: https://github.com/cran/KnowSeq
* Date/Publication: 2021-08-01
* Number of recursive dependencies: 156

Run `revdep_details(, "KnowSeq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.4Mb
      sub-directories of 1Mb or more:
        doc       5.7Mb
        extdata   5.1Mb
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
    ...
    dataPlot: no visible binding for global variable ‘value’
    dataPlot: no visible binding for global variable ‘Classes’
    dataPlot: no visible binding for global variable ‘Value’
    featureSelection: no visible binding for global variable ‘target’
    featureSelection: no visible binding for global variable
      ‘association_score’
    knowseqReport: no visible binding for global variable ‘target’
    Undefined global functions or variables:
      Classes Expression Samples Value Var1 Var2 association_score target
      value x y
    ```

# latrend

<details>

* Version: 1.1.2
* GitHub: https://github.com/philips-software/latrend
* Source code: https://github.com/cran/latrend
* Date/Publication: 2021-04-14 13:50:10 UTC
* Number of recursive dependencies: 200

Run `revdep_details(, "latrend")` for more info

</details>

## In both

*   checking whether package ‘latrend’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/R.utils/revdep/checks/latrend/new/latrend.Rcheck/00install.out’ for details.
    ```

*   checking Rd files ... WARNING
    ```
    prepare_Rd: no DISPLAY variable so Tk is not available
    ```

# link2GI

<details>

* Version: 0.4-7
* GitHub: https://github.com/r-spatial/link2GI
* Source code: https://github.com/cran/link2GI
* Date/Publication: 2021-09-03 04:50:34 UTC
* Number of recursive dependencies: 119

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

* Version: 0.2.1
* GitHub: https://github.com/daroczig/logger
* Source code: https://github.com/cran/logger
* Date/Publication: 2021-07-06 16:10:08 UTC
* Number of recursive dependencies: 125

Run `revdep_details(, "logger")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘botor’
    
    Packages which this enhances but not available for checking:
      'logging', 'futile.logger', 'log4r'
    ```

# MACSQuantifyR

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/MACSQuantifyR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 86

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

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc       3.2Mb
        extdata   1.5Mb
    ```

# maftools

<details>

* Version: 2.8.05
* GitHub: https://github.com/PoisonAlien/maftools
* Source code: https://github.com/cran/maftools
* Date/Publication: 2021-09-09
* Number of recursive dependencies: 112

Run `revdep_details(, "maftools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.7Mb
      sub-directories of 1Mb or more:
        doc       7.2Mb
        extdata   6.8Mb
        libs      2.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rhtslib’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .mafSetKeys: no visible binding for global variable ‘Chromosome’
    .mafSetKeys: no visible binding for global variable ‘Start_Position’
    .mafSetKeys: no visible binding for global variable ‘End_Position’
    OncogenicPathways: no visible binding for global variable
      ‘n_affected_genes’
    OncogenicPathways: no visible binding for global variable ‘ID’
    OncogenicPathways: no visible global function definition for ‘layout’
    OncogenicPathways: no visible global function definition for ‘par’
    OncogenicPathways: no visible global function definition for ‘text’
    OncogenicPathways: no visible global function definition for ‘title’
    ...
                 "par", "pie", "plot.new", "points", "rect", "segments",
                 "stripchart", "symbols", "text", "title")
      importFrom("stats", "C", "complete.cases", "cophenetic", "dbinom",
                 "density", "fisher.test", "glm", "kmeans", "median",
                 "na.omit", "p.adjust", "pairwise.t.test", "pairwise.table",
                 "pchisq", "pnorm", "poisson", "poisson.test", "qf", "qnorm",
                 "sd", "t.test", "wilcox.test")
      importFrom("utils", "browseURL", "combn", "read.csv",
                 "setTxtProgressBar", "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# metaboliteIDmapping

<details>

* Version: 1.0.0
* GitHub: https://github.com/yigbt/metaboliteIDmapping
* Source code: https://github.com/cran/metaboliteIDmapping
* Number of recursive dependencies: 109

Run `revdep_details(, "metaboliteIDmapping")` for more info

</details>

## In both

*   checking whether package ‘metaboliteIDmapping’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/scratch/henrik/R.utils/revdep/checks/metaboliteIDmapping/new/metaboliteIDmapping.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘metaboliteIDmapping’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
...
 .onLoad failed in loadNamespace() for 'metaboliteIDmapping', details:
  call: NULL
  error: Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/AnnotationHub
  filename: annotationhub.index.rds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/scratch/henrik/R.utils/revdep/checks/metaboliteIDmapping/new/metaboliteIDmapping.Rcheck/metaboliteIDmapping’


```
### CRAN

```
* installing *source* package ‘metaboliteIDmapping’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
...
 .onLoad failed in loadNamespace() for 'metaboliteIDmapping', details:
  call: NULL
  error: Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/AnnotationHub
  filename: annotationhub.index.rds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/scratch/henrik/R.utils/revdep/checks/metaboliteIDmapping/old/metaboliteIDmapping.Rcheck/metaboliteIDmapping’


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

* Version: 1.2.1
* GitHub: https://github.com/TransBioInfoLab/MethReg
* Source code: https://github.com/cran/MethReg
* Date/Publication: 2021-05-30
* Number of recursive dependencies: 236

Run `revdep_details(, "MethReg")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Error: values must be length 1,
       but FUN(X[[2]]) result is length 0
      Backtrace:
          █
       1. └─MethReg::get_promoter_avg(dnam = dnam, genome = "hg38", arrayType = "450k") test-get_promoter_avg.R:37:4
       2.   ├─base::cbind(rownames(se), rbind(unique.promoter.genes, non.unique.promoter.genes))
       3.   └─base::rbind(unique.promoter.genes, non.unique.promoter.genes)
    ...
       13. │           └─BSgenome:::.getInstalledPkgnameFromGenome(genome, masked = masked)
       14. │             └─BSgenome:::.stopOnAvailablePkg(genome)
       15. │               └─base::stop(...)
       16. ├─SummarizedExperiment::assay(.)
       17. └─base::.handleSimpleError(...)
       18.   └─base:::h(simpleError(msg, call))
      
      [ FAIL 3 | WARN 4 | SKIP 0 | PASS 163 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        R      2.6Mb
        data   1.9Mb
        doc    2.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘TCGAbiolinks’
    ```

# methylKit

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/methylKit
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 127

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
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        R      3.0Mb
        doc    1.4Mb
        libs   4.2Mb
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

# MicroSEC

<details>

* Version: 1.1.3
* GitHub: https://github.com/MANO-B/MicroSEC
* Source code: https://github.com/cran/MicroSEC
* Date/Publication: 2020-12-02 10:30:07 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "MicroSEC")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘GenomicAlignments’ ‘R.utils’ ‘data.table’ ‘magrittr’ ‘tidyr’
      All declared Imports should be used.
    ```

# mirTarRnaSeq

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/mirTarRnaSeq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 59

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

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mirTarRnaSeq.Rmd’ using rmarkdown
    Quitting from lines 16-35 (mirTarRnaSeq.Rmd) 
    Error: processing vignette 'mirTarRnaSeq.Rmd' failed with diagnostics:
    there is no package called 'ggplot2'
    --- failed re-building ‘mirTarRnaSeq.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mirTarRnaSeq.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        data   4.5Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘ggplot2’ ‘tidyr’ ‘viridis’
    ```

# mistyR

<details>

* Version: 1.0.3
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2021-07-22
* Number of recursive dependencies: 182

Run `revdep_details(, "mistyR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘mistyR.Rmd’ using rmarkdown
    mistyR is able to run computationally intensive functions
      in parallel. Please consider specifying a future::plan(). For example by running
      future::plan(future::multisession) before calling mistyR functions.
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
    ...
    Quitting from lines 32-37 (mistySpatialExperiment.Rmd) 
    Error: processing vignette 'mistySpatialExperiment.Rmd' failed with diagnostics:
    could not find function "Githubpkg"
    --- failed re-building ‘mistySpatialExperiment.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mistySpatialExperiment.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    plot_interaction_heatmap: no visible binding for global variable
      ‘Importance’
    plot_interaction_heatmap: no visible binding for global variable
      ‘Predictor’
    plot_interaction_heatmap: no visible binding for global variable
      ‘total’
    plot_interaction_heatmap: no visible binding for global variable
      ‘Target’
    plot_view_contributions: no visible binding for global variable
      ‘measure’
    plot_view_contributions: no visible binding for global variable
      ‘target’
    Undefined global functions or variables:
      Importance Predictor Target measure target total
    ```

# msgbsR

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/msgbsR
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 162

Run `revdep_details(, "msgbsR")` for more info

</details>

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                   old_size new_size compress
      ratdata.rda     318Kb    127Kb       xz
      ratdata2.rda    287Kb    116Kb       xz
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.1Mb
      sub-directories of 1Mb or more:
        extdata  15.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'utils'
      All declared Imports should be used.
    ```

# muscData

<details>

* Version: 1.6.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2021-05-20
* Number of recursive dependencies: 251

Run `revdep_details(, "muscData")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘Crowell19_4vs4’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
      .git_fetch_output.txt
      .git_merge_output.txt
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘SingleCellExperiment’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
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

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/nearBynding
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 117

Run `revdep_details(, "nearBynding")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        extdata   8.1Mb
    ```

# neo4jshell

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/neo4jshell
* Date/Publication: 2020-08-03 20:40:03 UTC
* Number of recursive dependencies: 28

Run `revdep_details(, "neo4jshell")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# netboost

<details>

* Version: 2.0.0
* GitHub: https://github.com/PascalSchlosser/netboost
* Source code: https://github.com/cran/netboost
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 106

Run `revdep_details(, "netboost")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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
* Number of recursive dependencies: 142

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

# oce

<details>

* Version: 1.4-0
* GitHub: https://github.com/dankelley/oce
* Source code: https://github.com/cran/oce
* Date/Publication: 2021-03-28 06:50:25 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "oce")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.2Mb
      sub-directories of 1Mb or more:
        R      3.9Mb
        data   1.0Mb
        doc    2.0Mb
        help   4.7Mb
        libs   6.9Mb
    ```

# openCyto

<details>

* Version: 2.4.0
* GitHub: NA
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 135

Run `revdep_details(, "openCyto")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    2.6Mb
        libs   3.5Mb
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

* Version: 1.12.11
* GitHub: https://github.com/Roleren/ORFik
* Source code: https://github.com/cran/ORFik
* Date/Publication: 2021-08-29
* Number of recursive dependencies: 157

Run `revdep_details(, "ORFik")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ORFik-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: find_url_ebi
    > ### Title: Locates and check if fastq files exists in ebi
    > ### Aliases: find_url_ebi
    > 
    > ### ** Examples
    > 
    > # Test the 3 ways to get fastq files from EBI
    ...
    > # Both single end and paired end data
    > 
    > # Most common: SRR(3 first)/0(2 last)/whole
    > # Single
    > ORFik:::find_url_ebi("SRR10503056")
    Finding optimal download urls from ebi...
    Error in download.file(input, tmpFile, method = method, mode = "wb", quiet = !showProgress) : 
      cannot open URL 'http://www.ebi.ac.uk/ena/portal/api/filereport?accession=SRR10503056&result=read_run&fields=run_accession,fastq_ftp'
    Calls: <Anonymous> -> find_url_ebi_safe
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.0Mb
      sub-directories of 1Mb or more:
        doc    4.0Mb
        libs   2.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': ‘biomartr:::getGFF’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘GenomicFeatures:::.merge_seqinfo_and_infer_missing_seqlengths’
      ‘IRanges:::regroupBySupergroup’ ‘S4Vectors:::normarg_mcols’
      ‘biomartr:::getENSEMBL.Seq’ ‘biomartr:::getENSEMBL.gtf’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘coverageByTranscriptW’ ‘find_url_ebi’ ‘groupings’ ‘trimming.table’
    ```

# pagoda2

<details>

* Version: 1.0.5
* GitHub: https://github.com/kharchenkolab/pagoda2
* Source code: https://github.com/cran/pagoda2
* Date/Publication: 2021-08-11 19:50:02 UTC
* Number of recursive dependencies: 162

Run `revdep_details(, "pagoda2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs   7.5Mb
    ```

# paxtoolsr

<details>

* Version: 1.26.0
* GitHub: https://github.com/BioPAX/paxtoolsr
* Source code: https://github.com/cran/paxtoolsr
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 160

Run `revdep_details(, "paxtoolsr")` for more info

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
      installed size is 33.7Mb
      sub-directories of 1Mb or more:
        doc       1.9Mb
        extdata   6.9Mb
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
* Number of recursive dependencies: 94

Run `revdep_details(, "PhenotypeSimulator")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.1Mb
        libs      1.1Mb
    ```

# PopGenReport

<details>

* Version: 3.0.4
* GitHub: https://github.com/green-striped-gecko/PopGenReport
* Source code: https://github.com/cran/PopGenReport
* Date/Publication: 2019-02-04 12:13:23 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "PopGenReport")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# pRecipe

<details>

* Version: 0.1.0
* GitHub: https://github.com/MiRoVaGo/pRecipe
* Source code: https://github.com/cran/pRecipe
* Date/Publication: 2021-06-18 09:10:02 UTC
* Number of recursive dependencies: 82

Run `revdep_details(, "pRecipe")` for more info

</details>

## In both

*   checking whether package ‘pRecipe’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/scratch/henrik/R.utils/revdep/checks/pRecipe/new/pRecipe.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pRecipe’ ...
** package ‘pRecipe’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
sh: line 1: 43286 Aborted                 R_TESTS= '/software/c4/cbi/software/R-4.1.1-gcc8/lib64/R/bin/R' --no-save --no-restore --no-echo 2>&1 < '/scratch/henrik/RtmpqB0iAJ/filea8fe234e68eb'
Warning! ***HDF5 library version mismatched error***
The HDF5 header files used to compile this application do not match
the version used by the HDF5 library to which this application is linked.
...
                     API tracing: no
            Using memory checker: no
 Memory allocation sanity checks: no
          Function stack tracing: no
                Use file locking: best-effort
       Strict file format checks: no
    Optimization instrumentation: no
Bye...
ERROR: lazy loading failed for package ‘pRecipe’
* removing ‘/scratch/henrik/R.utils/revdep/checks/pRecipe/new/pRecipe.Rcheck/pRecipe’


```
### CRAN

```
* installing *source* package ‘pRecipe’ ...
** package ‘pRecipe’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
sh: line 1: 42626 Aborted                 R_TESTS= '/software/c4/cbi/software/R-4.1.1-gcc8/lib64/R/bin/R' --no-save --no-restore --no-echo 2>&1 < '/scratch/henrik/RtmpVitrcb/filea665568ff8e9'
Warning! ***HDF5 library version mismatched error***
The HDF5 header files used to compile this application do not match
the version used by the HDF5 library to which this application is linked.
...
                     API tracing: no
            Using memory checker: no
 Memory allocation sanity checks: no
          Function stack tracing: no
                Use file locking: best-effort
       Strict file format checks: no
    Optimization instrumentation: no
Bye...
ERROR: lazy loading failed for package ‘pRecipe’
* removing ‘/scratch/henrik/R.utils/revdep/checks/pRecipe/old/pRecipe.Rcheck/pRecipe’


```
# primirTSS

<details>

* Version: 1.10.0
* GitHub: https://github.com/ipumin/primirTSS
* Source code: https://github.com/cran/primirTSS
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 182

Run `revdep_details(, "primirTSS")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'magrittr'
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
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        extdata   3.1Mb
    ```

# Prostar

<details>

* Version: 1.24.8
* GitHub: https://github.com/samWieczorek/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2021-08-22
* Number of recursive dependencies: 321

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocManager’ ‘DAPAR’ ‘DAPARdata’ ‘DT’ ‘R.utils’ ‘XML’ ‘colourpicker’
      ‘data.table’ ‘future’ ‘highcharter’ ‘htmlwidgets’ ‘later’ ‘promises’
      ‘rclipboard’ ‘rhandsontable’ ‘sass’ ‘shinyAce’ ‘shinyBS’ ‘shinyTree’
      ‘shinyWidgets’ ‘shinycssloaders’ ‘shinyjqui’ ‘shinyjs’ ‘shinythemes’
      ‘tibble’ ‘webshot’
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

* Version: 1.18.5
* GitHub: https://github.com/nuno-agostinho/psichomics
* Source code: https://github.com/cran/psichomics
* Date/Publication: 2021-08-26
* Number of recursive dependencies: 255

Run `revdep_details(, "psichomics")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘psichomics-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: convertGeneIdentifiers
    > ### Title: Convert gene identifiers
    > ### Aliases: convertGeneIdentifiers
    > 
    > ### ** Examples
    > 
    > # Use species name to automatically look for a OrgDb database
    ...
    > sp <- "Homo sapiens"
    > genes <- c("ENSG00000012048", "ENSG00000083093", "ENSG00000141510",
    +            "ENSG00000051180")
    > convertGeneIdentifiers(sp, genes)
    snapshotDate(): 2021-05-18
    Error: Corrupt Cache: index file
      See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
      cache: /c4/home/henrik/.cache/R/AnnotationHub
      filename: annotationhub.index.rds
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        |                                        |   0% 
        |========                                |  20% 
        |================                        |  40% 
        |========================                |  60% 
        |================================        |  80% 
        |========================================| 100% 
        |                                        |   0% 
    ...
      Backtrace:
          █
       1. └─psichomics:::checkDiscardCvgPSIvalues(vals, samples = 4, events = 2) testDiscardLowCoveragePSIs.R:71:4
       2.   └─testthat::expect_true(nrow(filter) == 0 || noNAs || is.na(unique(filter[toNA]))) testDiscardLowCoveragePSIs.R:50:4
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       4.       └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 1458 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        doc    4.3Mb
        help   1.2Mb
        libs   1.9Mb
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
* Number of recursive dependencies: 77

Run `revdep_details(, "pubtatordb")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# pulsedSilac

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/pulsedSilac
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 87

Run `revdep_details(, "pulsedSilac")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘pulsedsilac.Rmd’ using rmarkdown
    Error: processing vignette 'pulsedsilac.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘pulsedsilac.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘pulsedsilac.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# QDNAseq

<details>

* Version: 1.28.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 75

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
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

# rbiom

<details>

* Version: 1.0.2
* GitHub: https://github.com/cmmr/rbiom
* Source code: https://github.com/cran/rbiom
* Date/Publication: 2020-05-29 12:30:09 UTC
* Number of recursive dependencies: 50

Run `revdep_details(, "rbiom")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# rCBA

<details>

* Version: 0.4.3
* GitHub: https://github.com/jaroslav-kuchar/rCBA
* Source code: https://github.com/cran/rCBA
* Date/Publication: 2019-05-29 21:50:03 UTC
* Number of recursive dependencies: 8

Run `revdep_details(, "rCBA")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# RcisTarget

<details>

* Version: 1.12.0
* GitHub: https://github.com/aertslab/RcisTarget
* Source code: https://github.com/cran/RcisTarget
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 145

Run `revdep_details(, "RcisTarget")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘arrow’
    
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG', 'zoo'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Rcwl

<details>

* Version: 1.8.1
* GitHub: NA
* Source code: https://github.com/cran/Rcwl
* Date/Publication: 2021-07-01
* Number of recursive dependencies: 125

Run `revdep_details(, "Rcwl")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(Rcwl)
      Loading required package: yaml
      Loading required package: S4Vectors
      Loading required package: stats4
      Loading required package: BiocGenerics
      Loading required package: parallel
    ...
      ── Error (test_all.R:6:1): (code run outside of `test_that()`) ─────────────────
      Error: error in running command
      Backtrace:
          █
       1. └─Rcwl::runCWL(echo) test_all.R:6:0
       2.   └─base::system2(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Rcwl.Rmd’ using rmarkdown
    Loading required package: yaml
    Loading required package: S4Vectors
    Loading required package: stats4
    Loading required package: BiocGenerics
    Loading required package: parallel
    
    Attaching package: 'BiocGenerics'
    
    ...
    Quitting from lines 122-127 (Rcwl.Rmd) 
    Error: processing vignette 'Rcwl.Rmd' failed with diagnostics:
    error in running command
    --- failed re-building ‘Rcwl.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Rcwl.Rmd’
    
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

*   checking whether package ‘Rcwl’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/scratch/henrik/R.utils/revdep/checks/Rcwl/new/Rcwl.Rcheck/00install.out’ for details.
    ```

# RCy3

<details>

* Version: 2.12.4
* GitHub: https://github.com/cytoscape/RCy3
* Source code: https://github.com/cran/RCy3
* Date/Publication: 2021-08-10
* Number of recursive dependencies: 65

Run `revdep_details(, "RCy3")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        doc  11.7Mb
    ```

# rdwd

<details>

* Version: 1.5.0
* GitHub: https://github.com/brry/rdwd
* Source code: https://github.com/cran/rdwd
* Date/Publication: 2021-04-08 21:40:06 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "rdwd")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        R      6.6Mb
        data   1.1Mb
    ```

# read.gt3x

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/read.gt3x
* Date/Publication: 2021-01-13 17:20:03 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "read.gt3x")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# recount3

<details>

* Version: 1.2.5
* GitHub: https://github.com/LieberInstitute/recount3
* Source code: https://github.com/cran/recount3
* Date/Publication: 2021-09-16
* Number of recursive dependencies: 193

Run `revdep_details(, "recount3")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    create_rse_manual: no visible global function definition for ‘mcols’
    create_rse_manual: no visible global function definition for ‘mcols<-’
    expand_sra_attributes: no visible global function definition for
      ‘colData<-’
    Undefined global functions or variables:
      colData<- mcols mcols<-
    ```

# recountmethylation

<details>

* Version: 1.2.0
* GitHub: https://github.com/metamaden/recountmethylation
* Source code: https://github.com/cran/recountmethylation
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 186

Run `revdep_details(, "recountmethylation")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘recountmethylation_data_analyses.Rmd’ using rmarkdown
    Warning in eval(expr, envir, enclos) : NAs introduced by coercion
    Warning in cor.test.default(mdf$predage, mdf$chron.age, method = "spearman") :
      Cannot compute exact p-value with ties
    The magick package is required to crop "/scratch/henrik/R.utils/revdep/checks/recountmethylation/new/recountmethylation.Rcheck/vign_test/recountmethylation/vignettes/recountmethylation_data_analyses_files/figure-html/unnamed-chunk-13-1.png" but not available.
    `geom_smooth()` using formula 'y ~ x'
    The magick package is required to crop "/scratch/henrik/R.utils/revdep/checks/recountmethylation/new/recountmethylation.Rcheck/vign_test/recountmethylation/vignettes/recountmethylation_data_analyses_files/figure-html/unnamed-chunk-14-1.png" but not available.
    The magick package is required to crop "/scratch/henrik/R.utils/revdep/checks/recountmethylation/new/recountmethylation.Rcheck/vign_test/recountmethylation/vignettes/recountmethylation_data_analyses_files/figure-html/unnamed-chunk-21-1.png" but not available.
    Warning in regularize.values(x, y, ties, missing(ties), na.rm = na.rm) :
    ...
    Quitting from lines 280-282 (recountmethylation_users_guide.Rmd) 
    Error: processing vignette 'recountmethylation_users_guide.Rmd' failed with diagnostics:
    cannot load annotation package IlluminaHumanMethylation450kanno.ilmn12.hg19
    --- failed re-building ‘recountmethylation_users_guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘recountmethylation_users_guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc       1.9Mb
        extdata   3.6Mb
    ```

# ReportingTools

<details>

* Version: 2.32.1
* GitHub: NA
* Source code: https://github.com/cran/ReportingTools
* Date/Publication: 2021-07-27
* Number of recursive dependencies: 183

Run `revdep_details(, "ReportingTools")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 50 lines of output:
      
      Attaching package: 'GOstats'
      
      The following object is masked from 'package:AnnotationDbi':
      
          makeGOGraph
      
    ...
      
      Test files with failing tests
      
         test_knitr.R 
           test_knitr 
      
      
      Error in BiocGenerics:::testPackage("ReportingTools") : 
        unit tests failed for package ReportingTools
      Execution halted
    ```

# RforProteomics

<details>

* Version: 1.30.1
* GitHub: NA
* Source code: https://github.com/cran/RforProteomics
* Date/Publication: 2021-08-21
* Number of recursive dependencies: 276

Run `revdep_details(, "RforProteomics")` for more info

</details>

## In both

*   checking whether package ‘RforProteomics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘MSnbase::plot’ by ‘graphics::plot’ when loading ‘RforProteomics’
    See ‘/scratch/henrik/R.utils/revdep/checks/RforProteomics/new/RforProteomics.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘RProtVis.Rmd’ using rmarkdown
    Loading required package: MSnbase
    Loading required package: BiocGenerics
    Loading required package: parallel
    
    Attaching package: 'BiocGenerics'
    
    The following objects are masked from 'package:parallel':
    
    ...
    File ./figures/isobar-fig.png not found in resource path
    Error: processing vignette 'RforProteomics.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 99
    --- failed re-building ‘RforProteomics.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘RProtVis.Rmd’ ‘RforProteomics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        doc  10.8Mb
    ```

# RNAseq123

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/RNAseq123
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 155

Run `revdep_details(, "RNAseq123")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
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
    
    The magick package is required to crop "/scratch/henrik/R.utils/revdep/checks/RNAseq123/new/RNAseq123.Rcheck/vign_test/RNAseq123/vignettes/limmaWorkflow_CHN_files/figure-html/heatmap-1.png" but not available.
    The magick package is required to crop "/scratch/henrik/R.utils/revdep/checks/RNAseq123/new/RNAseq123.Rcheck/vign_test/RNAseq123/vignettes/limmaWorkflow_CHN_files/figure-html/barcodeplot-1.png" but not available.
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
      installed size is  8.3Mb
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

* Version: 2.5.8
* GitHub: NA
* Source code: https://github.com/cran/RRphylo
* Date/Publication: 2021-09-03 12:00:02 UTC
* Number of recursive dependencies: 193

Run `revdep_details(, "RRphylo")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘webshot2’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    2.6Mb
    ```

# ruta

<details>

* Version: 1.1.0
* GitHub: https://github.com/fdavidcl/ruta
* Source code: https://github.com/cran/ruta
* Date/Publication: 2019-03-18 13:10:02 UTC
* Number of recursive dependencies: 64

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

# sdmpredictors

<details>

* Version: 0.2.10
* GitHub: https://github.com/lifewatch/sdmpredictors
* Source code: https://github.com/cran/sdmpredictors
* Date/Publication: 2021-09-20 12:50:02 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "sdmpredictors")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RCurl’
      All declared Imports should be used.
    ```

# seeds

<details>

* Version: 0.9.1
* GitHub: https://github.com/Newmi1988/seeds
* Source code: https://github.com/cran/seeds
* Date/Publication: 2020-07-14 00:00:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "seeds")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rsbml’
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

# sigminer

<details>

* Version: 2.1.0
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2021-09-22 10:00:02 UTC
* Number of recursive dependencies: 210

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        extdata   2.7Mb
        libs      1.2Mb
    ```

# signatureSearchData

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/signatureSearchData
* Date/Publication: 2021-05-20
* Number of recursive dependencies: 180

Run `revdep_details(, "signatureSearchData")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .git_fetch_output.txt
      .git_merge_output.txt
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# simpleSingleCell

<details>

* Version: 1.16.0
* GitHub: NA
* Source code: https://github.com/cran/simpleSingleCell
* Date/Publication: 2021-05-21
* Number of recursive dependencies: 144

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
    processing file: file7ffa3d7adcc0.Rmd
    label: unnamed-chunk-1 (with options) 
    List of 2
     $ echo   : logi FALSE
     $ results: chr "asis"
    
    Quitting from lines 2-3 (file7ffa3d7adcc0.Rmd) 
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
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        doc   8.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BiocStyle’
      All declared Imports should be used.
    ```

# singleCellTK

<details>

* Version: 2.2.0
* GitHub: https://github.com/compbiomed/singleCellTK
* Source code: https://github.com/cran/singleCellTK
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 373

Run `revdep_details(, "singleCellTK")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        extdata   1.5Mb
    ```

# systemPipeShiny

<details>

* Version: 1.2.0
* GitHub: https://github.com/systemPipeR/systemPipeShiny
* Source code: https://github.com/cran/systemPipeShiny
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 235

Run `revdep_details(, "systemPipeShiny")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      create a new R6
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (1)
      • Skip on checks (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-01sps_core.R:27:1): (code run outside of `test_that()`) ─────────
    ...
        9. │ │   └─rlang::dots_list(...)
       10. │ └─htmltools::includeMarkdown("https://raw.githubusercontent.com/lz100/systemPipeShiny/master/NEWS.md")
       11. └─base::loadNamespace(x)
       12.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       13.     └─base:::withOneRestart(expr, restarts[[1L]])
       14.       └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 67 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
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
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        app   1.2Mb
        doc   3.4Mb
    ```

# TBSSurvival

<details>

* Version: 1.3
* GitHub: NA
* Source code: https://github.com/cran/TBSSurvival
* Date/Publication: 2017-01-05 14:45:36
* Number of recursive dependencies: 12

Run `revdep_details(, "TBSSurvival")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TBSSurvival-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: tbs.survreg.mle
    > ### Title: MLE of the TBS Model for Failure Data
    > ### Aliases: tbs.survreg.mle
    > 
    > ### ** Examples
    > 
    > # Alloy - T7987: data extracted from Meeker and Escobar (1998), pp. 131.
    ...
    }
    <bytecode: 0x62cabc0>
    <environment: namespace:TBSSurvival>
     --- function search by body ---
    Function .tbs.survreg in namespace TBSSurvival has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in valik > -Inf || is.na(est) : 
      'length(x) = 6 > 1' in coercion to 'logical(1)'
    Calls: tbs.survreg.mle -> fn.aux -> .tbs.survreg
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/simple.r’ failed.
    Last 50 lines of output:
              out$error.dist <- dist
              out$AIC <- 2 * nparam - 2 * est$value
              out$AICc <- 2 * nparam - 2 * est$value + 2 * nparam * 
                  (nparam + 1)/(length(time) - nparam - 1)
              out$BIC <- -2 * est$value + nparam * log(length(time))
              out$convergence <- TRUE
              aux <- .test.tbs(out$lambda, out$xi, out$beta, x, time, 
    ...
      }
      <bytecode: 0xa6ffb30>
      <environment: namespace:TBSSurvival>
       --- function search by body ---
      Function .tbs.survreg in namespace TBSSurvival has this body.
       ----------- END OF FAILURE REPORT -------------- 
      Error in valik > -Inf || is.na(est) : 
        'length(x) = 6 > 1' in coercion to 'logical(1)'
      Calls: tbs.survreg.mle -> fn.aux -> .tbs.survreg
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘TBSSurvival.Rnw’ using ‘UTF-8’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘TBSSurvival.Rnw’
      ...
    }
    <bytecode: 0xb07c2e0>
    <environment: namespace:TBSSurvival>
     --- function search by body ---
    Function .tbs.survreg in namespace TBSSurvival has this body.
     ----------- END OF FAILURE REPORT -------------- 
    
      When sourcing ‘TBSSurvival.R’:
    Error: 'length(x) = 6 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘TBSSurvival.Rnw’ using Sweave
    TBSSurvival 1.2 loaded
    
     ----------- FAILURE REPORT -------------- 
     --- failure: length > 1 in coercion to logical ---
     --- srcref --- 
    : 
     --- package (from environment) --- 
    TBSSurvival
    ...
    Error in valik > -Inf || is.na(est) : 
      'length(x) = 6 > 1' in coercion to 'logical(1)'
    
    --- failed re-building ‘TBSSurvival.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘TBSSurvival.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# TCGAbiolinks

<details>

* Version: 2.20.0
* GitHub: https://github.com/BioinformaticsFMRP/TCGAbiolinks
* Source code: https://github.com/cran/TCGAbiolinks
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 305

Run `revdep_details(, "TCGAbiolinks")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TCGAbiolinks-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getManifest
    > ### Title: Get a Manifest from GDCquery output that can be used with
    > ###   GDC-client
    > ### Aliases: getManifest
    > 
    > ### ** Examples
    > 
    ...
    ooo Project: TARGET-AML
    --------------------
    oo Filtering results
    --------------------
    ooo By data.type
    ooo By workflow.type
    Error in eval(cols[[col]], .data, parent.frame()) : 
      object 'is_ffpe' not found
    Calls: GDCquery ... structure -> lapply -> FUN -> summarize -> eval -> eval
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        |                                                                            
        |================================================================      |  91%
        |                                                                            
        |================================================================      |  92%
        |                                                                            
        |=================================================================     |  92%
        |                                                                            
    ...
        6. │     └─base::lapply(pieces, .fun, ...)
        7. │       └─TCGAbiolinks:::FUN(X[[i]], ...)
        8. │         └─plyr::summarize(...)
        9. │           └─base::eval(cols[[col]], .data, parent.frame())
       10. │             └─base::eval(cols[[col]], .data, parent.frame())
       11. └─base::as.data.frame(.)
      
      [ FAIL 2 | WARN 4 | SKIP 0 | PASS 95 ]
      Error: Test failures
      Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘sesameData’
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘analysis.Rmd’ using rmarkdown
    ℹ Loading TCGAbiolinks
    Loading required package: MatrixGenerics
    Loading required package: matrixStats
    
    Attaching package: 'matrixStats'
    
    The following objects are masked from 'package:TCGAbiolinks':
    
    ...
    ooo Check if there are duplicated cases
    Warning: There are more than one file for the same case. Please verify query results. You can use the command View(getResults(query)) in rstudio
    ooo Check if there results for the query
    -------------------
    o Preparing output
    -------------------
    Downloading data for project TCGA-ACC
    GDCdownload will download 7 files. A total of 160.95 KB
    Downloading as: Sat_Sep_25_21_25_33_2021.tar.gz
    New names:
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 103.1Mb
      sub-directories of 1Mb or more:
        R      2.3Mb
        data   6.3Mb
        doc   94.2Mb
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
    TCGAvisualize_starburst: no visible global function definition for
    ...
    readExonQuantification: no visible binding for global variable ‘exon’
    readExonQuantification: no visible binding for global variable
      ‘coordinates’
    readGeneExpressionQuantification : <anonymous>: no visible binding for
      '<<-' assignment to ‘assay.list’
    readGeneExpressionQuantification: no visible binding for global
      variable ‘assay.list’
    Undefined global functions or variables:
      Tumor.purity assay.list barcode clinical coordinates exon is_ffpe
      rse_gene submitter_id value values
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘DT’
    'library' or 'require' call not declared from: ‘DT’
    ```

# TCGAutils

<details>

* Version: 1.12.0
* GitHub: https://github.com/waldronlab/TCGAutils
* Source code: https://github.com/cran/TCGAutils
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 217

Run `revdep_details(, "TCGAutils")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TCGAutils-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: makeSummarizedExperimentFromGISTIC
    > ### Title: Create a SummarizedExperiment from FireHose GISTIC
    > ### Aliases: makeSummarizedExperimentFromGISTIC
    > 
    > ### ** Examples
    > 
    > 
    > library(RTCGAToolbox)
    Error in library(RTCGAToolbox) : 
      there is no package called ‘RTCGAToolbox’
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
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
    Quitting from lines 41-48 (TCGAutils.Rmd) 
    Error: processing vignette 'TCGAutils.Rmd' failed with diagnostics:
    there is no package called 'RTCGAToolbox'
    --- failed re-building ‘TCGAutils.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘TCGAutils.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RTCGAToolbox’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘GenomicRanges:::.normarg_field’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RTCGAToolbox’
    ```

# TFEA.ChIP

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/TFEA.ChIP
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 159

Run `revdep_details(, "TFEA.ChIP")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Complete output:
      > BiocGenerics:::testPackage(pkgname = "TFEA.ChIP")
      
      Because of space limitations, TFEA.ChIPs internal database only includes ChIP-seq experiments from the ENCODE project. 
      To download the full ReMap database, as well as other ready-to-use databases, visit https://github.com/LauraPS1/TFEA.ChIP_downloads
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
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

* Version: 1.0.0
* GitHub: https://github.com/ubioinformat/TraRe
* Source code: https://github.com/cran/TraRe
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 91

Run `revdep_details(, "TraRe")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc       2.0Mb
        extdata   4.4Mb
    ```

# understandBPMN

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/understandBPMN
* Date/Publication: 2019-09-27 11:30:03 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "understandBPMN")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Uniquorn

<details>

* Version: 2.12.0
* GitHub: NA
* Source code: https://github.com/cran/Uniquorn
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 120

Run `revdep_details(, "Uniquorn")` for more info

</details>

## In both

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

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/ViSEAGO
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 158

Run `revdep_details(, "ViSEAGO")` for more info

</details>

## In both

*   checking whether package ‘ViSEAGO’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'listEnsembl(host = host, ': unused argument (host = host) 
      Warning: replacing previous import ‘data.table::set’ by ‘dendextend::set’ when loading ‘ViSEAGO’
    See ‘/scratch/henrik/R.utils/revdep/checks/ViSEAGO/new/ViSEAGO.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
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
      installed size is 17.1Mb
      sub-directories of 1Mb or more:
        doc       4.4Mb
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
      definition for ‘orca’
    Undefined global functions or variables:
      . ENTREZID ES EVIDENCE GO GO.ID GO.cluster IC Id N NES ONTOLOGY
      Significant_genes dev.off end genes_frequency leadingEdge log2err
      nMoreExtreme orca padj pathway png pval size start text
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "text")
      importFrom("stats", "end", "start")
    to your NAMESPACE file.
    ```

# wrProteo

<details>

* Version: 1.4.3
* GitHub: NA
* Source code: https://github.com/cran/wrProteo
* Date/Publication: 2021-07-13 09:30:02 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "wrProteo")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc       3.3Mb
        extdata   2.4Mb
    ```

