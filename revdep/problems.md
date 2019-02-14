# affxparser

Version: 1.52.0

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
      installed size is 16.4Mb
      sub-directories of 1Mb or more:
        libs  15.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# arc

Version: 1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qCBA’
    ```

# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.2Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.10.0

## In both

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'principal.curve' is deprecated.
      Warning: 'principal.curve' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# AUCell

Version: 1.2.4

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking: ‘doMC’ ‘doRNG’
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘rbokeh’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .cellProps_plotTsne: warning in adjustcolor(colorPal(10), alpha = 0.8):
      partial argument match of 'alpha' to 'alpha.f'
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
    Package unavailable to check Rd xrefs: ‘SingleCellExperiment’
    ```

# bigstep

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# BioInstaller

Version: 0.3.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        doc       2.5Mb
        extdata   8.7Mb
    ```

# BMSC

Version: 0.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 64.8Mb
      sub-directories of 1Mb or more:
        libs  64.5Mb
    ```

# bsseq

Version: 1.16.1

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic 'dimnames' and siglist 'arrayRealizationSink'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:Biobase':
    
        anyMissing, rowMedians
    
    Loading required package: BiocParallel
    
    Attaching package: 'DelayedArray'
    
    The following objects are masked from 'package:matrixStats':
    
        colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
    
    The following objects are masked from 'package:base':
    
        aperm, apply
    
    Quitting from lines 29-31 (bsseq_analysis.Rmd) 
    Error: processing vignette 'bsseq_analysis.Rmd' failed with diagnostics:
    there is no package called 'bsseqData'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bsseqData’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        data   7.7Mb
        doc    1.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::RealizationSink’
      ‘DelayedArray:::get_max_block_length’
      ‘DelayedArray:::get_spacings_for_linear_capped_length_blocks’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘bsseqData’
    ```

# Causata

Version: 4.2-0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    PredictivePowerCv: no visible global function definition for ‘sd’
    ReadCausataCsv: no visible global function definition for ‘read.csv’
    ToPmml.GlmnetModelDefinition: no visible global function definition for
      ‘coef’
    ToPmml.GlmnetModelDefinition: no visible global function definition for
      ‘terms.formula’
    ValidateModel: no visible global function definition for ‘predict’
    predict.GlmnetModelDefinition: no visible global function definition
      for ‘model.matrix’
    predict.GlmnetModelDefinition: no visible binding for global variable
      ‘contrasts’
    predict.GlmnetModelDefinition: no visible global function definition
      for ‘predict’
    Undefined global functions or variables:
      coef contrasts dbGetQuery median model.matrix na.omit predict
      quantile read.csv sd terms.formula
    Consider adding
      importFrom("stats", "coef", "contrasts", "median", "model.matrix",
                 "na.omit", "predict", "quantile", "sd", "terms.formula")
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# cellbaseR

Version: 1.4.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Gviz’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Gviz’
    ```

# ChemoSpec

Version: 5.0.225

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘ChemoSpec-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: clupaSpectra
    > ### Title: Hierarchical Cluster-Based Peak Alignment on a Spectra Object
    > ### Aliases: clupaSpectra
    > ### Keywords: utilities
    > 
    > ### ** Examples
    > 
    > 
    > data(alignMUD)
    > 
    > plotSpectra(alignMUD, which = 1:20, lab.pos = 4.5, offset = 0.1,
    +   yrange = c(0, 1900), amp = 500, xlim = c(1.5, 1.8),
    +   main = "Misaligned NMR Spectra (alignMUD)")
    > 
    > aMUD <- clupaSpectra(alignMUD)
    Error in clupaSpectra(alignMUD) : 
      You need to install package speaq to use this function
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘gsubfn’ ‘speaq’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘chemometrics’
    ```

# ChemoSpec2D

Version: 0.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘multiway’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# chillR

Version: 0.70.12

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RMAWGEN’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ChocoLattes

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘tools’
      All declared Imports should be used.
    ```

# CNEr

Version: 1.16.1

## In both

