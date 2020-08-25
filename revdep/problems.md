# affxparser

<details>

* Version: 1.60.0
* Source code: https://github.com/cran/affxparser
* URL: https://github.com/HenrikBengtsson/affxparser
* BugReports: https://github.com/HenrikBengtsson/affxparser/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 4

Run `revdep_details(, "affxparser")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    ...
      Found ‘exit’, possibly from ‘exit’ (C)
        Objects: ‘fusion_sdk/util/Err.o’, ‘R_affx_clf_pgf_parser.o’
      Found ‘printf’, possibly from ‘printf’ (C)
        Object: ‘fusion_sdk/file/TsvFile/TsvFile.o’
      Found ‘putchar’, possibly from ‘putchar’ (C)
        Object: ‘fusion_sdk/file/TsvFile/TsvFile.o’
      Found ‘puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Object: ‘fusion_sdk/file/TsvFile/TsvFile.o’
      Found ‘rand’, possibly from ‘rand’ (C)
        Objects: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’,
          ‘fusion_sdk/util/Verbose.o’
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
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        libs   8.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘affy’ in Rd xrefs
    ```

# arc

<details>

* Version: 1.2
* Source code: https://github.com/cran/arc
* URL: https://github.com/kliegr/arc
* BugReports: https://github.com/kliegr/arc/issues
* Date/Publication: 2018-04-18 13:23:29 UTC
* Number of recursive dependencies: 8

Run `revdep_details(, "arc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qCBA’
    ```

# aroma.cn

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/aroma.cn
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.cn
* BugReports: https://github.com/HenrikBengtsson/aroma.cn/issues
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 24

Run `revdep_details(, "aroma.cn")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    ```

# aroma.core

<details>

* Version: 3.2.1
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GLAD', 'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘GLAD’ in Rd xrefs
    ```

# aroma.light

<details>

* Version: 3.18.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, https://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2020-04-27
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

* Version: 1.10.0
* Source code: https://github.com/cran/AUCell
* URL: http://scenic.aertslab.org
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 173

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
    Undefined global functions or variables:
      %>% cell tsne1 tsne2
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘SingleCellExperiment’ in Rd xrefs
    ```

# AWAPer

<details>

* Version: 0.1.3
* Source code: https://github.com/cran/AWAPer
* URL: https://github.com/peterson-tim-j/AWAPer
* BugReports: https://github.com/peterson-tim-j/AWAPer/issues
* Date/Publication: 2020-02-01 12:00:07 UTC
* Number of recursive dependencies: 13

Run `revdep_details(, "AWAPer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R.utils’
      All declared Imports should be used.
    ```

# BANDITS

<details>

* Version: 1.4.1
* Source code: https://github.com/cran/BANDITS
* URL: https://github.com/SimoneTiberi/BANDITS
* BugReports: https://github.com/SimoneTiberi/BANDITS/issues
* Date/Publication: 2020-07-16
* Number of recursive dependencies: 131

Run `revdep_details(, "BANDITS")` for more info

</details>

