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
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# aroma.light

Version: 3.10.0

## In both

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

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    No supplemental files found.
    Check URL manually if in doubt
    https://ftp.ncbi.nlm.nih.gov/geo/series/GSE60nnn/GSE60361/suppl/
    Quitting from lines 142-178 (AUCell.Rmd) 
    Error: processing vignette 'AUCell.Rmd' failed with diagnostics:
    a character vector argument expected
    Execution halted
    ```

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

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘reshape2’
    ```

# awsjavasdk

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      8: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      9: value[[3L]](cond)
      10: isTRUE(e$handled)
      11: e$handled
      12: `$.Throwable`(e, "handled")
      13: ._jobjRef_dollar(x[["jobj"]], name)
      14: stop(sprintf("no field, method or inner class called '%s' ", name))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 3 SKIPPED: 5 FAILED: 2
      1. Error: Alternate install location (@test-awsjavasdk.R#62) 
      2. Error: (unknown) (@test-awsjavasdk.R#70) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# BioInstaller

Version: 0.3.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Please input y/n/Y/N!
      /scratch/hb/Rtmptb5GqC/destdir.initial not empty, overwrite?[y]
      More than 3 counts input, default is not to overwrite.
      /scratch/hb/Rtmptb5GqC/destdir.initial existed, overwrite?[y]
      Please input y/n/Y/N!
      /scratch/hb/Rtmptb5GqC/destdir.initial existed, overwrite?[y]
      Please input y/n/Y/N!
      /scratch/hb/Rtmptb5GqC/destdir.initial existed, overwrite?[y]
      More than 3 counts input, default is not to overwrite.
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 58 SKIPPED: 0 FAILED: 1
      1. Error: initial (@test_install_utils.R#43) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    trying URL 'https://raw.githubusercontent.com/Miachol/ftp/master/files/GRCh37_MT_ensGene.txt'
    trying URL 'https://raw.githubusercontent.com/Miachol/ftp/master/files/GRCh37_MT_ensGene.txt'
    trying URL 'https://raw.githubusercontent.com/Miachol/ftp/master/files/GRCh37_MT_ensGene.txt'
    trying URL 'https://raw.githubusercontent.com/Miachol/ftp/master/files/GRCh37_MT_ensGene.txt'
    trying URL 'https://raw.githubusercontent.com/Miachol/ftp/master/files/GRCh37_MT_ensGene.txt.gz'
    trying URL 'https://raw.githubusercontent.com/Miachol/ftp/master/files/GRCh37_MT_ensGene.txt'
    trying URL 'http://biocc.hrbmu.edu.cn/DiseaseEnhancer/RFunctions/diseaseEnh5.1.txt'
    pandoc: Could not fetch https://raw.githubusercontent.com/Miachol/ftp/master/files/images/bioinstaller/easy_project.png
    FailedConnectionException2 "raw.githubusercontent.com" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'plugins_of_BioInstaller_shiny.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# BMSC

Version: 0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.4Mb
      sub-directories of 1Mb or more:
        libs  18.2Mb
    ```

# bsseq

Version: 1.16.1

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        data   6.7Mb
    ```

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

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::RealizationSink’
      ‘DelayedArray:::get_max_block_length’
      ‘DelayedArray:::get_spacings_for_linear_capped_length_blocks’
      See the note in ?`:::` about the use of this operator.
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
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: bioinfo.hpc.cam.ac.uk; Name or service not known
    Calls: CellBaseR ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 58-68 (cellbaseR.Rmd) 
    Error: processing vignette 'cellbaseR.Rmd' failed with diagnostics:
    Could not resolve host: bioinfo.hpc.cam.ac.uk; Name or service not known
    Execution halted
    ```

# ChemoSpec

Version: 4.4.97

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown packages ‘chemometrics’, ‘mvoutlier’ in Rd xrefs
    ```

# chillR

Version: 0.70.6

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘chillR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getClimateWizardData
    > ### Title: Extract climate data from the ClimateWizard database
    > ### Aliases: getClimateWizardData
    > ### Keywords: utility
    > 
    > ### ** Examples
    > 
    > 
    > getClimateWizardData(coordinates=c(longitude=10.613975,latitude=34.933439),
    +   scenario="historical",
    +   start_year=1970,
    +   end_year=2000,
    +   metric=c("CD18","R02"),
    +   GCMs=c("bcc-csm1-1","BNU-ESM"))
    Error in open.connection(con, "rb") : 
      Could not resolve host: maprooms.ciat.cgiar.org; Name or service not known
    Calls: getClimateWizardData ... fromJSON_string -> parseJSON -> parse_con -> open -> open.connection
    Execution halted
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

*   checking examples ... ERROR
    ```
    ...
      URL 'http://hgdownload.cse.ucsc.edu/goldenPath/hg38/database/chromInfo.txt.gz': status was 'Couldn't resolve host name'
    Error in download.file(url = targetURL, destfile = targetFile, method = "auto",  : 
      cannot open URL 'http://hgdownload.cse.ucsc.edu/goldenPath/hg38/database/chromInfo.txt.gz'
    >   qSizesDanRer10 <- fetchChromSizes("danRer10")
    Trying UCSC...
    Warning in download.file(url = targetURL, destfile = targetFile, method = "auto",  :
      URL 'http://hgdownload.cse.ucsc.edu/goldenPath/danRer10/database/chromInfo.txt.gz': status was 'Couldn't resolve host name'
    Error in download.file(url = targetURL, destfile = targetFile, method = "auto",  : 
      cannot open URL 'http://hgdownload.cse.ucsc.edu/goldenPath/danRer10/database/chromInfo.txt.gz'
    >   
    >   ## Axt object
    >   windows <- c(50L, 50L, 50L)
    >   identities <- c(45L, 48L, 49L)
    >   CNEHg38DanRer10 <- ceScan(x=axtHg38DanRer10, tFilter=bedHg38,
    +                             qFilter=bedDanRer10, 
    +                             tSizes=qSizesHg38, qSizes=qSizesDanRer10,
    +                             window=windows, identity=identities)
    Error in ceScanAxt(x, tFilter = tFilter, qFilter = qFilter, tSizes = tSizes,  : 
      tSizes must be provided or seqinfo is available in Axt object!
    Calls: ceScan -> ceScan -> ceScanAxt
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      tSizes must be provided or seqinfo is available in Axt object!
      1: ceScan(x = axtHg38DanRer10, tFilter = bedHg38, qFilter = bedDanRer10, tSizes = qSizesHg38, 
             qSizes = qSizesDanRer10, window = windows, identity = identities) at testthat/test_ceScan.R:19
      2: ceScan(x = axtHg38DanRer10, tFilter = bedHg38, qFilter = bedDanRer10, tSizes = qSizesHg38, 
             qSizes = qSizesDanRer10, window = windows, identity = identities)
      3: ceScanAxt(x, tFilter = tFilter, qFilter = qFilter, tSizes = tSizes, qSizes = qSizes, 
             window = window, identity = identity)
      4: stop("tSizes must be provided or seqinfo is available in Axt object!")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 83 SKIPPED: 1 FAILED: 1
      1. Error: test_ceScan (@test_ceScan.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
      See the note in ?`:::` about the use of this operator.
    ```

# countyfloods

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: find_nws
    > ### Title: Get National Weather Service (NWS) flood stage/discharge levels
    > ###   for gages.
    > ### Aliases: find_nws
    > 
    > ### ** Examples
    > 
    > 
    > va_counties <- get_county_cd("Virginia")
    > va_gages <- get_gages(va_counties, start_date = "2015-01-01",
    +                       end_date = "2015-12-31")
    Error in curl::curl_fetch_memory(url, handle = handle): Could not resolve host: waterservices.usgs.gov; Name or service not known
    Request failed [ERROR]. Retrying in 1 seconds...
    Error in curl::curl_fetch_memory(url, handle = handle): Could not resolve host: waterservices.usgs.gov; Name or service not known
    Request failed [ERROR]. Retrying in 1.5 seconds...
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: waterservices.usgs.gov; Name or service not known
    Calls: get_gages ... <Anonymous> -> getWebServiceData -> retryGetOrPost -> RETRY
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# cRegulome

Version: 0.1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    
    
    clusterProfiler v3.8.1  For help: https://guangchuangyu.github.io/software/clusterProfiler
    
    If you use clusterProfiler in published research, please cite:
    Guangchuang Yu, Li-Gen Wang, Yanyan Han, Qing-Yu He. clusterProfiler: an R package for comparing biological themes among gene clusters. OMICS: A Journal of Integrative Biology. 2012, 16(5):284-287.
    
    Attaching package: 'clusterProfiler'
    
    The following object is masked from 'package:igraph':
    
        simplify
    
    trying URL 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4393113/bin/pone.0122882.s001.xlsx'
    Warning in download.file("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4393113/bin/pone.0122882.s001.xlsx",  :
      URL 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4393113/bin/pone.0122882.s001.xlsx': status was 'Couldn't resolve host name'
    Quitting from lines 44-55 (case_study.Rmd) 
    Error: processing vignette 'case_study.Rmd' failed with diagnostics:
    cannot open URL 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4393113/bin/pone.0122882.s001.xlsx'
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘AnnotationDbi’ ‘clusterProfiler’ ‘org.Hs.eg.db’
      All declared Imports should be used.
    ```

# CVXR

Version: 0.99

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rglpk’
    ```

# DatabaseConnector

Version: 2.1.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DatabaseConnectorJars’ ‘bit’
      All declared Imports should be used.
    ```

# ddPCRclust

Version: 1.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    exportPlots: no visible binding for global variable ‘Cluster’
    Undefined global functions or variables:
      Cluster
    ```

# DeepBlueR

Version: 1.6.0

## In both

*   checking whether package ‘DeepBlueR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/scratch/henrik/repositories/R.utils/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DeepBlueR’ ...
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error : unable to load R code in package ‘DeepBlueR’
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/scratch/henrik/repositories/R.utils/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/DeepBlueR’

```
### CRAN

```
* installing *source* package ‘DeepBlueR’ ...
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Error in function (type, msg, asError = TRUE)  : 
  Could not resolve host: deepblue.mpi-inf.mpg.de; Name or service not known
Error : unable to load R code in package ‘DeepBlueR’
ERROR: lazy loading failed for package ‘DeepBlueR’
* removing ‘/wynton/scratch/henrik/repositories/R.utils/revdep/checks/DeepBlueR/old/DeepBlueR.Rcheck/DeepBlueR’

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
    Error in function (type, msg, asError = TRUE)  : 
      Could not resolve host: ftp.ebi.ac.uk; Name or service not known
    Calls: arrayExpressDownload ... getFtpFilenames -> getURL -> curlPerform -> <Anonymous> -> fun
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Downloading data to  /scratch/hb/DupChecker ...
    Dataset GSE1478 is downloading to /scratch/hb/DupChecker/GSE1478 ...
    Quitting from lines 84-100 (DupChecker.Rnw) 
    Error: processing vignette 'DupChecker.Rnw' failed with diagnostics:
    Could not resolve host: ftp.ncbi.nlm.nih.gov; Name or service not known
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

# eegc

Version: 1.6.1

## In both

*   checking examples ... ERROR
    ```
    ...
    > keggenrich = functionEnrich(cate.gene, organism = "human", pAdjustMethod = "fdr",
    +                             GO = FALSE, KEGG = TRUE, enrichResult = FALSE)
    'select()' returned 1:1 mapping between keys and columns
    Warning in bitr(x, fromType = from, toType = c("ENTREZID"), OrgDb = OrgDb) :
      11.61% of input gene IDs are fail to map...
    'select()' returned 1:1 mapping between keys and columns
    Warning in bitr(x, fromType = from, toType = c("ENTREZID"), OrgDb = OrgDb) :
      11.49% of input gene IDs are fail to map...
    'select()' returned 1:1 mapping between keys and columns
    Warning in bitr(x, fromType = from, toType = c("ENTREZID"), OrgDb = OrgDb) :
      7.68% of input gene IDs are fail to map...
    'select()' returned 1:many mapping between keys and columns
    Warning in bitr(x, fromType = from, toType = c("ENTREZID"), OrgDb = OrgDb) :
      7.16% of input gene IDs are fail to map...
    'select()' returned 1:1 mapping between keys and columns
    Warning in bitr(x, fromType = from, toType = c("ENTREZID"), OrgDb = OrgDb) :
      6.75% of input gene IDs are fail to map...
    Error in download.KEGG.Path(species) : 
      'species' should be one of organisms listed in 'http://www.genome.jp/kegg/catalog/org_list.html'...
    Calls: functionEnrich ... prepare_KEGG -> download_KEGG -> download.KEGG.Path
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'barplotEnrich.Rd':
      ‘[DOSE]{barplot.enrichResult}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 27-28 (eegc.Rnw) 
    Error: processing vignette 'eegc.Rnw' failed with diagnostics:
    there is no package called 'BiocStyle'
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    grnPlot: no visible global function definition for ‘legend’
    markerScatter: no visible global function definition for
      ‘colorRampPalette’
    markerScatter: no visible global function definition for ‘plot’
    markerScatter: no visible global function definition for ‘points’
    markerScatter: no visible global function definition for ‘lm’
    markerScatter: no visible global function definition for ‘abline’
    markerScatter: no visible global function definition for ‘text’
    markerScatter: no visible global function definition for ‘legend’
    Undefined global functions or variables:
      abline adjustcolor axis colorRampPalette control density dev.copy2pdf
      legend lines lm model.matrix p.adjust par phyper plot points quantile
      results text title treat
    Consider adding
      importFrom("grDevices", "adjustcolor", "colorRampPalette",
                 "dev.copy2pdf")
      importFrom("graphics", "abline", "axis", "legend", "lines", "par",
                 "plot", "points", "text", "title")
      importFrom("stats", "density", "lm", "model.matrix", "p.adjust",
                 "phyper", "quantile")
    to your NAMESPACE file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocStyle’
    ```

# ELMER

Version: 2.4.4

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
    ```

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > geneAnnot <- getTSS(TSS=list(upstream=0, downstream=0))
    Request to BioMart web service failed.
    The BioMart web service you're accessing may be down.
    Check the following URL and see if this website is available:
    http://www.ensembl.org:80/biomart/martservice?type=registry&requestid=biomaRt
    Request to BioMart web service failed.
    The BioMart web service you're accessing may be down.
    Check the following URL and see if this website is available:
    http://uswest.ensembl.org:80/biomart/martservice?type=registry&requestid=biomaRt
    > probe <- GenomicRanges::GRanges(seqnames = c("chr1","chr2"), 
    + range=IRanges::IRanges(start = c(16058489,236417627), end= c(16058489,236417627)), 
    + name= c("cg18108049","cg17125141"))
    > names(probe) <- c("cg18108049","cg17125141")
    > NearbyGenes <- GetNearGenes(numFlankingGenes = 20,geneAnnot=geneAnnot,TRange=probe)
    Searching for the 20 near genes
    
      |                                                                            
      |                                                                      |   0%Error: $ operator is invalid for atomic vectors
    
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      7: NearGenes(Target = rownames(x), geneNum = numFlankingGenes, Gene = geneAnnot, TRange = TRange)
      
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 57 SKIPPED: 0 FAILED: 7
      1. Error: Mapping from entrez gene ID to emsemble gene ID is right (@test-data.R#23) 
      2. Error: Supervised mode works (@test-get.pair.R#7) 
      3. Error: Function uses correctly the permu.dir (@test-get.pair.R#51) 
      4. Error: Gene expression is calculated (@test-get.pair.R#144) 
      5. Error: Test if the results is right (@test-getTF.R#150) 
      6. Error: It maps correctly to hg38 (@test-neargenes.R#11) 
      7. Error: It maps correctly to hg19 (@test-neargenes.R#29) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'data.table'
    ':::' call which should be '::': 'TCGAbiolinks:::TCGAVisualize_volcano'
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      'TCGAbiolinks:::colDataPrepare' 'TCGAbiolinks:::get.GRCh.bioMart'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      ...
    Loading required package: ELMER.data
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Request to BioMart web service failed.
    The BioMart web service you're accessing may be down.
    Check the following URL and see if this website is available:
    http://feb2014.archive.ensembl.org:80/biomart/martservice?type=registry&requestid=biomaRt
    Quitting from lines 53-57 (analysis_data_input.Rmd) 
    Error: processing vignette 'analysis_data_input.Rmd' failed with diagnostics:
    unable to find an inherited method for function 'promoters' for signature '"integer"'
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    heatmapGene: no visible global function definition for
      'subsetByOverlaps'
    heatmapGene: no visible binding for global variable 'mae'
    motif.enrichment.plot: no visible binding for global variable 'y'
    motif.enrichment.plot: no visible binding for global variable 'x'
    motif.enrichment.plot: no visible binding for global variable 'z'
    motif.enrichment.plot: no visible binding for global variable 'upperOR'
    motif.enrichment.plot: no visible binding for global variable 'lowerOR'
    motif.enrichment.plot: no visible binding for global variable 'motif'
    motif.enrichment.plot: no visible binding for global variable 'OR'
    scatter: no visible binding for global variable 'value'
    scatter: no visible global function definition for 'cor.test'
    scatter: no visible binding for global variable 'mae'
    Undefined global functions or variables:
      Gene GeneID Hugo_Symbol OR Probe TF Target cor.test fisher.test gr
      hm450.hg38.manifest label lowerOR mae motif precede pvalue
      subsetByOverlaps upperOR value write.table x y z
    Consider adding
      importFrom("stats", "cor.test", "fisher.test")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘devtools’
    ```

# esATAC

Version: 1.2.1

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
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

# ezknitr

Version: 0.6

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://travis-ci.org/ropenscilabs/ezknitr.svg?branch=master
    FailedConnectionException2 "travis-ci.org" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'ezknitr.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
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
    Error in fea_gtLinker_getResults(jobID) : 
      Either the web server URL is wrong or the server is down.
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
       
      1 Test Suite : 
      FGNet RUnit Tests - 2 test functions, 1 error, 0 failures
      ERROR in test_fea_gtLinker_getResults: Error in fea_gtLinker_getResults(jobID = 1639610) : 
        Either the web server URL is wrong or the server is down.
      
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
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: IRanges
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    
    Quitting from lines 235-237 (FGNet.Rmd) 
    Error: processing vignette 'FGNet.Rmd' failed with diagnostics:
    Either the web server URL is wrong or the server is down.
    Execution halted
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

# fitteR

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘ExtDist’ ‘fExtremes’ ‘NormalLaplace’ ‘SkewHyperbolic’ ‘STAR’
      ‘VarianceGamma’
    ```

# ForecastFramework

Version: 0.9.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    <to be read again> 
                       8
    l.2792 }
    ! Illegal parameter number in definition of \pgfk@/handlers/.wrap 8 pgfmath arg
    s/.@@body.
    <to be read again> 
                       9
    l.2792 }
    ! I can't find file `tikzlibraryarrows.meta.code.tex'.
    <argument> ...nput tikzlibrary\pgf@temp .code.tex 
                                                      \catcode `\@ =\csname tikz...
    l.64 \usetikzlibrary{arrows.meta}
                                     
    ! Emergency stop.
    <argument> ...nput tikzlibrary\pgf@temp .code.tex 
                                                      \catcode `\@ =\csname tikz...
    l.64 \usetikzlibrary{arrows.meta}
                                     
    !  ==> Fatal error occurred, no o
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# fslr

Version: 2.17.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    trying URL 'http://cmic.cs.ucl.ac.uk/camino//uploads/Tutorials/example_dwi.zip'
    Quitting from lines 28-32 (dti_data.Rmd) 
    Error: processing vignette 'dti_data.Rmd' failed with diagnostics:
    cannot open URL 'http://cmic.cs.ucl.ac.uk/camino//uploads/Tutorials/example_dwi.zip'
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘grDevices’ ‘graphics’ ‘matrixStats’ ‘stats’
      All declared Imports should be used.
    ```

# gifti

Version: 0.7.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(gifti)
      > 
      > test_check("gifti")
      trying URL 'http://johnmuschelli.com/gifti/BV_GIFTI.tar.gz'
      ── 1. Error: reading gifti files (@test-reader.R#3)  ───────────────────────────
      cannot open URL 'http://johnmuschelli.com/gifti/BV_GIFTI.tar.gz'
      1: download_gifti_data(tdir) at testthat/test-reader.R:3
      2: download.file(url = url, destfile = destfile)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1 SKIPPED: 0 FAILED: 1
      1. Error: reading gifti files (@test-reader.R#3) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    trying URL 'http://johnmuschelli.com/gifti/BV_GIFTI.tar.gz'
    Quitting from lines 43-46 (Reading_GIFTI_Files.Rmd) 
    Error: processing vignette 'Reading_GIFTI_Files.Rmd' failed with diagnostics:
    cannot open URL 'http://johnmuschelli.com/gifti/BV_GIFTI.tar.gz'
    Execution halted
    ```

# GSODR

Version: 1.2.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 87-90 (GSODR.Rmd) 
    Error: processing vignette 'GSODR.Rmd' failed with diagnostics:
    
    We've tried to get the file(s) you requested six
    times, but the server is not responding, so we are
    unable to process your request now.
    Please try again later.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sf’
    ```

# hashFunction

Version: 1.0

## In both

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘utils’
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

# LSPFP

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tcltk2’
      All declared Imports should be used.
    ```

# methylKit

Version: 1.6.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘KernSmooth’
      All declared Imports should be used.
    ```

# msgbsR

Version: 1.4.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                   old_size new_size compress
      ratdata.rda     318Kb    125Kb       xz
      ratdata2.rda    287Kb    116Kb       xz
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'utils'
      All declared Imports should be used.
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

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    R.utils v2.6.0-9000 successfully loaded. See ?R.utils for help.
    
    Attaching package: ‘R.utils’
    
    The following object is masked from ‘package:utils’:
    
        timestamp
    
    The following objects are masked from ‘package:base’:
    
        cat, commandArgs, getOption, inherits, isOpen, parse, warnings
    
    trying URL 'http://steverozen.net/data/Hg19repeats.rda'
    Warning in download.file(url, file) :
      URL 'http://steverozen.net/data/Hg19repeats.rda': status was 'Couldn't resolve host name'
    
    Error: processing vignette 'MSIseq.Rnw' failed with diagnostics:
     chunk 3 (label = Hg19repeats) 
    Error in download.file(url, file) : 
      cannot open URL 'http://steverozen.net/data/Hg19repeats.rda'
    Execution halted
    ```

# net.security

Version: 0.3.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘net.security-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: DataSetStatus
    > ### Title: Shows data set basic information
    > ### Aliases: DataSetStatus
    > 
    > ### ** Examples
    > 
    > DataSetStatus("cves")
    [1] "-: CVES dataset:"
    [1] " |- Last update for CVES dataset at 2017-06-10"
    [1] " |- Data set with 1000 rows and 25 variables."
    Error: failed to load external entity "http://cve.mitre.org/data/downloads/index.html#download"
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
         {
             e = makeXMLError(msg, code, domain, line, col, level, filename, class)
             dom = names(e$domain)
             class(e) = c(names(e$code), sprintf("%s_Error", gsub("_FROM_", "_", dom)), class(e))
             if (e$code == xmlParserErrors["XML_IO_LOAD_ERROR"]) 
                 stop(e)
         })("failed to load external entity \"http://cve.mitre.org/data/downloads/index.html#download\"\n", 
             1549L, 8L, 0L, 0L, 1L, character(0))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 11 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_cve.R#46) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# networktools

Version: 1.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# neurobase

Version: 1.26.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 189-219 (nifti_basics.Rmd) 
    Error: processing vignette 'nifti_basics.Rmd' failed with diagnostics:
    Could not resolve host: raw.githubusercontent.com; Name or service not known
    Execution halted
    ```

# NSA

Version: 0.0.32

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
      ‘aroma.affymetrix’ ‘DNAcopy’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
      ‘matrixStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setTags.SampleNormalization: no visible global function definition for
      ‘trim’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘throw’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘str’
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      ‘rowAlls’
    Undefined global functions or variables:
      AffymetrixCdfFile CNA Object approxfun aromaSettings byPath extend
      extractMatrix findUnitsTodo getAsteriskTags getChipType getFile
      getFullName getFullNames getGenomeInformation getName getNames
      getPath getPathname getPathnames getPositions getRam getRootPath
      getTags getUnitsOnChromosome hist median nbrOfFiles newInstance
      packageDescription rowAlls rowMedians segment setTags str throw trim
      verbose
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "approxfun", "median")
      importFrom("utils", "packageDescription", "str")
    to your NAMESPACE file.
    ```

# openCyto

Version: 1.18.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘flowWorkspace’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘parallel’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘flowViz’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘flowClust:::.ellipsePoints’ ‘flowStats:::drvkde’
      ‘flowStats:::warpSetNCDF’ ‘flowWorkspace:::.cpp_addGate’
      ‘flowWorkspace:::.getAllDescendants’ ‘flowWorkspace:::isNegated’
      ‘flowWorkspace:::trimWhiteSpace’ ‘lattice:::updateList’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘groupBy’ ‘isCollapse’ ‘ppMethod’ ‘unlockNamespace’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘callNextMethod’
    Undefined global functions or variables:
      Subset abline as callNextMethod collapseDataForGating cov cov.wt
      cutree density dist dnorm ellipsoidGate embed exprs exprs<- extends
      filter filterList filters flowSet fsApply gating_args gating_method
      hclust hist isMultiPops kmeans legend lines median na.omit new par
      parameters<- parent points polygonGate pop predict preprocessing_args
      preprocessing_method pt qchisq qf quantile rainbow rectangleGate sd
      selectMethod smooth.spline text uniroot var weighted.mean
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "hist", "legend", "lines", "par",
                 "points", "text")
      importFrom("methods", "as", "callNextMethod", "extends", "new",
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

# osrmr

Version: 0.1.29

## In both

*   R CMD check timed out
    

# paxtoolsr

Version: 1.14.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘paxtoolsr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: downloadFile
    > ### Title: Check Cache and Download File
    > ### Aliases: downloadFile
    > 
    > ### ** Examples
    > 
    > downloadFile("http://google.com/", fileName="index.html", destDir=tempdir())
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: google.com; Name or service not known
    Calls: downloadFile ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2018-08-26 02:19:26,432 1263 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - Elements in the result model: 240
      SBGN-PD Layout is running...
      success ratio: 0.8571428571428571
      enhanced ratio: 0.8571428571428571
      Total execution time: 80 miliseconds.
      2018-08-26 02:19:27,287 2118 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSifnx: not blacklisting ubiquitous molecules (no blacklist.txt found)
      2018-08-26 02:19:27,926 2757 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSif: not blacklisting ubiquitous molecules (no blacklist.txt found)
      2018-08-26 02:19:28,306 3137 [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSif: not blacklisting ubiquitous molecules (no blacklist.txt found)
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 33 SKIPPED: 11 FAILED: 2
      1. Error: getPc (@test_pathwayCommons.R#27) 
      2. Error: validate (@test_paxtools.R#41) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: rJava
    Loading required package: XML
    
    Attaching package: 'XML'
    
    The following object is masked from 'package:tools':
    
        toHTML
    
    2018-08-26 02:19:34,108 816  [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSif: not blacklisting ubiquitous molecules (no blacklist.txt found)
    2018-08-26 02:19:34,282 990  [main] INFO  org.biopax.paxtools.PaxtoolsMain  - toSifnx: not blacklisting ubiquitous molecules (no blacklist.txt found)
    Quitting from lines 170-172 (using_paxtoolsr.Rmd) 
    Error: processing vignette 'using_paxtoolsr.Rmd' failed with diagnostics:
    Could not resolve host: www.pathwaycommons.org; Name or service not known
    Execution halted
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

*   checking examples ... ERROR
    ```
    Running examples in ‘PGA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: PrepareAnnotationEnsembl2
    > ### Title: Prepare annotation from ENSEMBL
    > ### Aliases: PrepareAnnotationEnsembl2
    > 
    > ### ** Examples
    > 
    > ensembl <- biomaRt::useMart("ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl",
    +                     host="grch37.ensembl.org", path="/biomart/martservice",
    +                     archive=FALSE)
    Request to BioMart web service failed.
    The BioMart web service you're accessing may be down.
    Check the following URL and see if this website is available:
    http://grch37.ensembl.org:80/biomart/martservice?type=registry&requestid=biomaRt
    Error in if (!grepl(x = registry, pattern = "^\n*<MartRegistry>")) { : 
      argument is of length zero
    Calls: <Anonymous> -> listMarts
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘biomaRt:::martBM’ ‘biomaRt:::martDataset’ ‘biomaRt:::martHost’
      ‘customProDB:::makeTranscriptDbFromBiomart_archive’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    reportSNV: no visible binding for global variable ‘isUnique’
    reportSNV: no visible binding for global variable ‘Index’
    reportSNV: no visible binding for global variable ‘aaref’
    reportSNV: no visible binding for global variable ‘aavar’
    reportSNV: no visible binding for global variable ‘genename’
    reportSNV: no visible binding for global variable ‘proname’
    reportSNV: no visible binding for global variable ‘.SD’
    reportSNV: no visible binding for global variable ‘ID’
    reportSNV: no visible binding for global variable ‘Change’
    reportSNV: no visible binding for global variable ‘aapos’
    reportSNV: no visible binding for global variable ‘abc’
    reportSNV: no visible binding for global variable ‘xyz’
    Undefined global functions or variables:
      . .I .N .SD CUFF_ID Change Class Evalue Frame Freq ID Index Mass
      MutNum Query Qvalue Strand Substring Type aapos aaref aavar abc
      alleleCount alleles charge chr chrom cumlen delta_da delta_ppm evalue
      gene_name genename genome<- id isSAP isUnique junType jun_type label
      miss mods mrnaAcc mz name output pep peptide pincoding position
      pro_name proname prot protAcc protein rbindlist readAAStringSet
      readDNAStringSet refbase rsid seqlengths seqlevels seqlevels<- subseq
      transcript tx_name txid txname varbase writeXStringSet x xyz y
    ```

# PhenotypeSimulator

Version: 0.2.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc-citeproc: Error parsing XML file plos-genetics.csl: FailedConnectionException2 "www.zotero.org" 80 False getAddrInfo: does not exist (Name or service not known)
    pandoc: Error running filter /netapp/home/hb/apps/local/bin/pandoc-citeproc
    Filter returned error status 1
    Error: processing vignette 'Sample-scripts-external-genotype-simulation.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 83
    Execution halted
    ```

# PopGenReport

Version: 3.0.0

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘ecodist’ in Rd xrefs
    ```

# proteoQC

Version: 1.16.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'proteoQC.Rmd' failed with diagnostics:
    there is no package called ‘prettydoc’
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotMS2boxplot: no visible binding for global variable ‘techRep’
    plotMS2boxplot: no visible binding for global variable ‘fraction’
    plotMS2boxplot: no visible binding for global variable ‘MS2QC’
    plotSampleIDResultErrorBar: no visible binding for global variable
      ‘fraction’
    plotSampleIDResultErrorBar: no visible binding for global variable
      ‘val’
    plotSampleIDResultErrorBar: no visible binding for global variable ‘se’
    plotSampleVenn: no visible global function definition for ‘grid.draw’
    plotTechRepVenn : <anonymous>: no visible global function definition
      for ‘grid.draw’
    qcHist: no visible binding for global variable ‘error’
    qcHist: no visible binding for global variable ‘techRep’
    qcHist: no visible binding for global variable ‘bioRep’
    qcHist2: no visible binding for global variable ‘error’
    qcHist2: no visible binding for global variable ‘fractile’
    Undefined global functions or variables:
      ..count.. Intensity MS1QC MS2QC TMT10 TMT6 Tag V1 V2 V3 V4 V5 bioRep
      curenv delta error exprs fractile fraction grid.draw iTRAQ4 iTRAQ8
      label peplength peptide_summary precursorCharge quantify ratio
      readMgfData se techRep val x y
    ```

# psichomics

Version: 1.6.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘psichomics-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: parseFirebrowseMetadata
    > ### Title: Query the Firebrowse web API for metadata
    > ### Aliases: parseFirebrowseMetadata parseFirehoseMetadata
    > ###   parseTCGAmetadata
    > 
    > ### ** Examples
    > 
    > psichomics:::parseFirebrowseMetadata("Dates")
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: firebrowse.org; Name or service not known
    Calls: <Anonymous> ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      IR
      
      MERGE3m
      
      MIC
      
      EXSK
      
      MULTI
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1019 SKIPPED: 9 FAILED: 1
      1. Error: Plot transcripts (@testGeneInfo.R#64) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
      |                                        |   0% 
      |                                        |   0% 
      |                                        |   0% 
      |                                        |   0% 
      |                                        |   0% 
      |========================================| 100% 
    Quitting from lines 189-197 (CLI_tutorial.Rmd) 
    Error: processing vignette 'CLI_tutorial.Rmd' failed with diagnostics:
    Could not resolve host: firebrowse.org; Name or service not known
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    prepareGeneQuantSTAR: no visible binding for global variable
      ‘..strandedness’
    prepareGeneQuantSTAR: no visible binding for '<<-' assignment to
      ‘index’
    prepareGeneQuantSTAR : <anonymous>: no visible binding for '<<-'
      assignment to ‘index’
    prepareGeneQuantSTAR : <anonymous>: no visible binding for global
      variable ‘index’
    prepareJunctionQuantSTAR: no visible binding for '<<-' assignment to
      ‘index’
    prepareJunctionQuantSTAR : <anonymous>: no visible binding for '<<-'
      assignment to ‘index’
    prepareJunctionQuantSTAR : <anonymous>: no visible binding for global
      variable ‘index’
    Undefined global functions or variables:
      ..strandedness index
    ```

*   checking compiled code ... NOTE
    ```
    File ‘psichomics/libs/psichomics.so’:
      Found ‘printf’, possibly from ‘printf’ (C)
        Object: ‘psiFastCalc.o’
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

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘doMC’ ‘doRNG’ ‘zoo’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.1Mb
      sub-directories of 1Mb or more:
        data  11.8Mb
    ```

# ReportingTools

Version: 2.20.0

## In both

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

# reproducible

Version: 0.2.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘sf’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RforProteomics

Version: 1.18.1

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: getThermoHelaPRTC
    > ### Title: Dowload Thermo Hela PRTC data
    > ### Aliases: getThermoHelaPRTC
    > 
    > ### ** Examples
    > 
    > getThermoHelaPRTC()
    [1] "design.txt"                                 
    [2] "swissprot_human_canonical_19_09_12.fasta.gz"
    [3] "Thermo_Hela_PRTC_1.mgf.gz"                  
    [4] "Thermo_Hela_PRTC_2.mgf.gz"                  
    [5] "Thermo_Hela_PRTC_3.mgf.gz"                  
    > getThermoHelaPRTC("design")
    trying URL 'http://proteome.sysbiol.cam.ac.uk/lgatto/RforProteomics//design.txt'
    Warning in download.file(src, destfile = dest, ...) :
      URL 'http://proteome.sysbiol.cam.ac.uk/lgatto/RforProteomics//design.txt': status was 'Couldn't resolve host name'
    Error in download.file(src, destfile = dest, ...) : 
      cannot open URL 'http://proteome.sysbiol.cam.ac.uk/lgatto/RforProteomics//design.txt'
    Calls: getThermoHelaPRTC -> mapply -> <Anonymous> -> download.file
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    This is pRoloc version 1.20.1 
      Visit https://lgatto.github.io/pRoloc/ to get started.
    
    
    This is pRolocdata version 1.18.0.
    Use 'pRolocdata()' to list available data sets.
    Loading required package: msmsEDA
    
    Attaching package: 'e1071'
    
    The following object is masked from 'package:MSnbase':
    
        impute
    
    Warning in download.file(url = paste(reposURL, "VIEWS", sep = "/"), destfile = tmpf,  :
      URL 'http://bioconductor.org/packages/3.7/bioc/VIEWS': status was 'Couldn't resolve host name'
    Quitting from lines 81-84 (RProtVis.Rmd) 
    Error: processing vignette 'RProtVis.Rmd' failed with diagnostics:
    cannot open URL 'http://bioconductor.org/packages/3.7/bioc/VIEWS'
    Execution halted
    ```

# ROI.models.miplib

Version: 0.0-1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rglpk’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sdmpredictors

Version: 0.2.8

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      5: eval_bare(get_expr(quo), get_env(quo))
      6: load_layers(c("BO_ph", "MS_bathy_21kya"), rasterstack = FALSE)
      7: sapply(layercodes, get_layerpath)
      8: lapply(X = X, FUN = FUN, ...)
      9: FUN(X[[i]], ...)
      10: utils::download.file(url, path, method = "auto", quiet = FALSE, mode = "wb")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 141 SKIPPED: 15 FAILED: 3
      1. Failure: sysdata gets downloaded (@test_get_sysdata.R#42) 
      2. Failure: sysdata gets downloaded (@test_get_sysdata.R#45) 
      3. Error: load_layer handles special cases (@test_load.R#139) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: raster
    Loading required package: sp
    Loading required package: rgdal
    rgdal: version: 1.3-4, (SVN revision 766)
     Geospatial Data Abstraction Library extensions to R successfully loaded
     Loaded GDAL runtime: GDAL 1.11.4, released 2016/01/25
     Path to GDAL shared files: /usr/share/gdal
     GDAL binary built with GEOS: TRUE 
     Loaded PROJ.4 runtime: Rel. 4.8.0, 6 March 2012, [PJ_VERSION: 480]
     Path to PROJ.4 shared files: (autodetected)
     Linking to sp version: 1.3-1 
    Warning in utils::download.file(url, tmp, quiet = TRUE) :
      URL 'http://www.lifewatch.be/sdmpredictors/sysdata.rda': status was 'Couldn't resolve host name'
    trying URL 'http://www.lifewatch.be/sdmpredictors/BO_ph_lonlat.tif'
    Quitting from lines 79-91 (quickstart.Rmd) 
    Error: processing vignette 'quickstart.Rmd' failed with diagnostics:
    cannot open URL 'http://www.lifewatch.be/sdmpredictors/BO_ph_lonlat.tif'
    Execution halted
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

# SensusR

Version: 2.2.0

## In both

*   checking examples ... ERROR
    ```
    ...
    [1] "87% done merging data for SpeedDatum (14 of 16)."
    [1] "93% done merging data for SpeedDatum (15 of 16)."
    [1] "100% done merging data for SpeedDatum (16 of 16)."
    [1] "Creating data frame for SpeedDatum."
    [1] "100% done merging data for TelephonyDatum (1 of 1)."
    [1] "Creating data frame for TelephonyDatum."
    [1] "14% done merging data for WlanDatum (1 of 7)."
    [1] "28% done merging data for WlanDatum (2 of 7)."
    [1] "42% done merging data for WlanDatum (3 of 7)."
    [1] "57% done merging data for WlanDatum (4 of 7)."
    [1] "71% done merging data for WlanDatum (5 of 7)."
    [1] "85% done merging data for WlanDatum (6 of 7)."
    [1] "100% done merging data for WlanDatum (7 of 7)."
    [1] "Creating data frame for WlanDatum."
    > plot(data$LocationDatum)
    Warning in download.file(url, destfile = tmp, quiet = !messaging, mode = "wb") :
      URL 'http://maps.googleapis.com/maps/api/staticmap?center=38.0676352725243,-78.9510441850485&zoom=10&size=640x640&scale=2&maptype=terrain&language=en-EN&sensor=false': status was 'Couldn't resolve host name'
    Error in download.file(url, destfile = tmp, quiet = !messaging, mode = "wb") : 
      cannot open URL 'http://maps.googleapis.com/maps/api/staticmap?center=38.0676352725243,-78.9510441850485&zoom=10&size=640x640&scale=2&maptype=terrain&language=en-EN&sensor=false'
    Calls: plot ... <Anonymous> -> ggmap -> get_map -> get_googlemap -> download.file
    Execution halted
    ```

# snplist

Version: 0.18.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 86-91 (snplist.Rnw) 
    Error: processing vignette 'snplist.Rnw' failed with diagnostics:
    argument is of length zero
    Execution halted
    ```

# SpaDES.core

Version: 0.2.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘reproducible’
    
    Packages suggested but not available for checking: ‘sf’ ‘SpaDES.tools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# stplanr

Version: 0.2.5

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘lwgeom’ ‘sf’
    
    Package suggested but not available for checking: ‘tmap’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# TCGAbiolinks

Version: 2.8.3

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TCGAbiolinks-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: GDCdownload
    > ### Title: Download GDC data
    > ### Aliases: GDCdownload
    > 
    > ### ** Examples
    > 
    > query <- GDCquery(project = "TCGA-ACC",
    +                  data.category =  "Copy number variation",
    +                  legacy = TRUE,
    +                  file.type = "hg19.seg",
    +                  barcode = c("TCGA-OR-A5LR-01A-11D-A29H-01", "TCGA-OR-A5LJ-10A-01D-A29K-01"))
    Error in value[[3L]](cond) : 
      GDC server down, try to use this package later
    Calls: GDCquery ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 41 SKIPPED: 0 FAILED: 13
      1. Error: GDCdownload API method for one files is working  (@test-prepare-download.R#5) 
      2. Error: getBarcodeInfo works (@test-prepare-download.R#17) 
      3. Error: GDCprepare accepts more than one project (@test-prepare-download.R#29) 
      4. Error: GDCquery can filter by data.category (@test-query.R#5) 
      5. Error: GDCquery accepts more than one project (@test-query.R#11) 
      6. Error: GDCquery can filter by sample.type (@test-query.R#23) 
      7. Error: GDCquery can filter by barcode (@test-query.R#46) 
      8. Error: GDCquery can filter copy number from legacy data by file type. Case: nocnv_hg18 (@test-query.R#72) 
      9. Error: GDCquery can filter copy number from legacy data by file type. Case: hg18 (@test-query.R#81) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    ==================== DATA Summary ====================
    ==================== END DATA Summary ====================
    ==================== T test results ====================
    ==================== END T test results ====================
    ==================== DATA Summary ====================
    ==================== END DATA Summary ====================
    ==================== T test results ====================
    ==================== END T test results ====================
    ==================== DATA Summary ====================
    ==================== END DATA Summary ====================
    ==================== T test results ====================
    ==================== END T test results ====================
    ==================== DATA Summary ====================
    ==================== END DATA Summary ====================
    ==================== T test results ====================
    ==================== END T test results ====================
    pandoc: Could not fetch https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css
    FailedConnectionException2 "maxcdn.bootstrapcdn.com" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'analysis.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    TCGAanalyze_analyseGRN: no visible global function definition for
      ‘knnmi.cross’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘c3net’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘minet’
    TCGAquery_recount2: no visible binding for global variable ‘rse_gene’
    TCGAtumor_purity: no visible binding for global variable ‘Tumor.purity’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetInduce’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetPipeline’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dCommSignif’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘visNet’
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
    Undefined global functions or variables:
      TabSubtypesCol_merged Tumor.purity barcode c3net clinical dCommSignif
      dNetInduce dNetPipeline knnmi.cross limmacontrasts.fit
      limmamakeContrasts minet portions rse_gene value visNet
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘DT’
    ```

# tmle.npvi

Version: 0.10.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'tmle-npvi.tex' failed.
    LaTeX errors:
    !pdfTeX error: pdflatex (file manfnt.pfb): cannot open Type 1 font file for rea
    ding
     ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

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

Version: 2.0.0

## In both

*   checking whether package ‘Uniquorn’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: possible error in 'create_bed_file(match_t, ': unused argument (manual_identifier_bed_file) 
    See ‘/wynton/scratch/henrik/repositories/R.utils/revdep/checks/Uniquorn/new/Uniquorn.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
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