*   checking compiled code ... WARNING
    ```
    ...
    File ‘CNEr/libs/CNEr.so’:
      Found ‘abort’, possibly from ‘abort’ (C)
        Object: ‘ucsc/errabort.o’
      Found ‘exit’, possibly from ‘exit’ (C)
        Objects: ‘ucsc/errabort.o’, ‘ucsc/pipeline.o’
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

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Loading required package: GenomicRanges
    Loading required package: Biostrings
    Loading required package: XVector
    
    Attaching package: 'Biostrings'
    
    The following object is masked from 'package:CNEr':
    
        N50
    
    The following object is masked from 'package:base':
    
        strsplit
    
    Loading required package: rtracklayer
    Quitting from lines 486-490 (CNEr.Rmd) 
    Error: processing vignette 'CNEr.Rmd' failed with diagnostics:
    there is no package called 'Gviz'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Gviz’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.1Mb
      sub-directories of 1Mb or more:
        doc       1.9Mb
        extdata  15.9Mb
        libs      1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Error in .requirePackage(package) : 
        unable to find required package 'Gviz'
      Calls: <Anonymous> ... getClass -> getClassDef -> .classEnv -> .requirePackage
      Execution halted
    ```

# CollapsABEL

Version: 0.10.11

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘collUtils’ ‘haplo.stats’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# countyfloods

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# CVXR

Version: 0.99-2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rmpfr’
    
    Package suggested but not available for checking: ‘Rglpk’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DatabaseConnector

Version: 2.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘DatabaseConnectorJars’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ddPCRclust

Version: 1.0.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘flowDensity’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DeepBlueR

Version: 1.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Reported status was: okay
    Called method: deepblue_intersection
    Reported status was: okay
    Called method: deepblue_get_regions
    Reported status was: okay
    Called method: deepblue_info
    Reported status was: okay
    fetching data
    Called method: deepblue_info
    Reported status was: okay
    trying URL 'http://deepblue.mpi-inf.mpg.de/xmlrpc/download/?r=r820594&key=anonymous_key'
    Content type 'application/x-bzip2' length 8189 bytes
    ==================================================
    downloaded 8189 bytes
    
    Decompressing downloaded file to /tmp/RtmpHlBJu4/file29f076785982_uncompress
    Reading file from /tmp/RtmpHlBJu4/file29f076785982_uncompress
    Quitting from lines 378-385 (DeepBlueR.Rmd) 
    Error: processing vignette 'DeepBlueR.Rmd' failed with diagnostics:
    there is no package called 'Gviz'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Gviz’
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

Version: 1.32.0

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

# demi

Version: 1.1.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    demi.wilcox.test.fast: no visible global function definition for
      ‘wilcox.test’
    demiequal: no visible global function definition for ‘wilcox.test’
    wprob: no visible global function definition for ‘combn’
    diffexp,DEMIDiff: no visible global function definition for ‘median’
    diffexp,DEMIDiff: no visible global function definition for ‘p.adjust’
    loadAnnotation,DEMIExperiment-environment: no visible global function
      definition for ‘data’
    loadBlat,DEMIExperiment-environment: no visible global function
      definition for ‘data’
    loadCytoband,DEMIExperiment-environment: no visible global function
      definition for ‘data’
    loadPathway,DEMIExperiment-environment: no visible global function
      definition for ‘data’
    Undefined global functions or variables:
      combn data dhyper median p.adjust t.test wilcox.test write.table
    Consider adding
      importFrom("stats", "dhyper", "median", "p.adjust", "t.test",
                 "wilcox.test")
      importFrom("utils", "combn", "data", "write.table")
    to your NAMESPACE file.
    ```

# DupChecker

Version: 1.18.0

## Newly fixed

*   checking examples ... ERROR
    ```
    ...
    
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
    Dataset E-MEXP-3872 is downloading to /tmp/DupChecker/E-MEXP-3872 ...
    Downloading file ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MEXP/E-MEXP-3872/E-MEXP-3872.idf.txt ...
    trying URL 'ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MEXP/E-MEXP-3872/E-MEXP-3872.idf.txt'
    Content type 'unknown' length 4044 bytes
    ==================================================
    Decompressing file /tmp/DupChecker/E-MEXP-3872/E-MEXP-3872.processed.1.zip ...
    Error in unzip(localfile, unzip = unzip, list = TRUE) : 
      zip file '/tmp/DupChecker/E-MEXP-3872/E-MEXP-3872.raw.1.zip' cannot be opened
    Calls: arrayExpressDownload -> paste0 -> unzip
    Execution halted
    ```

## In both

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

# edgar

Version: 1.0.9

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘tm’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# eegc

Version: 1.6.1

## In both

*   checking whether package ‘eegc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/hb/repositories/R.utils/revdep/checks/eegc/new/eegc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘eegc’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning: S3 method ‘coef.DESeqDataSet’ was declared in NAMESPACE but not found
Error in library.dynam(lib, package, package.lib) : 
  shared object ‘DESeq2.so’ not found
ERROR: lazy loading failed for package ‘eegc’
* removing ‘/home/hb/repositories/R.utils/revdep/checks/eegc/new/eegc.Rcheck/eegc’

```
### CRAN