## In both

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
* Source code: https://github.com/cran/bedr
* Date/Publication: 2019-04-01 18:50:02 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "bedr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
        }
        else {
        }
        input.files <- Filter(function(x) {
            grepl("Rtmp", x)
        }, input.files)
        if (length(input.files) != 0 && all(input.files != "" && 
            deleteTmpDir == TRUE)) {
            file.remove(unlist(input.files))
        }
        return(output)
    }
    <bytecode: 0x4810d40>
    <environment: namespace:bedr>
     --- function search by body ---
    Function bedr in namespace bedr has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in input.files != "" && deleteTmpDir == TRUE : 
      'length(x) = 2 > 1' in coercion to 'logical(1)'
    Calls: bedr
    Execution halted
    ```

*   checking tests ...
    ```
    ...
          /usr/bin/bedtools
      SORTING
      VALIDATE REGIONS
       * Checking input type... PASS
         Input is in index format
       * Check if index is a string... PASS
       * Check index pattern... PASS
       * Check for missing values... PASS
       * Check for larger start position... PASS.
       * Check if zero based... PASS
        * Checking path for bedtools... PASS
          /usr/bin/bedtools
        * Checking path for tabix... FAIL
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 35 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: check in.region (@test.in.region.R#34) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      Placing tests in `inst/tests` is deprecated. Please use `tests/testthat` instead 
      Execution halted
    ```

# bigsnpr

<details>

* Version: 1.4.4
* Source code: https://github.com/cran/bigsnpr
* URL: https://privefl.github.io/bigsnpr
* BugReports: https://github.com/privefl/bigsnpr/issues
* Date/Publication: 2020-07-05 18:40:16 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "bigsnpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

# biomartr

<details>

* Version: 0.9.2
* Source code: https://github.com/cran/biomartr
* URL: https://docs.ropensci.org/biomartr, https://github.com/ropensci/biomartr
* BugReports: https://github.com/ropensci/biomartr/issues
* Date/Publication: 2020-01-10 23:00:06 UTC
* Number of recursive dependencies: 119

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

# biscuiteer

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/biscuiteer
* URL: https://github.com/trichelab/biscuiteer
* BugReports: https://github.com/trichelab/biscuiteer/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 195

Run `revdep_details(, "biscuiteer")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Extracting sample names from /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/biscuiteer/extdata/MCF7_Cunha_header_only.vcf.gz...
    /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/biscuiteer/extdata/MCF7_Cunha_chr11p15.bed.gz does not have a header. Using VCF file header information to help set column names.
    Assuming unmerged data. Checking now... ...The file might be alright. Double check if you're worried.
    /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/biscuiteer/extdata/MCF7_Cunha_chr11p15.bed.gz has 254147 indexed loci.
    /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/biscuiteer/extdata/MCF7_Cunha_chr11p15.bed.gz looks valid for import.
    Reading unmerged input from /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/biscuiteer/extdata/MCF7_Cunha_chr11p15.bed.gz...
    Excluding CpG sites with uniformly zero coverage...
    Loaded /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/biscuiteer/extdata/MCF7_Cunha_chr11p15.bed.gz. Creating bsseq object...
    > 
    >   cpg <- CpGindex(bisc)
    Computing hypermethylation indices...
    Loading HMM_CpG_islands.hg19...
    Loading H9state23unmeth.hg19...
    Computing hypomethylation indices...
    Loading PMDs.hg19.rda from biscuiteerData...
    Error in h(simpleError(msg, call)) : 
      error in evaluating the argument 'x' in selecting a method for function 'query': Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: CpGindex ... ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking whether package ‘biscuiteer’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BiocParallel::bpstart’ by ‘QDNAseq::bpstart’ when loading ‘biscuiteer’
    See ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/biscuiteer/new/biscuiteer.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘QDNAseq:::expectedVariance’
      See the note in ?`:::` about the use of this operator.
    ```

# bsseq

<details>

* Version: 1.24.4
* Source code: https://github.com/cran/bsseq
* URL: https://github.com/kasperdanielhansen/bsseq
* BugReports: https://github.com/kasperdanielhansen/bsseq/issues
* Date/Publication: 2020-06-29
* Number of recursive dependencies: 112

Run `revdep_details(, "bsseq")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bsseqData’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing object imported by a ':::' call: ‘DelayedArray:::.normarg_grid’
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘GenomicRanges:::.extract_groups_from_GenomicRanges’
      ‘GenomicRanges:::.get_circle_length’
      ‘GenomicRanges:::extraColumnSlotNames’ ‘HDF5Array:::.create_dir’
      ‘HDF5Array:::.replace_dir’ ‘HDF5Array:::.shorten_assay2h5_links’
      ‘IRanges:::.shift_ranges_in_groups_to_first_circle’
      ‘S4Vectors:::make_zero_col_DataFrame’ ‘S4Vectors:::new_DataFrame’
      ‘S4Vectors:::normarg_names’ ‘S4Vectors:::numeric2integer’
      ‘S4Vectors:::sapply_isNULL’ ‘data.table:::funique’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘bsseqData’ in Rd xrefs
    ```

# cellbaseR

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/cellbaseR
* URL: https://github.com/melsiddieg/cellbaseR
* Date/Publication: 2020-04-27
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

# circRNAprofiler

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/circRNAprofiler
* URL: https://github.com/Aufiero/circRNAprofiler
* BugReports: https://github.com/Aufiero/circRNAprofiler/issues
* Date/Publication: 2020-06-05
* Number of recursive dependencies: 228

Run `revdep_details(, "circRNAprofiler")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    Attaching package: ‘S4Vectors’
    
    The following object is masked from ‘package:base’:
    
        expand.grid
    
    
    Attaching package: ‘Biostrings’
    
    The following object is masked from ‘package:base’:
    
        strsplit
    
    Cannot connect to AnnotationHub server, using 'localHub=TRUE' instead
    using temporary cache /scratch/hb/RtmpyTYFCa/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: annotateRepeats ... <Anonymous> -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      trying URL 'https://attract.cnic.es/attract/static/ATtRACT.zip'
      downloaded 113 KB
      
      trying URL 'https://attract.cnic.es/attract/static/ATtRACT.zip'
      downloaded 113 KB
      
      trying URL 'https://attract.cnic.es/attract/static/ATtRACT.zip'
      downloaded 113 KB
      
      trying URL 'https://attract.cnic.es/attract/static/ATtRACT.zip'
      downloaded 113 KB
      
      trying URL 'https://attract.cnic.es/attract/static/ATtRACT.zip'
      downloaded 113 KB
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 255 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: annotateRepeats() generates the correct data structure (@test_annotateRepeats.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# CNEr

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/CNEr
* URL: https://github.com/ge11232002/CNEr
* BugReports: https://github.com/ge11232002/CNEr/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 156

Run `revdep_details(, "CNEr")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    ...
        Object: ‘ucsc/errabort.o’
      Found ‘exit’, possibly from ‘exit’ (C)
        Objects: ‘ucsc/errabort.o’, ‘ucsc/pipeline.o’
      Found ‘printf’, possibly from ‘printf’ (C)
        Objects: ‘ceScan.o’, ‘ucsc/pipeline.o’
      Found ‘puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Object: ‘ucsc/pipeline.o’
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘ucsc/obscure.o’
      Found ‘stderr’, possibly from ‘stderr’ (C)
        Objects: ‘ucsc/axt.o’, ‘ucsc/errabort.o’, ‘ucsc/obscure.o’,
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
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        extdata   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
      See the note in ?`:::` about the use of this operator.
    ```

# cometr

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/cometr
* URL: https://github.com/comet-ml/cometr
* BugReports: https://github.com/comet-ml/cometr/issues
* Date/Publication: 2020-08-13 17:40:03 UTC
* Number of recursive dependencies: 40

Run `revdep_details(, "cometr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# countyfloods

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/countyfloods
* Date/Publication: 2017-10-26 03:22:55 UTC
* Number of recursive dependencies: 93

Run `revdep_details(, "countyfloods")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# cTRAP

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/cTRAP
* URL: https://nuno-agostinho.github.io/cTRAP, https://github.com/nuno-agostinho/cTRAP
* BugReports: https://github.com/nuno-agostinho/cTRAP/issues
* Date/Publication: 2020-08-17
* Number of recursive dependencies: 119

Run `revdep_details(, "cTRAP")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# data.table

<details>

* Version: 1.13.0
* Source code: https://github.com/cran/data.table
* URL: http://r-datatable.com, https://Rdatatable.gitlab.io/data.table, https://github.com/Rdatatable/data.table
* BugReports: https://github.com/Rdatatable/data.table/issues
* Date/Publication: 2020-07-24 09:40:06 UTC
* Number of recursive dependencies: 31

Run `revdep_details(, "data.table")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      [1] nanotime
      attr(,"class")attr(,"package")
      [1] nanotime
      attr(,".S3Class")
      [1] integer64
      > y = c(n[1L:5L], nanotime(NA), n[7L:12L] + 100) 
      First 6 of 12 (type 'double'): 
      integer64
      [1] 1    2    3    4    5    <NA>
      attr(,"class")
      [1] nanotime
      attr(,"class")attr(,"package")
      [1] nanotime
      attr(,".S3Class")
      [1] integer64
      'is.NA' value mismatch: 1 in current 2 in target
      
      Thu Aug 20 13:27:36 2020  endian==little, sizeof(long double)==16, sizeof(pointer)==8, TZ==unset, Sys.timezone()=='America/Los_Angeles', Sys.getlocale()=='LC_CTYPE=en_US.UTF-8;LC_NUMERIC=C;LC_TIME=C;LC_COLLATE=C;LC_MONETARY=C;LC_MESSAGES=en_US.UTF-8;LC_PAPER=C;LC_NAME=C;LC_ADDRESS=C;LC_TELEPHONE=C;LC_MEASUREMENT=C;LC_IDENTIFICATION=C', l10n_info()=='MBCS=TRUE; UTF-8=TRUE; Latin-1=FALSE', getDTthreads()=='omp_get_num_procs()==32; R_DATATABLE_NUM_PROCS_PERCENT==unset (default 50); R_DATATABLE_NUM_THREADS==unset; R_DATATABLE_THROTTLE==unset (default 1024); omp_get_thread_limit()==2147483647; omp_get_max_threads()==1; OMP_THREAD_LIMIT==unset; OMP_NUM_THREADS==1; RestoreAfterFork==true; data.table is using 1 threads with throttle==1024. See ?setDTthreads.'
      Error in test.data.table() : 
        3 errors out of 9996. Search tests/tests.Rraw.bz2 for test numbers: 1997.14, 2127.26, 2127.27.
      Execution halted
    ```

# DatabaseConnector

<details>

* Version: 3.0.0
* Source code: https://github.com/cran/DatabaseConnector
* URL: https://ohdsi.github.io/DatabaseConnector, https://github.com/OHDSI/DatabaseConnector
* BugReports: https://github.com/OHDSI/DatabaseConnector/issues
* Date/Publication: 2020-06-06 05:20:03 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "DatabaseConnector")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DatabaseConnectorJars’
      All declared Imports should be used.
    ```

# datapackage.r

<details>

* Version: 1.3.1
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2020-05-06 22:10:09 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "datapackage.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# ddPCRclust

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/ddPCRclust
* URL: https://github.com/bgbrink/ddPCRclust
* BugReports: https://github.com/bgbrink/ddPCRclust/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 148

Run `revdep_details(, "ddPCRclust")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setClassUnion("matrixorGate", c("matrix", "polygonGate")) : 
      could not find function "setClassUnion"
    In addition: Warning message:
    replacing previous import ‘flowCore::plot’ by ‘graphics::plot’ when loading ‘flowDensity’ 
    Error: package or namespace load failed for ‘ddPCRclust’:
     unable to load R code in package ‘flowDensity’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setClassUnion("matrixorGate", c("matrix", "polygonGate")) : 
      could not find function "setClassUnion"
    Error: unable to load R code in package ‘flowDensity’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    ...
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking foreign function calls ... NOTE
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setClassUnion("matrixorGate", c("matrix", "polygonGate")) : 
      could not find function "setClassUnion"
    Error: unable to load R code in package ‘flowDensity’
    Execution halted
    ```

*   checking Rd \usage sections ... NOTE
    ```
    ...
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# DeepBlueR

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 155

Run `revdep_details(, "DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

<details>

* Version: 1.40.0
* Source code: https://github.com/cran/DEGraph
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 40

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

*   checking R code for possible problems ... NOTE
    ```
    ...
    twoSampleFromGraph: no visible global function definition for ‘rnorm’
    writeAdjacencyMatrix2KGML: no visible binding for global variable
      ‘Arguments’
    writeAdjacencyMatrix2KGML: no visible global function definition for
      ‘pushState’
    writeAdjacencyMatrix2KGML: no visible global function definition for
      ‘popState’
    writeAdjacencyMatrix2KGML : <anonymous>: no visible global function
      definition for ‘na.omit’
    Undefined global functions or variables:
      Arguments ProgressBar as enter exit heat.colors increase na.omit
      phyper pnorm popState pushState quantile reset rnorm str
      translateNCI2GeneID var
    Consider adding
      importFrom("grDevices", "heat.colors")
      importFrom("methods", "as")
      importFrom("stats", "na.omit", "phyper", "pnorm", "quantile", "rnorm",
                 "var")
      importFrom("utils", "str")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# DEWSeq

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/DEWSeq
* URL: https://github.com/EMBL-Hentze-group/DEWSeq/
* BugReports: https://github.com/EMBL-Hentze-group/DEWSeq/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 108

Run `revdep_details(, "DEWSeq")` for more info

</details>

## In both

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

# dplR

<details>

* Version: 1.7.1
* Source code: https://github.com/cran/dplR
* URL: https://github.com/AndyBunn/dplR
* Date/Publication: 2020-03-19 13:20:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "dplR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gmp’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘gmp’ in Rd xrefs
    ```

# DropletUtils

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/DropletUtils
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 77

Run `revdep_details(, "DropletUtils")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        libs   8.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DupChecker

<details>

* Version: 1.25.0
* Source code: https://github.com/cran/DupChecker
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 16

Run `revdep_details(, "DupChecker")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘DupChecker-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: arrayExpressDownload
    > ### Title: arrayExpressDownload
    > ### Aliases: arrayExpressDownload
    > 
    > ### ** Examples
    > 
    > #download three datasets from ArrayExpress website
    > rootDir<-paste0(dirname(tempdir()), "/DupChecker")
    > dir.create(rootDir, showWarnings = FALSE)
    > datatable<-arrayExpressDownload(datasets = c("E-MEXP-3872"), targetDir=rootDir, filePattern="cel$")
    Dataset E-MEXP-3872 is downloading to /scratch/hb/DupChecker/E-MEXP-3872 ...
    Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : 
      line 1 did not have 11 elements
    Calls: arrayExpressDownload -> getFtpFilenames -> read.table -> scan
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    arrayExpressDownload: no visible global function definition for
      ‘download.file’
    geoDownload: no visible global function definition for ‘download.file’
    geoDownload: no visible global function definition for ‘untar’
    getFtpFilenames: no visible global function definition for ‘read.table’
    Undefined global functions or variables:
      download.file read.table untar
    Consider adding
      importFrom("utils", "download.file", "read.table", "untar")
    to your NAMESPACE file.
    ```

# Eagle

<details>

* Version: 2.3
* Source code: https://github.com/cran/Eagle
* URL: http://eagle.r-forge.r-project.org
* Date/Publication: 2020-07-22 06:32:06 UTC
* Number of recursive dependencies: 75

Run `revdep_details(, "Eagle")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        libs   6.7Mb
    ```

# eegc

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/eegc
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 159

Run `revdep_details(, "eegc")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'barplotEnrich.Rd':
      ‘[DOSE]{barplot.enrichResult}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    grnPlot: no visible global function definition for ‘title’
    grnPlot: no visible global function definition for ‘legend’
    markerScatter: no visible global function definition for
      ‘colorRampPalette’
    markerScatter: no visible global function definition for ‘points’
    markerScatter: no visible global function definition for ‘lm’
    markerScatter: no visible global function definition for ‘abline’
    markerScatter: no visible global function definition for ‘text’
    markerScatter: no visible global function definition for ‘legend’
    Undefined global functions or variables:
      abline adjustcolor axis colorRampPalette control density dev.copy2pdf
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

* Version: 2.12.0
* Source code: https://github.com/cran/ELMER
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 223

Run `revdep_details(, "ELMER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 31.9Mb
      sub-directories of 1Mb or more:
        doc  31.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    addMutCol: no visible binding for global variable 'Hugo_Symbol'
    calcDistNearestTSS: no visible binding for global variable
      'DistanceTSS'
    getRegionNearGenes : f: no visible binding for global variable 'Side'
    getRegionNearGenes: no visible binding for global variable 'ID'
    getTFtargets: no visible binding for global variable 'TF'
    heatmapGene: no visible global function definition for 'sesameDataGet'
    Undefined global functions or variables:
      DistanceTSS Hugo_Symbol ID Side TF sesameDataGet
    ```

# enrichTF

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/enrichTF
* URL: https://github.com/wzthu/enrichTF
* BugReports: https://github.com/wzthu/enrichTF/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 202

Run `revdep_details(, "enrichTF")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning in options(stringsAsFactors = TRUE) :
      'options(stringsAsFactors = TRUE)' is deprecated and will be disabled
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    processing,TissueOpennessConserve: no visible binding for global
      variable ‘X2’
    Undefined global functions or variables:
      X2
    ```

# esATAC

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/esATAC
* URL: https://github.com/wzthu/esATAC
* BugReports: https://github.com/wzthu/esATAC/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 190

Run `revdep_details(, "esATAC")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
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

*   checking R code for possible problems ... NOTE
    ```
    processing,BedToBigWig: no visible binding for global variable ‘score’
    Undefined global functions or variables:
      score
    ```

# eudysbiome

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/eudysbiome
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 26

Run `revdep_details(, "eudysbiome")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    assignTax: no visible global function definition for ‘unzip’
    assignTax: no visible global function definition for ‘bunzip2’
    contingencyTest: no visible global function definition for ‘combn’
    contingencyTest : <anonymous>: no visible global function definition
      for ‘chisq.test’
    microAnnotate: no visible global function definition for ‘data’
    microAnnotate: no visible binding for global variable ‘harmGenera’
    tableSpecies: no visible global function definition for ‘read.table’
    Undefined global functions or variables:
      abline adjustcolor axis bunzip2 chisq.test colors combn data
      dev.flush dev.hold download.file harmGenera mtext par points
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

# FGNet

<details>

* Version: 3.22.1
* Source code: https://github.com/cran/FGNet
* URL: http://www.cicancer.org
* Date/Publication: 2020-07-24
* Number of recursive dependencies: 116

Run `revdep_details(, "FGNet")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘KEGG.db’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    tabNetwork_common_fill: no visible global function definition for
      ‘gSignalConnect’
    tabNetwork_fill: no visible global function definition for
      ‘gtkLabelNew’
    tabOther_fill: no visible binding for global variable ‘GtkShadowType’
    tabOther_fill : <anonymous>: no visible binding for global variable
      ‘GtkShadowType’
    tabPlotNetwork_fill: no visible binding for global variable
      ‘GtkShadowType’
    tabSubNetwork_fill: no visible binding for global variable
      ‘GtkShadowType’
    tabTopGo_fill: no visible binding for global variable ‘GtkShadowType’
    tabTopGo_fill: no visible binding for global variable ‘evidenceScroll’
    viewFile: no visible binding for global variable ‘rawResults’
    Undefined global functions or variables:
      GO.db GOTERM GenTable GtkShadowType annFUN.gene2GO columns
      download_KEGGfile esset.grp evidenceScroll exprs gSignalConnect gage
      genesInTerm getAllAnnotationCategoryNames getIdTypes getSigGroups
      getURL groupGOTerms gtkEntryNew gtkFrameSetShadowType gtkLabelNew
      gtkVBox pangoFontDescriptionFromString parse_XMLfile plot_profile
      postForm rawResults reactomePATHID2NAME readList sigGenes url.exists
    ```

# fitteR

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/fitteR
* Date/Publication: 2017-12-11 14:27:45 UTC
* Number of recursive dependencies: 203

Run `revdep_details(, "fitteR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
                }
                colnames(AllStarts) <- args
                fits <- dofit(X, AllStarts, Package, dst, constraints = constraints)
                rpt <- fit2report(x = X, fits, Package, substring(dst, 
                    2), meta)
                REPORT0[[r0cnt]] <- rpt
                r0cnt <- r0cnt + 1
            }
        }
        REPORT[["fitting"]] <- REPORT0
        return(REPORT)
    }
    <bytecode: 0x4899658>
    <environment: namespace:fitteR>
     --- function search by body ---
    Function fitter in namespace fitteR has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in !is.na(posList[[Package]]) && !(dst %in% posList[[Package]]) : 
      'length(x) = 2 > 1' in coercion to 'logical(1)'
    Calls: fitter
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ExtDist’
    ```

# FRASER

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/FRASER
* URL: https://github.com/gagneurlab/FRASER
* Date/Publication: 2020-06-08
* Number of recursive dependencies: 145

Run `revdep_details(, "FRASER")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotateRangesWithTxDb: no visible binding for global variable
      ‘uniqueID’
    extractChromosomes: no visible binding for global variable ‘mapped’
    getAnnotationFeature: no visible binding for global variable
      ‘first_feature’
    getAnnotationFeature: no visible binding for global variable
      ‘other_features’
    Undefined global functions or variables:
      first_feature mapped other_features uniqueID
    ```

# GCSscore

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/GCSscore
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 112

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

# gofCopula

<details>

* Version: 0.3-3
* Source code: https://github.com/cran/gofCopula
* Date/Publication: 2020-06-14 14:30:03 UTC
* Number of recursive dependencies: 52

Run `revdep_details(, "gofCopula")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      - 27 * pl23t) + t2 * (1 - 3 * b + b2) * ((pu1t^2) + 18 * (pu2t^2) -
      16 * pl12t + (pu3t^2) + 2 * pl13t - 16 * pl23t) + 2 * t4 * ((pu1t^2)
      + 4 * (pu2t^2) - 7 * pl12t + (pu3t^2) + 2 * pl13t - 7 * pl23t) +
      theta * (-1 + 7 * b - 6 * b2 + b3) * (7 * (pu2t^2) - 3 * pl12t - 3 *
      pl23t)) * (ll2^2) + 2 * theta * (pu1t^2) * lt - : C stack usage
      7976868 is too close to the limit
    .gumb.S.123: possible error in 4 * t3 * (pu1t^2) * lt + 2 * theta *
      (pu2t^2) * lt - 4 * t3 * (pu2t^2) * lt + 4 * theta * pl12t * lt - 8 *
      t3 * pl12t * lt - 14 * theta * (pu1t^2) * b * lt + 4 * t3 * (pu1t^2)
      * b * lt - 14 * theta * (pu2t^2) * b * lt + 4 * t3 * (pu2t^2) * b *
      lt - 28 * theta * pl12t * b * lt + 8 * t3 * pl12t * b * lt + 12 *
      theta * (pu1t^2) * b2 * lt + 12 * theta * (pu2t^2) * b2 * lt + 24 *
      theta * pl12t * b2 * lt - 2 * theta * (pu1t^2) * b3 * lt - 2 * theta
      * (pu2t^2) * b3 * lt - 4 * theta * pl12t * b3 * lt + : C stack usage
      7976868 is too close to the limit
    .gumb.S.123: possible error in 2 * theta * (pu3t^2) * lt - 4 * t3 *
      (pu3t^2) * lt - 14 * theta * b * (pu3t^2) * lt + 4 * t3 * b *
      (pu3t^2) * lt + 12 * theta * b2 * (pu3t^2) * lt - 2 * theta * b3 *
      (pu3t^2) * lt: C stack usage 7976868 is too close to the limit
    .gumb.S.123: Error while checking: C stack usage 7971524 is too close
      to the limit
    ```

# GWASinspector

<details>

* Version: 1.4.8
* Source code: https://github.com/cran/GWASinspector
* URL: http://GWASinspector.com
* Date/Publication: 2020-07-28 09:42:18 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "GWASinspector")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘xlsx’
    ```

# hashFunction

<details>

* Version: 1.0
* Source code: https://github.com/cran/hashFunction
* Date/Publication: 2013-03-25 14:21:08
* Number of recursive dependencies: 4

Run `revdep_details(, "hashFunction")` for more info

</details>

## In both

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘utils’
    ```

# hoardeR

<details>

* Version: 0.9.4-2
* Source code: https://github.com/cran/hoardeR
* Date/Publication: 2019-02-12 08:23:21 UTC
* Number of recursive dependencies: 64

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

*   checking R code for possible problems ... NOTE
    ```
    requiprobable: no visible global function definition for ‘extract’
    requiprobable : make.tree: no visible global function definition for
      ‘extract’
    requiprobable : make.tree: no visible global function definition for
      ‘runif’
    rgenetree: no visible global function definition for ‘dbinom’
    rgenetree: no visible global function definition for ‘dnbinom’
    rgenetree: no visible global function definition for ‘runif’
    rgenetree: no visible global function definition for ‘rbinom’
    rgenetree: no visible global function definition for ‘rnbinom’
    Undefined global functions or variables:
      dbinom dnbinom extract rbinom rnbinom runif
    Consider adding
      importFrom("stats", "dbinom", "dnbinom", "rbinom", "rnbinom", "runif")
    to your NAMESPACE file.
    ```

# KnowSeq

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/KnowSeq
* Date/Publication: 2020-07-29
* Number of recursive dependencies: 166

Run `revdep_details(, "KnowSeq")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    RNAseqQA : outlierBarPlot: no visible binding for global variable ‘y’
    RNAseqQA: no visible binding for global variable ‘Var1’
    RNAseqQA: no visible binding for global variable ‘Var2’
    RNAseqQA: no visible binding for global variable ‘value’
    RNAseqQA: no visible binding for global variable ‘Expression’
    RNAseqQA: no visible binding for global variable ‘Samples’
    dataPlot: no visible binding for global variable ‘Classes’
    dataPlot: no visible binding for global variable ‘Value’
    featureSelection: no visible binding for global variable ‘target’
    featureSelection: no visible binding for global variable
      ‘association_score’
    knn_trn: no visible binding for global variable ‘sd’
    knowseqReport: no visible binding for global variable ‘target’
    rf_trn: no visible binding for global variable ‘sd’
    svm_trn: no visible binding for global variable ‘sd’
    Undefined global functions or variables:
      Classes Expression Samples Value Var1 Var2 association_score evidence
      sd target value x y
    Consider adding
      importFrom("stats", "sd")
    to your NAMESPACE file.
    ```

# link2GI

<details>

* Version: 0.4.3
* Source code: https://github.com/cran/link2GI
* URL: https://github.com/r-spatial/link2GI/, https://r-spatial.github.io/link2GI/
* BugReports: https://github.com/r-spatial/link2GI/issues/
* Date/Publication: 2020-02-28 23:50:02 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "link2GI")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# MACSQuantifyR

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/MACSQuantifyR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 84

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

# methylKit

<details>

* Version: 1.14.2
* Source code: https://github.com/cran/methylKit
* URL: http://code.google.com/p/methylkit/
* Date/Publication: 2020-05-20
* Number of recursive dependencies: 115

Run `revdep_details(, "methylKit")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘KernSmooth’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .CpG.dinuc.unify: no visible binding for global variable ‘coverage.x’
    .CpG.dinuc.unify: no visible binding for global variable ‘coverage.y’
    .CpG.dinuc.unify: no visible binding for global variable ‘numCs.x’
    .CpG.dinuc.unify: no visible binding for global variable ‘numCs.y’
    .CpG.dinuc.unify: no visible binding for global variable ‘numTs.x’
    .CpG.dinuc.unify: no visible binding for global variable ‘numTs.y’
    .diffMethPerChr: no visible binding for global variable ‘type’
    .diffMethPerChr: no visible binding for global variable ‘meth.diff’
    .diffMethPerChr: no visible global function definition for ‘.’
    .diffMethPerChr: no visible binding for global variable ‘.N’
    reconstruct,ANY-methylBaseDB : reconstr: no visible global function
      definition for ‘read.delim’
    Undefined global functions or variables:
      . .N coverage.x coverage.y meth.diff numCs.x numCs.y numTs.x numTs.y
      read.delim type
    Consider adding
      importFrom("utils", "read.delim")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# msgbsR

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/msgbsR
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 163

Run `revdep_details(, "msgbsR")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setClass("CountDataSet", contains = "eSet", representation = representation(fitInfo = "environment",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘DESeq’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                   old_size new_size compress
      ratdata.rda     318Kb    126Kb       xz
      ratdata2.rda    287Kb    116Kb       xz
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'utils'
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setClass("CountDataSet", contains = "eSet", representation = representation(fitInfo = "environment",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘DESeq’
    Execution halted
    ```

# MSIseq

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/MSIseq
* Date/Publication: 2015-06-15 16:26:10
* Number of recursive dependencies: 9

Run `revdep_details(, "MSIseq")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    MSIseq.classify: no visible global function definition for ‘predict’
    Undefined global functions or variables:
      predict
    Consider adding
      importFrom("stats", "predict")
    to your NAMESPACE file.
    ```

# muscData

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/muscData
* URL: https://github.com/HelenaLC/muscData
* BugReports: https://github.com/HelenaLC/muscData/issues
* Date/Publication: 2020-05-07
* Number of recursive dependencies: 241

Run `revdep_details(, "muscData")` for more info

</details>

## In both

*   checking whether package ‘muscData’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/muscData/new/muscData.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
* installing *source* package ‘muscData’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Cannot connect to ExperimentHub server, using 'localHub=TRUE' instead
using temporary cache /scratch/hb/RtmpZgIIyN/BiocFileCache
Error: package or namespace load failed for ‘muscData’:
 .onLoad failed in loadNamespace() for 'muscData', details:
  call: h(simpleError(msg, call))
  error: error in evaluating the argument 'x' in selecting a method for function 'query': Invalid Cache: sqlite file
  Hub has not been added to cache
  Run again with 'localHub=FALSE'
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/muscData/new/muscData.Rcheck/muscData’

```
### CRAN

```
* installing *source* package ‘muscData’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Cannot connect to ExperimentHub server, using 'localHub=TRUE' instead
using temporary cache /scratch/hb/Rtmp7pIcaR/BiocFileCache
Error: package or namespace load failed for ‘muscData’:
 .onLoad failed in loadNamespace() for 'muscData', details:
  call: h(simpleError(msg, call))
  error: error in evaluating the argument 'x' in selecting a method for function 'query': Invalid Cache: sqlite file
  Hub has not been added to cache
  Run again with 'localHub=FALSE'
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/muscData/old/muscData.Rcheck/muscData’

```
# nc

<details>

* Version: 2020.8.6
* Source code: https://github.com/cran/nc
* URL: https://github.com/tdhock/nc
* BugReports: https://github.com/tdhock/nc/issues
* Date/Publication: 2020-08-10 17:10:17 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "nc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘re2r’
    ```

# netboost

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/netboost
* URL: https://bioconductor.org/packages/release/bioc/html/netboost.html
* BugReports: https://github.com/PascalSchlosser/netboost/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 101

Run `revdep_details(, "netboost")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in colors() : could not find function "colors"
    Error: package or namespace load failed for ‘netboost’:
     unable to load R code in package ‘WGCNA’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in colors() : could not find function "colors"
    Error: unable to load R code in package ‘WGCNA’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in colors() : could not find function "colors"
    Error: unable to load R code in package ‘WGCNA’
    Execution halted
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# oce

<details>

* Version: 1.2-0
* Source code: https://github.com/cran/oce
* URL: https://dankelley.github.io/oce
* BugReports: https://github.com/dankelley/oce/issues
* Date/Publication: 2020-02-21 17:40:02 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "oce")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        R      2.3Mb
        help   2.6Mb
        libs   3.6Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# openCyto

<details>

* Version: 2.0.0
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 115

Run `revdep_details(, "openCyto")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘CytoML’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
      .github
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
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
    ...
    Undefined global functions or variables:
      Subset abline as callNextMethod collapseDataForGating cov cov.wt
      cutree density dist dnorm ellipsoidGate embed exprs exprs<- extends
      filter filterList filters flowSet fsApply gating_args gating_method
      hclust hist is isMultiPops kmeans legend lines median na.omit new par
      parameters<- parent points polygonGate pop predict preprocessing_args
      preprocessing_method pt qchisq qf quad_gate_tmix quantile rainbow
      rectangleGate sd selectMethod smooth.spline text uniroot var
      weighted.mean
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "hist", "legend", "lines", "par",
                 "points", "text")
      importFrom("methods", "as", "callNextMethod", "extends", "is", "new",
                 "selectMethod")
      importFrom("stats", "cov", "cov.wt", "cutree", "density", "dist",
                 "dnorm", "embed", "filter", "hclust", "kmeans", "median",
                 "na.omit", "predict", "pt", "qchisq", "qf", "quantile",
                 "sd", "smooth.spline", "uniroot", "var", "weighted.mean")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘gridExtra’
    ```

# paxtoolsr

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/paxtoolsr
* URL: https://github.com/BioPAX/paxtoolsr
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 142

Run `revdep_details(, "paxtoolsr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    java.net.UnknownHostException: www.biopax.org
    	at java.net.InetAddress.getAllByName0(InetAddress.java:1281)
    	at java.net.InetAddress.getAllByName(InetAddress.java:1193)
    	at java.net.InetAddress.getAllByName(InetAddress.java:1127)
    	at org.apache.http.impl.conn.SystemDefaultDnsResolver.resolve(SystemDefaultDnsResolver.java:44)
    	at org.apache.http.impl.conn.HttpClientConnectionOperator.connect(HttpClientConnectionOperator.java:102)
    	at org.apache.http.impl.conn.PoolingHttpClientConnectionManager.connect(PoolingHttpClientConnectionManager.java:314)
    	at org.apache.http.impl.execchain.MainClientExec.establishRoute(MainClientExec.java:357)
    	at org.apache.http.impl.execchain.MainClientExec.execute(MainClientExec.java:218)
    	at org.apache.http.impl.execchain.ProtocolExec.execute(ProtocolExec.java:194)
    	at org.apache.http.impl.execchain.RetryExec.execute(RetryExec.java:85)
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
    ...
      	at org.biopax.paxtools.client.BiopaxValidatorClient.validate(BiopaxValidatorClient.java:175)
      	at org.biopax.paxtools.PaxtoolsMain.validate(PaxtoolsMain.java:310)
      Start tag expected, '<' not found
      ── 1. Error: validate (@test_paxtools.R#41)  ───────────────────────────────────
      1: Start tag expected, '<' not found
      Backtrace:
      
      2020-08-20 14:39:58,603 3020 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - Elements in the result model: 240
      SBGN-PD Layout is running...
      success ratio: 1.0
      enhanced ratio: 1.0
      Total execution time: 49 miliseconds.
      2020-08-20 14:40:00,417 4834 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSifnx: not blacklisting ubiquitous molecules (no blacklist.txt found)
      2020-08-20 14:40:01,046 5463 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSif: not blacklisting ubiquitous molecules (no blacklist.txt found)
      2020-08-20 14:40:01,588 6005 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSif: not blacklisting ubiquitous molecules (no blacklist.txt found)
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 57 | SKIPPED: 3 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: validate (@test_paxtools.R#41) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.8Mb
      sub-directories of 1Mb or more:
        java  19.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    splitSifnxByPathway: no visible global function definition for
      ‘%dopar%’
    Undefined global functions or variables:
      %dopar%
    ```

# PGA

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/PGA
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 135

Run `revdep_details(, "PGA")` for more info

</details>

## In both

*   checking whether package ‘PGA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/PGA/new/PGA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PGA’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: objects ‘key2’, ‘set2key’, ‘set2keyv’ are not exported by 'namespace:data.table'
Execution halted
ERROR: lazy loading failed for package ‘PGA’
* removing ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/PGA/new/PGA.Rcheck/PGA’

```
### CRAN

```
* installing *source* package ‘PGA’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: objects ‘key2’, ‘set2key’, ‘set2keyv’ are not exported by 'namespace:data.table'
Execution halted
ERROR: lazy loading failed for package ‘PGA’
* removing ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/PGA/old/PGA.Rcheck/PGA’

```
# PopGenReport

<details>

* Version: 3.0.4
* Source code: https://github.com/cran/PopGenReport
* URL: https://github.com/green-striped-gecko/PopGenReport
* Date/Publication: 2019-02-04 12:13:23 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "PopGenReport")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# primirTSS

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/primirTSS
* URL: https://github.com/ipumin/primirTSS
* BugReports: http://github.com/ipumin/primirTSS/issues
* Date/Publication: 2020-06-09
* Number of recursive dependencies: 177

Run `revdep_details(, "primirTSS")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'magrittr'
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_primiRNA_track: no visible binding for global variable
      ‘symbol_name’
    plot_primiRNA_track: no visible binding for global variable
      ‘stem_loop_p1’
    plot_primiRNA_track: no visible binding for global variable
      ‘stem_loop_p2’
    plot_primiRNA_track: no visible binding for global variable ‘gene_id’
    plot_primiRNA_track: no visible binding for global variable ‘gene_p1’
    plot_primiRNA_track: no visible binding for global variable ‘gene_p2’
    plot_primiRNA_track: no visible binding for global variable ‘tss_p1’
    plot_primiRNA_track: no visible binding for global variable ‘tss_p2’
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

# Prostar

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 282

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

# psichomics

<details>

* Version: 1.14.2
* Source code: https://github.com/cran/psichomics
* URL: https://nuno-agostinho.github.io/psichomics/, https://github.com/nuno-agostinho/psichomics/
* BugReports: https://github.com/nuno-agostinho/psichomics/issues
* Date/Publication: 2020-08-13
* Number of recursive dependencies: 241

Run `revdep_details(, "psichomics")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      ALT3
      
      ALT5
      
      COMBI
      
      EXSK
      
      IR
      
      MERGE3m
      
      MIC
      
      MULTI
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 1439 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 1 ]
      1. Failure: Query Ensembl API by event (@testGeneInfo.R#23) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    renderBoxplot: no visible binding for global variable ‘value’
    renderBoxplot: no visible binding for global variable ‘variable’
    Undefined global functions or variables:
      value variable
    ```

# PubBias

<details>

* Version: 1.0
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

*   checking R code for possible problems ... NOTE
    ```
    ChisqTest_expect: no visible global function definition for ‘pchisq’
    plot_chase_observed_expected: no visible global function definition for
      ‘meta.MH’
    plot_chase_observed_expected: no visible global function definition for
      ‘txtProgressBar’
    plot_chase_observed_expected: no visible global function definition for
      ‘setTxtProgressBar’
    test.one.treated: no visible global function definition for
      ‘fisher.test’
    test_one: no visible global function definition for ‘rbinom’
    test_one: no visible global function definition for ‘fisher.test’
    Undefined global functions or variables:
      fisher.test meta.MH pchisq rbinom setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("stats", "fisher.test", "pchisq", "rbinom")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# QDNAseq

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 70

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'QDNAseq.hg19', 'QDNAseq.mm10'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# RcisTarget

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/RcisTarget
* URL: http://scenic.aertslab.org
* BugReports: https://github.com/aertslab/RcisTarget/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 116

Run `revdep_details(, "RcisTarget")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    +            motifAnnot=motifAnnotation)
    > 
    > ##################################################
    > 
    > ##################################################
    > # (This step: Step 3)
    > # Identify the genes that have the motif significantly enriched
    > # (i.e. genes from the gene set in the top of the ranking)
    > par(mfrow=c(1,2))
    > motifEnrichmentTable_wGenes <- addSignificantGenes(motifEnrichmentTable,
    +                                        genesFormat="geneList",
    +                                        plotCurve=TRUE,
    +                                        geneSets=geneLists,
    +                                        rankings=motifRankings,
    +                                        method="aprox")
    Warning in .addSignificantGenes(resultsTable = resultsTable, geneSets = geneSets,  :
      The rakings provided only include a subset of genes/regions included in the whole database.
    Error in .getSignificantGenes(geneSet = geneSet, rankings = rankings,  : 
      Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
    Calls: addSignificantGenes ... .addSignificantGenes -> lapply -> FUN -> .getSignificantGenes
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      > library(testthat)
      > library(RcisTarget)
      > 
      > test_check("RcisTarget")
      ── 1. Error: RcisTarget workflow tests (@test_RcisTarget.R#258)  ───────────────
      Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
      Backtrace:
       1. RcisTarget:::test_Workflow()
       2. RcisTarget:::.check_addSignificantGenes(...)
       4. RcisTarget::addSignificantGenes(...)
       5. RcisTarget:::.addSignificantGenes(...)
       6. base::lapply(...)
       7. RcisTarget:::FUN(X[[i]], ...)
       8. RcisTarget:::.getSignificantGenes(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 45 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: RcisTarget workflow tests (@test_RcisTarget.R#258) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG', 'zoo'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported object: ‘arrow::parquet_file_reader’
    ```

# Rcwl

<details>

* Version: 1.4.8
* Source code: https://github.com/cran/Rcwl
* Date/Publication: 2020-07-14
* Number of recursive dependencies: 108

Run `revdep_details(, "Rcwl")` for more info

</details>

## In both

*   checking whether package ‘Rcwl’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/Rcwl/new/Rcwl.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
* installing *source* package ‘Rcwl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
which: no cwltool in (/wynton/home/cbi/hb/bin:/wynton/home/cbi/shared/software/CBI/JAGS-4.3.0/bin:/wynton/home/cbi/shared/software/CBI/gsl-2.6/bin:/wynton/home/cbi/shared/software/CBI/geos-3.8.1/bin:/wynton/home/cbi/shared/software/CBI/gdal-2.4.4/bin:/wynton/home/cbi/shared/software/CBI-testing/wynton-tools/bin:/wynton/home/cbi/shared/software/CBI/R-4.0.2/bin:/usr/lib64/openmpi/bin:/opt/rh/devtoolset-8/root/usr/bin:/wynton/home/cbi/shared/software/CBI/qtop-0.9.20161222:/wynton/home/cbi/shared/software/CBI/shellcheck-0.7.1:/wynton/home/cbi/shared/software/CBI/git-flow-1.12.3/bin:/wynton/home/cbi/shared/software/CBI/htop-2.2.0/bin:/wynton/home/cbi/shared/software/CBI/emacs-26.3/bin:/wynton/home/cbi/shared/software/CBI/fzf-0.22.0/bin:/wynton/home/cbi/shared/software/CBI/bat-0.15.4:/wynton/home/cbi/shared/software/CBI/byobu-5.133/bin:/wynton/home/cbi/shared/software/CBI/tmux-2.8/bin:/wynton/home/cbi/shared/software/CBI/R-3.6.3/bin:JAGS-4.3.0/bin:/wynton/home/cbi/hb/apps/local/bin:/wynton/home/cbi/hb/.local/bin:/opt/sge/bin:/opt/sge/bin/lx-amd64:/wynton/home/cbi/hb/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/wynton/home/cbi/shared/software/CBI/fzf-0.21.1/bin)
Warning in system("which cwltool", intern = TRUE) :
  running command 'which cwltool' had status 1
Error: package or namespace load failed for ‘Rcwl’:
 .onLoad failed in loadNamespace() for 'Rcwl', details:
  call: fun(libname, pkgname)
  error: cwltool is not found, Please install cwltool first!
https://github.com/common-workflow-language/cwltool#install
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/Rcwl/new/Rcwl.Rcheck/Rcwl’

```
### CRAN

```
* installing *source* package ‘Rcwl’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
which: no cwltool in (/wynton/home/cbi/hb/bin:/wynton/home/cbi/shared/software/CBI/JAGS-4.3.0/bin:/wynton/home/cbi/shared/software/CBI/gsl-2.6/bin:/wynton/home/cbi/shared/software/CBI/geos-3.8.1/bin:/wynton/home/cbi/shared/software/CBI/gdal-2.4.4/bin:/wynton/home/cbi/shared/software/CBI-testing/wynton-tools/bin:/wynton/home/cbi/shared/software/CBI/R-4.0.2/bin:/usr/lib64/openmpi/bin:/opt/rh/devtoolset-8/root/usr/bin:/wynton/home/cbi/shared/software/CBI/qtop-0.9.20161222:/wynton/home/cbi/shared/software/CBI/shellcheck-0.7.1:/wynton/home/cbi/shared/software/CBI/git-flow-1.12.3/bin:/wynton/home/cbi/shared/software/CBI/htop-2.2.0/bin:/wynton/home/cbi/shared/software/CBI/emacs-26.3/bin:/wynton/home/cbi/shared/software/CBI/fzf-0.22.0/bin:/wynton/home/cbi/shared/software/CBI/bat-0.15.4:/wynton/home/cbi/shared/software/CBI/byobu-5.133/bin:/wynton/home/cbi/shared/software/CBI/tmux-2.8/bin:/wynton/home/cbi/shared/software/CBI/R-3.6.3/bin:JAGS-4.3.0/bin:/wynton/home/cbi/hb/apps/local/bin:/wynton/home/cbi/hb/.local/bin:/opt/sge/bin:/opt/sge/bin/lx-amd64:/wynton/home/cbi/hb/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/wynton/home/cbi/shared/software/CBI/fzf-0.21.1/bin)
Warning in system("which cwltool", intern = TRUE) :
  running command 'which cwltool' had status 1
Error: package or namespace load failed for ‘Rcwl’:
 .onLoad failed in loadNamespace() for 'Rcwl', details:
  call: fun(libname, pkgname)
  error: cwltool is not found, Please install cwltool first!
https://github.com/common-workflow-language/cwltool#install
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/Rcwl/old/Rcwl.Rcheck/Rcwl’

```
# RCy3

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/RCy3
* URL: https://github.com/cytoscape/RCy3
* BugReports: https://github.com/cytoscape/RCy3/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 39

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

*   checking R code for possible problems ... NOTE
    ```
    createNetworkFromDataFrames: no visible binding for global variable
      ‘SUID’
    Undefined global functions or variables:
      SUID
    ```

# rdwd

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/rdwd
* URL: https://github.com/brry/rdwd
* BugReports: https://github.com/brry/rdwd/issues
* Date/Publication: 2020-08-02 01:10:02 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "rdwd")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘OSMscale’
    ```

# rehh

<details>

* Version: 3.1.2
* Source code: https://github.com/cran/rehh
* URL: https://CRAN.R-project.org/package=rehh, https://gitlab.com/oneoverx/rehh
* BugReports: https://gitlab.com/oneoverx/rehh/issues
* Date/Publication: 2020-07-17 10:30:03 UTC
* Number of recursive dependencies: 52

Run `revdep_details(, "rehh")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘vcfR’
    ```

# ReportingTools

<details>

* Version: 2.28.0
* Source code: https://github.com/cran/ReportingTools
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 175

Run `revdep_details(, "ReportingTools")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
       
      1 Test Suite : 
      ReportingTools RUnit Tests - 37 test functions, 2 errors, 0 failures
      ERROR in /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqDataSet.R: Error while sourcing  /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqDataSet.R : Error in .requirePackage(package) : 
        unable to find required package 'DESeq'
      ERROR in /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R: Error while sourcing  /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R : Error in .requirePackage(package) : 
        unable to find required package 'DESeq'
      
      Test files with failing tests
      
         test_DESeqDataSet.R 
           /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqDataSet.R 
      
         test_DESeqResults.R 
           /wynton/home/cbi/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R 
      
      
      Error in BiocGenerics:::testPackage("ReportingTools") : 
        unit tests failed for package ReportingTools
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      'fData'
    .marrayLM.to.html: no visible global function definition for
      'featureNames'
    .marrayLM.to.html: no visible global function definition for 'fData'
    check.ids: no visible binding for global variable 'org.Hs.eg.db'
    check.ids: no visible global function definition for 'keys'
    custHeaderPanel : <anonymous>: no visible binding for global variable
      'tags'
    custHeaderPanel : <anonymous>: no visible global function definition
      for 'HTML'
    custHeaderPanel: no visible global function definition for 'tagList'
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

# RforProteomics

<details>

* Version: 1.26.0
* Source code: https://github.com/cran/RforProteomics
* URL: http://lgatto.github.com/RforProteomics/
* Date/Publication: 2020-05-07
* Number of recursive dependencies: 270

Run `revdep_details(, "RforProteomics")` for more info

</details>

## In both

*   checking whether package ‘RforProteomics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'plotOutput("plotma", ': unused argument (clickId = "plotma_click") 
      Warning: replacing previous import ‘MSnbase::plot’ by ‘graphics::plot’ when loading ‘RforProteomics’
    See ‘/wynton/home/cbi/hb/repositories/R.utils/revdep/checks/RforProteomics/new/RforProteomics.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
    ```

*   checking R code for possible problems ... NOTE
    ```
    shinyMA: possible error in plotOutput("plotma", clickId =
      "plotma_click", width = 400, height = 400): unused argument (clickId
      = "plotma_click")
    ```

# RNAseq123

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/RNAseq123
* URL: https://f1000research.com/articles/5-1408/v3
* Date/Publication: 2020-04-28
* Number of recursive dependencies: 108

Run `revdep_details(, "RNAseq123")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'Glimma', 'limma', 'edgeR', 'gplots', 'RColorBrewer', 'Mus.musculus',
      'R.utils'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

# ROI.models.miplib

<details>

* Version: 0.0-2
* Source code: https://github.com/cran/ROI.models.miplib
* URL: http://R-Forge.R-project.org/projects/roi
* Date/Publication: 2019-01-25 13:10:03 UTC
* Number of recursive dependencies: 7

Run `revdep_details(, "ROI.models.miplib")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rglpk’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RRphylo

<details>

* Version: 2.4.7
* Source code: https://github.com/cran/RRphylo
* Date/Publication: 2020-07-14 00:00:07 UTC
* Number of recursive dependencies: 181

Run `revdep_details(, "RRphylo")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'pdftools', 'qpdf'
    ```

# seeds

<details>

* Version: 0.9.1
* Source code: https://github.com/cran/seeds
* URL: https://github.com/Newmi1988/seeds
* BugReports: https://github.com/Newmi1988/seeds/issues
* Date/Publication: 2020-07-14 00:00:02 UTC
* Number of recursive dependencies: 95

Run `revdep_details(, "seeds")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rsbml’
    ```

# shinymanager

<details>

* Version: 1.0.200
* Source code: https://github.com/cran/shinymanager
* URL: https://github.com/datastorm-open/shinymanager
* Date/Publication: 2020-02-28 13:50:03 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "shinymanager")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘keyring’
    ```

# signatureSearchData

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/signatureSearchData
* Date/Publication: 2020-08-17
* Number of recursive dependencies: 174

Run `revdep_details(, "signatureSearchData")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    The following objects are masked from ‘package:base’:
    
        Filter, Find, Map, Position, Reduce, anyDuplicated, append,
        as.data.frame, basename, cbind, colnames, dirname, do.call,
        duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
        lapply, mapply, match, mget, order, paste, pmax, pmax.int, pmin,
        pmin.int, rank, rbind, rownames, sapply, setdiff, sort, table,
        tapply, union, unique, unsplit, which, which.max, which.min
    
    Loading required package: AnnotationHub
    Loading required package: BiocFileCache
    Loading required package: dbplyr
    > eh <- ExperimentHub()
    Cannot connect to ExperimentHub server, using 'localHub=TRUE' instead
    using temporary cache /scratch/hb/RtmpSOMvJr/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
    Execution halted
    ```

# simpleSingleCell

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/simpleSingleCell
* URL: https://www.bioconductor.org/help/workflows/simpleSingleCell/
* Date/Publication: 2020-04-28
* Number of recursive dependencies: 138

Run `revdep_details(, "simpleSingleCell")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# SpaDES.core

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/SpaDES.core
* URL: https://spades-core.predictiveecology.org/, https://github.com/PredictiveEcology/SpaDES.core
* BugReports: https://github.com/PredictiveEcology/SpaDES.core/issues
* Date/Publication: 2020-05-15 17:10:06 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "SpaDES.core")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      The following objects are masked from 'package:stats':
      
          end, start
      
      The following object is masked from 'package:utils':
      
          citation
      
      ── 1. Error: Filenames for simList (@test-load.R#435)  ─────────────────────────
      $ operator is invalid for atomic vectors
      Backtrace:
       1. testthat::expect_true(identical(Fns$b, fnsGrd))
       4. base::identical(Fns$b, fnsGrd)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 530 | SKIPPED: 12 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: Filenames for simList (@test-load.R#435) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'SpaDES.core-package.Rd':
      ‘[reproducible]{cache}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object '.checkCacheRepo,list-method':
    \S4method{.checkCacheRepo}{list}
      Code: function(object, create)
      Docs: function(object, create = FALSE)
      Mismatches in argument default values:
        Name: 'create' Code:  Docs: FALSE
    ```

# spm12r

<details>

* Version: 2.8.1
* Source code: https://github.com/cran/spm12r
* Date/Publication: 2019-01-09 12:50:03 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "spm12r")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: install_spm12
    > ### Title: Install SPM12 file into directory
    > ### Aliases: install_spm12
    > 
    > ### ** Examples
    > 
    > tdir = tempfile()
    > dir.create(tdir)
    > in_ci <- function() {
    + nzchar(Sys.getenv("CI"))
    + }
    > if (.Platform$OS.type == "unix" | in_ci()) { # windows problem
    + res = install_spm12(install_dir = tdir)
    + res = install_spm12(install_dir = tdir)
    + }
    cloning into '/scratch/hb/Rtmpt3wegm/file58881530282c/spm12'...
    Error in git2r::clone("https://github.com/muschellij2/spm12r", branch = "gh-pages",  : 
      Error in 'git2r_clone': there is no TLS stream available
    Calls: install_spm12 -> <Anonymous>
    Execution halted
    ```

# starvars

<details>

* Version: 0.1.8
* Source code: https://github.com/cran/starvars
* URL: https://github.com/andbucci/starvars
* Date/Publication: 2020-08-13 10:00:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "starvars")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘nloptr’ ‘stats4’
      All declared Imports should be used.
    ```

# TBSSurvival

<details>

* Version: 1.3
* Source code: https://github.com/cran/TBSSurvival
* URL: http://code.google.com/p/tbssurvival/
* Date/Publication: 2017-01-05 14:45:36
* Number of recursive dependencies: 12

Run `revdep_details(, "TBSSurvival")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
            if (verbose) 
                cat(" ", out$log.lik, "TIME:", out$run.time, "\n")
        }
        else {
            if (verbose) 
                cat(" failed\n")
            out$convergence <- FALSE
            out$run.time <- .gettime() - initial.time
            cat(paste(method, ": It was not possible to find a feasible solution\n"))
        }
        return(out)
    }
    <bytecode: 0x8836290>
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
    ...
              if (verbose) 
                  cat(" ", out$log.lik, "TIME:", out$run.time, "\n")
          }
          else {
              if (verbose) 
                  cat(" failed\n")
              out$convergence <- FALSE
              out$run.time <- .gettime() - initial.time
              cat(paste(method, ": It was not possible to find a feasible solution\n"))
          }
          return(out)
      }
      <bytecode: 0xac6d188>
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
    <bytecode: 0xb584f00>
    <environment: namespace:TBSSurvival>
     --- function search by body ---
    Function .tbs.survreg in namespace TBSSurvival has this body.
     ----------- END OF FAILURE REPORT -------------- 
    
      When sourcing ‘TBSSurvival.R’:
    Error: 'length(x) = 6 > 1' in coercion to 'logical(1)'
    Execution halted
    ```

# TCGAbiolinks

<details>

* Version: 2.16.3
* Source code: https://github.com/cran/TCGAbiolinks
* URL: https://github.com/BioinformaticsFMRP/TCGAbiolinks
* BugReports: https://github.com/BioinformaticsFMRP/TCGAbiolinks/issues
* Date/Publication: 2020-07-15
* Number of recursive dependencies: 289

Run `revdep_details(, "TCGAbiolinks")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 58.7Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        data   3.1Mb
        doc   53.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setClass("CountDataSet", contains = "eSet", representation = representation(fitInfo = "environment",  : 
      could not find function "setClass"
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    GDCquery : <anonymous>: no visible binding for global variable
      ‘is_ffpe’
    TCGAanalyze_DEA: no visible binding for global variable ‘barcode’
    TCGAanalyze_DEA: no visible binding for global variable ‘clinical’
    TCGAanalyze_DEA: no visible global function definition for
      ‘contrasts.fit’
    TCGAquery_recount2: no visible binding for global variable ‘rse_gene’
    TCGAtumor_purity: no visible binding for global variable ‘Tumor.purity’
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
    TCGAvisualize_starburst: no visible global function definition for
      ‘values’
    readExonQuantification: no visible binding for global variable ‘exon’
    readExonQuantification: no visible binding for global variable
      ‘coordinates’
    readGeneExpressionQuantification : <anonymous>: no visible binding for
      '<<-' assignment to ‘assay.list’
    readGeneExpressionQuantification: no visible binding for global
      variable ‘assay.list’
    Undefined global functions or variables:
      Tumor.purity assay.list barcode clinical contains contrasts.fit
      coordinates exon is_ffpe rse_gene submitter_id value values
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘DT’
    'library' or 'require' call not declared from: ‘DT’
    ```

# TCGAutils

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/TCGAutils
* BugReports: https://github.com/waldronlab/TCGAutils/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 199

Run `revdep_details(, "TCGAutils")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
    Attaching package: ‘DelayedArray’
    
    The following objects are masked from ‘package:matrixStats’:
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following objects are masked from ‘package:base’:
    
        aperm, apply, rowsum
    
    
    gtSbtM> gbm <- curatedTCGAData("GBM", c("RPPA*", "CNA*"), FALSE)
    Cannot connect to ExperimentHub server, using 'localHub=TRUE' instead
    using temporary cache /scratch/hb/RtmpcVwDWz/BiocFileCache
    Error in .updateHubDB(hub_bfc, .class, url, proxy, localHub) : 
      Invalid Cache: sqlite file
      Hub has not been added to cache
      Run again with 'localHub=FALSE'
    Calls: example ... ExperimentHub -> .Hub -> .create_cache -> .updateHubDB
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

* Version: 1.8.0
* Source code: https://github.com/cran/TFEA.ChIP
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 155

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

# tmle.npvi

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 43

Run `revdep_details(, "tmle.npvi")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    tmle.npvi.: no visible global function definition for ‘update’
    update.NPVI: no visible global function definition for ‘gaussian’
    updateConv.NPVI: no visible global function definition for ‘tail’
    updateGNonTab.NPVI : g1: no visible binding for global variable
      ‘qlogis’
    updateGNonTab.NPVI : g1: no visible binding for global variable
      ‘plogis’
    updateGTab.NPVI: no visible binding for global variable ‘qlogis’
    updateGTab.NPVI: no visible binding for global variable ‘plogis’
    updatePsi.NPVI: no visible global function definition for ‘str’
    Undefined global functions or variables:
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

# Uniquorn

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/Uniquorn
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 108

Run `revdep_details(, "Uniquorn")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘position’
    parse_cosmic_genotype_data: no visible global function definition for
      ‘data.table’
    parse_cosmic_genotype_data: no visible binding for global variable
      ‘.SD’
    parse_cosmic_genotype_data: no visible binding for global variable
      ‘Index’
    show_contained_ccls: no visible binding for '<<-' assignment to
      ‘ccls_all’
    show_contained_ccls: no visible binding for global variable ‘ccls_all’
    write_w0_and_split_w0_into_lower_weights: no visible binding for '<<-'
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

* Version: 1.2.0
* Source code: https://github.com/cran/ViSEAGO
* URL: https://www.bioconductor.org/packages/release/bioc/html/ViSEAGO.html, https://forgemia.inra.fr/UMR-BOA/ViSEAGO
* BugReports: https://forgemia.inra.fr/UMR-BOA/ViSEAGO/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 150

Run `revdep_details(, "ViSEAGO")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    'library' or 'require' call not declared from: ‘topGO’
    'library' or 'require' call to ‘topGO’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      variable ‘ENTREZID’
    annotate,character-genomic_ressource: no visible binding for global
      variable ‘GO’
    annotate,character-genomic_ressource: no visible binding for global
      variable ‘EVIDENCE’
    annotate,character-genomic_ressource: no visible binding for global
      variable ‘ONTOLOGY’
    compute_SS_distances,ANY-character: no visible binding for global
      variable ‘N’
    compute_SS_distances,ANY-character: no visible binding for global
      variable ‘IC’
    merge_enrich_terms,list : <anonymous> : esummary : <anonymous>: no
      visible binding for global variable ‘start’
    merge_enrich_terms,list : <anonymous> : esummary : <anonymous>: no
      visible binding for global variable ‘end’
    Undefined global functions or variables:
      . ENTREZID EVIDENCE GO GO.ID IC N ONTOLOGY end start text
    Consider adding
      importFrom("graphics", "text")
      importFrom("stats", "end", "start")
    to your NAMESPACE file.
    ```

# wrProteo

<details>

* Version: 1.1.3
* Source code: https://github.com/cran/wrProteo
* Date/Publication: 2020-07-18 05:40:02 UTC
* Number of recursive dependencies: 32

Run `revdep_details(, "wrProteo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘seqinr’
    ```