```
Error in loadNamespace(name) : there is no package called ‘startup’
* installing *source* package ‘eegc’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Warning: S3 method ‘coef.DESeqDataSet’ was declared in NAMESPACE but not found
Error in library.dynam(lib, package, package.lib) : 
  shared object ‘DESeq2.so’ not found
ERROR: lazy loading failed for package ‘eegc’
* removing ‘/home/hb/repositories/R.utils/revdep/checks/eegc/old/eegc.Rcheck/eegc’

```
# eiCompare

Version: 2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘tmvtnorm’ ‘ei’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ELMER

Version: 2.4.4

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘TCGAbiolinks’ ‘Gviz’
    
    Package suggested but not available for checking: ‘GenomicInteractions’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# esATAC

Version: 1.2.3

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
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   5.1Mb
        libs      3.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘ShortRead:::.ShortReadQQA’ ‘ShortRead:::.qa_adapterContamination’
      See the note in ?`:::` about the use of this operator.
    ```

# eudysbiome

Version: 1.10.0

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
      dev.flush dev.hold download.file harmGenera mtext par plot points
      read.table rect text title unzip
    Consider adding
      importFrom("grDevices", "adjustcolor", "colors", "dev.flush",
                 "dev.hold")
      importFrom("graphics", "abline", "axis", "mtext", "par", "plot",
                 "points", "rect", "text", "title")
      importFrom("stats", "chisq.test")
      importFrom("utils", "combn", "data", "download.file", "read.table",
                 "unzip")
    to your NAMESPACE file.
    ```

# FGNet

Version: 3.14.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘FGNet-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: analyzeNetwork
    > ### Title: Analyze Functional Network
    > ### Aliases: analyzeNetwork
    > 
    > ### ** Examples
    > 
    > # Previous Steps
    > jobID <- 3907019
    > results <- fea_gtLinker_getResults(jobID)
    Warning in fea_gtLinker_getResults(jobID) :
      The analysis has not finished yet or the jobID does not exist.
    > incidMat <- fea2incidMat(results, filterAttribute="Silhouette Width")
    Error in colnames(geneTermSets) : object 'geneTermSets' not found
    Calls: fea2incidMat -> %in% -> colnames -> is.data.frame
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
       
      1 Test Suite : 
      FGNet RUnit Tests - 2 test functions, 0 errors, 1 failure
      FAILURE in test_fea_gtLinker_getResults: Error in checkTrue(is.list(result)) : Test not TRUE
      
      
      Test files with failing tests
      
         test_getResults_gtLinker.R 
           test_fea_gtLinker_getResults 
      
      
      Error in BiocGenerics:::testPackage("FGNet") : 
        unit tests failed for package FGNet
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: IRanges
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    
    Warning in fea_gtLinker_getResults(jobID = jobID, organism = "Sc") :
      The analysis has not finished yet or the jobID does not exist.
    Quitting from lines 323-328 (FGNet.Rmd) 
    Error: processing vignette 'FGNet.Rmd' failed with diagnostics:
    object 'geneTermSets' not found
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘RGtk2’ ‘RDAVIDWebService’ ‘topGO’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc   6.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      gtkTextBufferGetText gtkTextBufferNew gtkTextBufferSetText
      gtkTextViewGetBuffer gtkTextViewNewWithBuffer gtkTextViewSetBuffer
      gtkVBox gtkVBoxNew gtkViewportNew gtkWidgetGetSensitive
      gtkWidgetSetSensitive gtkWindowNew hclust image installed.packages
      keys layout legend new pangoFontDescriptionFromString par
      parseHTTPHeader parse_XMLfile plot plot_profile png postForm quantile
      rainbow rawResults reactomeEXTID2PATHID reactomePATHID2EXTID
      reactomePATHID2NAME read.csv read.table readList select
      setAnnotationCategories setNames sigGenes title url.exists
      write.table
    Consider adding
      importFrom("grDevices", "col2rgb", "dev.off", "png", "rainbow")
      importFrom("graphics", "abline", "axis", "barplot", "box", "boxplot",
                 "image", "layout", "legend", "par", "plot", "title")
      importFrom("methods", "new")
      importFrom("stats", "dist", "hclust", "quantile", "setNames")
      importFrom("utils", "View", "browseURL", "data", "download.file",
                 "installed.packages", "read.csv", "read.table",
                 "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘topGO’
    ```

# fitteR

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘maxLik’
    
    Packages suggested but not available for checking:
      ‘DiscreteInverseWeibull’ ‘DiscreteWeibull’ ‘ExtDist’ ‘fBasics’
      ‘fExtremes’ ‘hermite’ ‘ihs’ ‘marg’ ‘QRM’ ‘Renext’ ‘sadists’ ‘STAR’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# freesurfer

Version: 1.6.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘neurobase’
    
    Package suggested but not available for checking: ‘fslr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# fslr

Version: 2.22.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘neurobase’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# gdalUtils

Version: 2.0.1.14

## In both

*   R CMD check timed out
    

# hashFunction

Version: 1.0

## In both

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘utils’
    ```

# hoardeR

Version: 0.9.4-2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# HyPhy

Version: 1.0

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

# joinXL

Version: 1.0.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rChoiceDialogs’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# kissDE

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘DSS’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# LSPFP

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tcltk2’
      All declared Imports should be used.
    ```

# methylKit

Version: 1.6.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        doc    1.4Mb
        libs   1.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘KernSmooth’
      All declared Imports should be used.
    ```

# msgbsR

Version: 1.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ggbio’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MSIseq

Version: 1.0.0

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

# networktools

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘smacof’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# nlmixr

Version: 1.0.0-7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        libs  12.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘PreciseSums’ ‘numDeriv’
      All declared Imports should be used.
    ```

# oce

Version: 1.0-1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        R      2.1Mb
        doc    1.5Mb
        help   2.5Mb
        libs   5.4Mb
    ```

# openCyto

Version: 1.18.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘flowWorkspace’ ‘flowViz’ ‘ncdfFlow’ ‘flowStats’ ‘flowClust’
    
    Package suggested but not available for checking: ‘ggcyto’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# paxtoolsr

Version: 1.14.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in loadNamespace(name) : there is no package called 'formatR'
    
    
    Attaching package: 'plyr'
    
    The following object is masked from 'package:paxtoolsr':
    
        summarize
    
    Warning in block_exec(params) :
      Failed to tidy R code in chunk 'saveBiopaxFileFromPcQuery'. Reason:
    Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      Failed to tidy R code in chunk 'traverse'. Reason:
    Error in loadNamespace(name) : there is no package called 'formatR'
    
    Quitting from lines 218-233 (using_paxtoolsr.Rmd) 
    Error: processing vignette 'using_paxtoolsr.Rmd' failed with diagnostics:
    XML content does not seem to be XML: '{"propertyPath":"ProteinReference/entityFeature:ModificationFeature","version":"10","traverseEntry":[{"uri":"http://identifiers.org/uniprot/P31749","value":["http://pathwaycommons.org/pc2/ModificationFeature_01696e37142d7d4e695ca728f4a23304","http://pathwaycommons.org/pc2/ModificationFeature_cbd93b4c45efae1d3e95c377f5a75851","http://pathwaycommons.org/pc2/ModificationFeature_95cbd7039bd2a68180c0bb57bce9b995","http://pathwaycommons.org/pc2/ModificationFeature_1d9a0475e0ec0a464ae1b4c312862807","http://pathwaycommons.org/pc2/ModificationFeature_3822bddb1a9319e273f180903f6440e1","http://pathwaycommons.org/pc2/ModificationFeature_dd35f02813e403d9809fdd09738ed8c7","http://pathwaycommons.org/pc2/ModificationFeature_fa22523ffc0ad03502e7dd9a04b9d79d","http://pathwaycommons.org/pc2/ModificationFeature_c331ff0905dc3993147b47ac0a42bf54","http://pathwaycommons.org/pc2/ModificationFeature
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 32.0Mb
      sub-directories of 1Mb or more:
        doc       1.6Mb
        extdata   5.6Mb
        java     24.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    downloadFile: no visible global function definition for ‘URLencode’
    downloadFile: no visible global function definition for ‘read.table’
    downloadFile: no visible global function definition for ‘write.table’
    downloadPc2: no visible global function definition for ‘select.list’
    downloadSignedPC: no visible global function definition for
      ‘read.table’
    getPcRequest: no visible global function definition for ‘URLencode’
    readSifnx: no visible global function definition for ‘read.table’
    splitSifnxByPathway: no visible global function definition for
      ‘txtProgressBar’
    splitSifnxByPathway: no visible global function definition for
      ‘%dopar%’
    splitSifnxByPathway: no visible global function definition for
      ‘setTxtProgressBar’
    Undefined global functions or variables:
      %dopar% URLencode read.table select.list setTxtProgressBar
      txtProgressBar write.table
    Consider adding
      importFrom("utils", "URLencode", "read.table", "select.list",
                 "setTxtProgressBar", "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

# PGA

Version: 1.10.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rTANDEM’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# PopGenReport

Version: 3.0.4

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘adegenet’ ‘pegas’ ‘vegan’ ‘mmod’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Prostar

Version: 1.12.18

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘DAPAR’ ‘DAPARdata’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# proteoQC

Version: 1.16.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘MSnbase’ ‘rTANDEM’
    
    Package suggested but not available for checking: ‘RforProteomics’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# psichomics

Version: 1.6.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        doc   5.6Mb
    ```

*   checking compiled code ... NOTE
    ```
    File ‘psichomics/libs/psichomics.so’:
      Found ‘putchar’, possibly from ‘putchar’ (C)
        Object: ‘psiFastCalc.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Object: ‘psiFastCalc.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# PubBias

Version: 1.0

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

Version: 1.16.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# RcisTarget

Version: 1.0.2

## In both

*   checking examples ... ERROR
    ```
    ...
    > # Step 2. Select significant motifs, add TF annotation & format as table
    > motifEnrichmentTable <- addMotifAnnotation(motifs_AUC,
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
    Error in .getSignificantGenes(geneSet = as.character(geneSets[[unique(enrRnkT_ByGs$geneSet)]]),  : 
      Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
    Calls: addSignificantGenes ... .addSignificantGenes -> lapply -> FUN -> .getSignificantGenes
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      7: FUN(X[[i]], ...)
      8: .getSignificantGenes(geneSet = as.character(geneSets[[unique(enrRnkT_ByGs$geneSet)]]), 
             rankings = rankings, signifRankingNames = unname(unlist(subset(enrRnkT_ByGs, 
                 select = rnkType))), method = method, maxRank = maxRank, plotCurve = plotCurve, 
             genesFormat = genesFormat, nCores = nCores, digits = 3, nMean = nMean)
      9: stop("Package 'zoo' is required ", "to calculate the aproximate RCC distributions.", 
             "To install it, run:\t install.packages('zoo')")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 45 SKIPPED: 0 FAILED: 1
      1. Error: RcisTarget workflow tests (@test_RcisTarget.R#258) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 321-325 (RcisTarget.Rmd) 
    Error: processing vignette 'RcisTarget.Rmd' failed with diagnostics:
    Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘doMC’ ‘doRNG’ ‘zoo’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.0Mb
      sub-directories of 1Mb or more:
        data  13.4Mb
        doc    1.2Mb
    ```

# ReportingTools

Version: 2.20.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘GOstats’ ‘ggbio’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RforProteomics

Version: 1.18.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘MSnbase’
    
    Packages suggested but not available for checking:
      ‘xcms’ ‘isobar’ ‘MALDIquantForeign’ ‘rTANDEM’ ‘synapter’
      ‘synapterdata’ ‘Rdisop’ ‘BRAIN’ ‘pRoloc’ ‘pRolocdata’ ‘MSGFplus’
      ‘MSGFgui’ ‘MSnID’ ‘msmsTests’ ‘msmsEDA’ ‘DEP’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ROI.models.miplib

Version: 0.0-2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rglpk’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RxODE

Version: 0.8.0-9

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rSymPy’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.6Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs  13.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘n1qn1’
      All declared Imports should be used.
    ```

# SDMTools

Version: 1.1-221

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘adehabitat’
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘raster’ ‘sp’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    quick.map: no visible global function definition for ‘image’
    raster.from.asc: no visible global function definition for ‘raster’
    raster.from.asc: no visible global function definition for
      ‘projection<-’
    raster.from.asc: no visible global function definition for ‘setValues’
    slope: no visible global function definition for ‘setValues’
    sp.from.asc: no visible global function definition for ‘CRS’
    sp.from.asc: no visible global function definition for ‘GridTopology’
    sp.from.asc: no visible global function definition for
      ‘SpatialGridDataFrame’
    Undefined global functions or variables:
      CRS GridTopology SpatialGridDataFrame aggregate contour getValues
      gray heat.colors image na.omit pnorm polygon projection<- quantile
      rainbow raster rect sd segments setValues terrain.colors text
    Consider adding
      importFrom("grDevices", "gray", "heat.colors", "rainbow",
                 "terrain.colors")
      importFrom("graphics", "contour", "image", "polygon", "rect",
                 "segments", "text")
      importFrom("stats", "aggregate", "na.omit", "pnorm", "quantile", "sd")
    to your NAMESPACE file.
    ```

# SpaDES.core

Version: 0.2.4

## In both

*   R CMD check timed out
    

*   checking whether package ‘SpaDES.core’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/R.utils/revdep/checks/SpaDES.core/new/SpaDES.core.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RandomFields’
    ```

# spm12r

Version: 2.8.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘neurobase’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# TCGAbiolinks

Version: 2.8.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘survminer’
    
    Package suggested but not available for checking: ‘dnet’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# TFEA.ChIP

Version: 1.0.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TFEA.ChIP-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: preprocessInputData
    > ### Title: Extracts data from a DESeqResults object or a data frame.
    > ### Aliases: preprocessInputData
    > 
    > ### ** Examples
    > 
    > data('hypoxia_DESeq',package='TFEA.ChIP')
    > preprocessInputData(hypoxia_DESeq)
    Warning: S3 method ‘coef.DESeqDataSet’ was declared in NAMESPACE but not found
    Error: DESeq2 package needed for this function to work. Please install it.
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
          'browseVignettes()'. To cite Bioconductor, see
          'citation("Biobase")', and for packages 'citation("pkgname")'.
      
      
      Attaching package: 'AnnotationDbi'
      
      The following object is masked from 'package:dplyr':
      
          select
      
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    
    Attaching package: 'AnnotationDbi'
    
    The following object is masked from 'package:dplyr':
    
        select
    
    Loading required package: org.Hs.eg.db
    
    Quitting from lines 36-45 (TFEA.ChIP.Rmd) 
    Error: processing vignette 'TFEA.ChIP.Rmd' failed with diagnostics:
    DESeq2 package needed for this function to work. Please install it.
    Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Failed with error:  'package 'DelayedArray' could not be loaded'
      Error in .requirePackage(package) : 
        unable to find required package 'DESeq2'
      Calls: <Anonymous> ... getClass -> getClassDef -> .classEnv -> .requirePackage
      Execution halted
    ```

# tmle.npvi

Version: 0.10.0

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

# uavRst

Version: 0.5-2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tmaptools’
    ```

# Uniquorn

Version: 2.0.0

## In both

*   checking whether package ‘Uniquorn’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'create_bed_file(match_t, ': unused argument (manual_identifier_bed_file) 
    See ‘/home/hb/repositories/R.utils/revdep/checks/Uniquorn/new/Uniquorn.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        extdata   4.1Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    parse_ccle_genotype_data: no visible binding for global variable
      ‘Index’
    parse_cosmic_genotype_data: no visible binding for global variable
      ‘position’
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
      .SD Index Tumor_Sample_Barcode ccls_all g_mat_exclude output_file_xls
      position res_table sig_vec sim_list tail vcf_fingerprint
    Consider adding
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

# vortexR

Version: 1.1.6

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘glmulti’ ‘irr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

