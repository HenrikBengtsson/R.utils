# acc

Version: 1.3.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# acnr

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1026.0Mb
      sub-directories of 1Mb or more:
        extdata  1025.6Mb
    ```

# affxparser

Version: 1.48.0

## In both

*   checking compiled code ... WARNING
    ```
    ...
          'fusion_sdk/file/BPMAPFileWriter.o'
      Found 'exit', possibly from 'exit' (C)
        Objects: 'fusion_sdk/util/Err.o', 'R_affx_clf_pgf_parser.o'
      Found 'printf', possibly from 'printf' (C)
        Object: 'fusion_sdk/file/TsvFile/TsvFile.o'
      Found 'putchar', possibly from 'putchar' (C)
        Object: 'fusion_sdk/file/TsvFile/TsvFile.o'
      Found 'puts', possibly from 'printf' (C), 'puts' (C)
        Object: 'fusion_sdk/file/TsvFile/TsvFile.o'
      Found 'rand', possibly from 'rand' (C)
        Objects: 'fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o',
          'fusion_sdk/util/Verbose.o'
      Found 'srand', possibly from 'srand' (C)
        Object: 'fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o'
      Found 'stdout', possibly from 'stdout' (C)
        Object: 'fusion_sdk/util/Util.o'
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor the system RNG.
    
    See 'Writing portable packages' in the 'Writing R Extensions' manual.
    ```

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file paths:
      affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.cpp
      affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.h
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section 'Package structure' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.8Mb
      sub-directories of 1Mb or more:
        libs  1024.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'affy'
    ```

# alphahull

Version: 2.1

## In both

*   checking whether package 'alphahull' can be installed ... ERROR
    ```
    Installation failed.
    See '/cbc/henrik/repositories/R.utils/revdep/checks/alphahull/new/alphahull.Rcheck/00install.out' for details.
    ```

## Installation

### Devel

```
* installing *source* package 'alphahull' ...
** package 'alphahull' successfully unpacked and MD5 sums checked
** libs
gfortran   -fpic  -g -O2  -c delaunaycircum.f -o delaunaycircum.o
gfortran   -fpic  -g -O2  -c tripack.f -o tripack.o
gcc -std=gnu99 -shared -L/home/shared/cbc/local/lib -L/home/shared/cbc/local/lib64 -L/opt/NetCDF/NetCDF-4.3.0/lib -L/opt/gcc/gcc-4.9.2/lib64 -o alphahull.so delaunaycircum.o tripack.o -L/opt/gcc/gcc-4.9.2 -lgfortran -lm -lquadmath
installing to /cbc/henrik/repositories/R.utils/revdep/checks/alphahull/new/alphahull.Rcheck/alphahull/libs
** R
** inst
** preparing package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called 'abind'
ERROR: lazy loading failed for package 'alphahull'
* removing '/cbc/henrik/repositories/R.utils/revdep/checks/alphahull/new/alphahull.Rcheck/alphahull'

```
### CRAN

```
* installing *source* package 'alphahull' ...
** package 'alphahull' successfully unpacked and MD5 sums checked
** libs
gfortran   -fpic  -g -O2  -c delaunaycircum.f -o delaunaycircum.o
gfortran   -fpic  -g -O2  -c tripack.f -o tripack.o
gcc -std=gnu99 -shared -L/home/shared/cbc/local/lib -L/home/shared/cbc/local/lib64 -L/opt/NetCDF/NetCDF-4.3.0/lib -L/opt/gcc/gcc-4.9.2/lib64 -o alphahull.so delaunaycircum.o tripack.o -L/opt/gcc/gcc-4.9.2 -lgfortran -lm -lquadmath
installing to /cbc/henrik/repositories/R.utils/revdep/checks/alphahull/old/alphahull.Rcheck/alphahull/libs
** R
** inst
** preparing package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called 'abind'
ERROR: lazy loading failed for package 'alphahull'
* removing '/cbc/henrik/repositories/R.utils/revdep/checks/alphahull/old/alphahull.Rcheck/alphahull'

```
# arc

Version: 1.1.2

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# aroma.affymetrix

Version: 3.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1028.1Mb
      sub-directories of 1Mb or more:
        R            1024.9Mb
        help            1.1Mb
        testScripts     1.2Mb
    ```

# aroma.cn

Version: 1.6.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'GLAD'
    ```

# aroma.core

Version: 3.1.1

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 1025.6Mb
      sub-directories of 1Mb or more:
        R  1024.5Mb
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GLAD' 'sfit' 'expectile' 'HaarSeg' 'mpcbs'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'GLAD'
    ```

# aroma.light

Version: 3.6.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'latin1'  in an ASCII locale
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

# awsjavasdk

Version: 0.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rJava'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# bedr

Version: 1.0.4

## In both

*   checking examples ... ERROR
    ```
    ...
       -0, --zero-based           coordinates are zero-based
       -b, --begin INT            column number for region start [4]
       -c, --comment CHAR         skip comment lines starting with CHAR [null]
       -C, --csi                  generate CSI index for VCF (default is TBI)
       -e, --end INT              column number for region end (if no end, set INT to -b) [5]
       -f, --force                overwrite existing index without asking
       -m, --min-shift INT        set minimal interval size for CSI indices to 2^INT [14]
       -p, --preset STR           gff, bed, sam, vcf
       -s, --sequence INT         column number for sequence names (suppressed by -p) [1]
       -S, --skip-lines INT       skip first INT lines [0]
    
    Querying and other options:
       -h, --print-header         print also the header lines
       -H, --only-header          print only the header lines
       -l, --list-chroms          list chromosome names
       -r, --reheader FILE        replace the header with the content of FILE
       -R, --regions FILE         restrict to regions listed in the file
       -T, --targets FILE         similar to -R but streams rather than index-jumps
    
       ERROR: Looks like tabix had a problemError in tabix(query.regions, cosmic.vcf.example, check.chr = FALSE) : 
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/test.all.R' failed.
    Last 13 lines of output:
      
      Failed -------------------------------------------------------------------------
      1. Error: check tabix (@test.tabix.R#38) ---------------------------------------
      
      1: expect_equal(nrow(tabix(a.nochr, vcf, verbose = T, check.chr = FALSE)), NULL) at /cbc/henrik/repositories/R.utils/revdep/checks/bedr/new/bedr.Rcheck/bedr/tests/test.tabix.R:38
      2: compare(object, expected, ...)
      3: nrow(tabix(a.nochr, vcf, verbose = T, check.chr = FALSE))
      4: tabix(a.nochr, vcf, verbose = T, check.chr = FALSE)
      5: stop()
      
      DONE ===========================================================================
      Error: Test failures
      In addition: Warning message:
      Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
      Execution halted
    ```

# BioInstaller

Version: 0.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
             else warning)
             fun(structure(list(message = msg, call = sys.call()), class = c(typeName, "GenericCurlError", 
                 "error", "condition")))
         }(28L, "<not set>", TRUE)
      
      testthat results ================================================================
      OK: 51 SKIPPED: 0 FAILED: 5
      1. Error: install.github (@test_install.R#10) 
      2. Error: install.bioinfo (@test_install.R#57) 
      3. Error: dependence (@test_install_uilts.R#88) 
      4. Error: git.download (@test_install_uilts.R#102) 
      5. Error: download.file.custom is.dir (@test_utils.R#138) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking whether package 'BioInstaller' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: program compiled against libxml 209 using older 207
    See '/cbc/henrik/repositories/R.utils/revdep/checks/BioInstaller/new/BioInstaller.Rcheck/00install.out' for details.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    See section 'Generic functions and methods' in the 'Writing R
    Extensions' manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    The argument of a replacement function which corresponds to the right
    hand side must be named 'value'.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      ...
    Warning: program compiled against libxml 209 using older 207
    trying URL 'https://github.com/Miachol/ftp/blob/master/files/GRCh37_MT_ensGene.txt'
    downloaded 41 KB
    
    successful!
    trying URL 'https://github.com/Miachol/ftp/blob/master/files/GRCh37_MT_ensGene.txt'
    downloaded 41 KB
    
    trying URL 'https://github.com/Miachol/ftp/blob/master/files/GRCh37_MT_ensGene.txt'
    downloaded 41 KB
    
    successful!
    trying URL 'https://github.com/Miachol/ftp/blob/master/files/GRCh37_MT_ensGene.txt'
    downloaded 41 KB
    
    successful!
    Quitting from lines 102-109 (BioInstaller.Rmd) 
    Error: processing vignette 'BioInstaller.Rmd' failed with diagnostics:
    Error in 'git2r_clone': the SSL certificate is invalid
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking foreign function calls ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    See chapter 'System and foreign language interfaces' in the 'Writing R
    Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# bsseq

Version: 1.12.2

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 1024.9Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'HDF5Array'
      All declared Imports should be used.
    ```

# Causata

Version: 4.2-0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'RMySQL'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# cellbaseR

Version: 1.0.0

## In both

*   R CMD check timed out
    

# ChemoSpec

Version: 4.4.85

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'js'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: 'chemometrics', 'mvoutlier'
    ```

# ChocoLattes

Version: 0.1.0

## In both

*   checking examples ... WARNING
    ```
    ...
    > my.aliases <- list(c("Felipe Campelo",
    +                      "Felipe Campelo Franca Pinto",
    +                      "Felipe Campelo F. Pinto",
    +                      "F.C.F. Pinto"),
    +                    c("Lucas S. Batista",
    +                      "Lucas Batista",
    +                      "Lucas de Souza Batista",
    +                      "Lucas Souza Batista"))
    > 
    > lattes.list <- lattes_to_list(CV.dir         = my.dir,
    +                               author.aliases = my.aliases)
    
     *** caught segfault ***
    address 0x2b3200000000, cause 'memory not mapped'
    
    Traceback:
     1: .Call("RS_XML_ParseTree", as.character(file), handlers, as.logical(ignoreBlanks),     as.logical(replaceEntities), as.logical(asText), as.logical(trim),     as.logical(validate), as.logical(getDTD), as.logical(isURL),     as.logical(addAttributeNamespaces), as.logical(useInternalNodes),     as.logical(isHTML), as.logical(isSchema), as.logical(fullNamespaceInfo),     as.character(encoding), as.logical(useDotNames), xinclude,     error, addFinalizer, as.integer(options), as.logical(parentFirst),     PACKAGE = "XML")
     2: XML::xmlTreeParse(filenames[indx], useInternal = TRUE, encoding = "latin")
     3: XML::xmlToList(XML::xmlTreeParse(filenames[indx], useInternal = TRUE,     encoding = "latin"))
     4: lattes_to_list(CV.dir = my.dir, author.aliases = my.aliases)
    An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'knitr' 'tools'
      All declared Imports should be used.
    ```

# civis

Version: 1.0.2

## In both

*   checking whether package 'civis' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: program compiled against libxml 209 using older 207
    See '/cbc/henrik/repositories/R.utils/revdep/checks/civis/new/civis.Rcheck/00install.out' for details.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    See section 'Generic functions and methods' in the 'Writing R
    Extensions' manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    The argument of a replacement function which corresponds to the right
    hand side must be named 'value'.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking foreign function calls ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    See chapter 'System and foreign language interfaces' in the 'Writing R
    Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# CollapsABEL

Version: 0.10.11

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'rJava' 'collUtils'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# DEGraph

Version: 1.28.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > path <- system.file("extdata", package="KEGGgraph")
    > grList <- getKEGGPathways(path=path, verbose=TRUE)
    [1] "^hsa([0-9]+).xml$"
    Pathway IDs:
     chr [1:12] "00020" "04010" "04012" "04110" "04115" "04210" "04310" "04350" ...
    [
     *** caught segfault ***
    address 0x2b5400000000, cause 'memory not mapped'
    
    Traceback:
     1: .Call("RS_XML_ParseTree", as.character(file), handlers, as.logical(ignoreBlanks),     as.logical(replaceEntities), as.logical(asText), as.logical(trim),     as.logical(validate), as.logical(getDTD), as.logical(isURL),     as.logical(addAttributeNamespaces), as.logical(useInternalNodes),     as.logical(isHTML), as.logical(isSchema), as.logical(fullNamespaceInfo),     as.character(encoding), as.logical(useDotNames), xinclude,     error, addFinalizer, as.integer(options), as.logical(parentFirst),     PACKAGE = "XML")
     2: xmlTreeParse(file, getDTD = FALSE, error = xmlErrorCumulator(immediate = FALSE))
     3: doTryCatch(return(expr), name, parentenv, handler)
     4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
     5: tryCatchList(expr, classes, parentenv, handlers)
     6: tryCatch(doc <- xmlTreeParse(file, getDTD = FALSE, error = xmlErrorCumulator(immediate = FALSE)),     error = function(e) {        fileSize <- file.info(file)$size[1]        bytes <- sprintf("%d byte%s", fileSize, ifelse(fileSize >             1, "s", ""))        msg <- paste("The file", file, "seems not to be a valid KGML file\n")        if (fileSize < 100L)             msg <- paste(msg, "[WARNING] File size (", bytes,                 ") is unsually small; please check.\n", sep = "")        msg <- paste(msg, "\nDetailed error messages from", "XML::xmlTreeParse:\n",             sep = "")        cat(msg)        stop(e)    })
     7: parseKGML(pathname)
     8: FUN(X[[i]], ...)
     9: lapply(pathnames, FUN = function(pathname) {    pw <- parseKGML(pathname)    pwInfo <- getPathwayInfo(pw)    gr <- KEGGpathway2Graph(pw, genesOnly = TRUE, expandGenes = TRUE)    gr@graphData$info <- pwInfo    gr@graphData$label <- getTitle(pwInfo)    increase(pb)    gr})
    10: getKEGGPathways(path = path, verbose = TRUE)
    An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      'graph' 'KEGGgraph' 'lattice' 'RBGL' 'rrcov' 'Rgraphviz' 'NCIgraph'
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: 'R.utils'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: 'graph:::getIndices'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    twoSampleFromGraph: no visible global function definition for 'rnorm'
    writeAdjacencyMatrix2KGML: no visible binding for global variable
      'Arguments'
    writeAdjacencyMatrix2KGML: no visible global function definition for
      'pushState'
    writeAdjacencyMatrix2KGML: no visible global function definition for
      'popState'
    writeAdjacencyMatrix2KGML : <anonymous>: no visible global function
      definition for 'na.omit'
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
      'wilcox.test'
    demiequal: no visible global function definition for 'wilcox.test'
    wprob: no visible global function definition for 'combn'
    diffexp,DEMIDiff: no visible global function definition for 'median'
    diffexp,DEMIDiff: no visible global function definition for 'p.adjust'
    loadAnnotation,DEMIExperiment-environment: no visible global function
      definition for 'data'
    loadBlat,DEMIExperiment-environment: no visible global function
      definition for 'data'
    loadCytoband,DEMIExperiment-environment: no visible global function
      definition for 'data'
    loadPathway,DEMIExperiment-environment: no visible global function
      definition for 'data'
    Undefined global functions or variables:
      combn data dhyper median p.adjust t.test wilcox.test write.table
    Consider adding
      importFrom("stats", "dhyper", "median", "p.adjust", "t.test",
                 "wilcox.test")
      importFrom("utils", "combn", "data", "write.table")
    to your NAMESPACE file.
    ```

# dplR

Version: 1.6.6

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# DupChecker

Version: 1.14.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in 'DupChecker-Ex.R' failed
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
    Dataset E-MEXP-3872 is downloading to /tmp/henrik/DupChecker/E-MEXP-3872 ...
    Error in unzip(localfile, unzip = unzip, list = TRUE) : 
      zip file '/tmp/henrik/DupChecker/E-MEXP-3872/E-MEXP-3872.raw.1.zip' cannot be opened
    Calls: arrayExpressDownload -> paste0 -> unzip
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    arrayExpressDownload: no visible global function definition for
      'download.file'
    geoDownload: no visible global function definition for 'download.file'
    geoDownload: no visible global function definition for 'untar'
    getFtpFilenames: no visible global function definition for 'read.table'
    Undefined global functions or variables:
      download.file read.table untar
    Consider adding
      importFrom("utils", "download.file", "read.table", "untar")
    to your NAMESPACE file.
    ```

# ELMER

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1025.1Mb
      sub-directories of 1Mb or more:
        extdata  1024.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'ELMER.data' 'Homo.sapiens'
      'IlluminaHumanMethylation450kanno.ilmn12.hg19'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    motif.enrichment.plot: no visible binding for global variable 'OR'
    promoterMeth: no visible global function definition for 'write.csv'
    scatter: no visible binding for global variable 'value'
    schematic: no visible global function definition for 'pdf'
    schematic: no visible global function definition for 'dev.off'
    txs: no visible binding for global variable 'Homo.sapiens'
    show,MEE.data: no visible global function definition for 'str'
    show,Pair: no visible global function definition for 'str'
    summary,MEE.data: no visible global function definition for 'str'
    summary,Pair: no visible global function definition for 'str'
    Undefined global functions or variables:
      Homo.sapiens IlluminaHumanMethylation450kanno.ilmn12.hg19 OR coef
      data dev.off label lm lowerOR motif p.adjust pdf pvalue read.csv
      read.delim read.table str t.test upperOR value wilcox.test write.csv
      write.table
    Consider adding
      importFrom("grDevices", "dev.off", "pdf")
      importFrom("stats", "coef", "lm", "p.adjust", "t.test", "wilcox.test")
      importFrom("utils", "data", "read.csv", "read.delim", "read.table",
                 "str", "write.csv", "write.table")
    to your NAMESPACE file.
    ```

# eudysbiome

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.4Mb
      sub-directories of 1Mb or more:
        Rep  1024.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    assignTax: no visible global function definition for 'unzip'
    assignTax: no visible global function definition for 'bunzip2'
    contingencyTest: no visible global function definition for 'combn'
    contingencyTest : <anonymous>: no visible global function definition
      for 'chisq.test'
    microAnnotate: no visible global function definition for 'data'
    microAnnotate: no visible binding for global variable 'harmGenera'
    tableSpecies: no visible global function definition for 'read.table'
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

# evclust

Version: 1.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        doc  1024.0Mb
    ```

# ezknitr

Version: 0.6

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://travis-ci.org/ropenscilabs/ezknitr.svg?branch=master
    TlsExceptionHostPort (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))) "travis-ci.org" 443
    Error: processing vignette 'ezknitr.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# ForecastFramework

Version: 0.9.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      number of items to replace is not a multiple of replacement length
    Warning in private$.dnames[[1]][rows] = rownames(data) :
      number of items to replace is not a multiple of replacement length
    Warning in private$.dnames[[1]][rows] = rownames(data) :
      number of items to replace is not a multiple of replacement length
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'ClassDiagram.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `adjustbox.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.57 \usepackage
                    {xcolor}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# freesurfer

Version: 1.6.1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# fslr

Version: 2.12

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'R.utils' 'grDevices' 'graphics' 'matrixStats' 'stats'
      All declared Imports should be used.
    ```

# gdalUtils

Version: 2.0.1.7

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rgdal'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# gifti

Version: 0.7.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      19: eval(exprs, env)
      20: eval(exprs, env)
      21: source_file(path, new.env(parent = env), chdir = TRUE)
      22: force(code)
      23: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE)        end_context()    })
      24: FUN(X[[i]], ...)
      25: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE)
      26: force(code)
      27: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE))
      28: test_files(paths, reporter = reporter, env = env, ...)
      29: test_dir(test_path, reporter = reporter, env = env, filter = filter,     ...)
      30: with_top_env(env, {    test_dir(test_path, reporter = reporter, env = env, filter = filter,         ...)})
      31: run_tests(package, test_path, filter, reporter, ...)
      32: test_check("gifti")
      An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking whether package 'gifti' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: program compiled against libxml 209 using older 207
    See '/cbc/henrik/repositories/R.utils/revdep/checks/gifti/new/gifti.Rcheck/00install.out' for details.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    See section 'Generic functions and methods' in the 'Writing R
    Extensions' manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    The argument of a replacement function which corresponds to the right
    hand side must be named 'value'.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    11: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))
    12: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))
    13: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)
    14: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
    15: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))
    16: block_exec(params)
    17: call_block(x)
    18: process_group.block(group)
    19: process_group(group)
    20: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = "\n", file = output %n% "")        message("Quitting from lines ", paste(current_lines(i),             collapse = "-"), " (", knit_concord$get("infile"),             ") ")    })
    21: process_file(text, output)
    22: knitr::knit(knit_input, knit_output, envir = envir, quiet = quiet,     encoding = encoding)
    23: rmarkdown::render(file, encoding = encoding, quiet = quiet, envir = globalenv())
    24: vweave_rmarkdown(...)
    25: engine$weave(file, quiet = quiet, encoding = enc)
    26: doTryCatch(return(expr), name, parentenv, handler)
    27: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    28: tryCatchList(expr, classes, parentenv, handlers)
    29: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
    30: buildVignettes(dir = "/cbc/henrik/repositories/R.utils/revdep/checks/gifti/new/gifti.Rcheck/vign_test/gifti")
    An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking foreign function calls ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    See chapter 'System and foreign language interfaces' in the 'Writing R
    Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# gofCopula

Version: 0.2-3

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'copula' 'VineCopula'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# GSODR

Version: 1.0.7

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rgdal'
    
    Packages suggested but not available for checking: 'plotKML' 'rgeos'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# hashFunction

Version: 1.0

## In both

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: 'utils'
    ```

# hoardeR

Version: 0.9.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'bamsignals'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# HyPhy

Version: 1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'R.utils' 'ape'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    requiprobable: no visible global function definition for 'extract'
    requiprobable : make.tree: no visible global function definition for
      'extract'
    requiprobable : make.tree: no visible global function definition for
      'runif'
    rgenetree: no visible global function definition for 'dbinom'
    rgenetree: no visible global function definition for 'dnbinom'
    rgenetree: no visible global function definition for 'runif'
    rgenetree: no visible global function definition for 'rbinom'
    rgenetree: no visible global function definition for 'rnbinom'
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
    Packages required but not available: 'rChoiceDialogs' 'rJava'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# listenv

Version: 0.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'listenv.md.rsp' failed with diagnostics:
    there is no package called 'markdown'
    Execution halted
    ```

# LSPFP

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'tcltk2'
      All declared Imports should be used.
    ```

# mailR

Version: 0.4.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rJava'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# methylKit

Version: 1.2.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'Rhtslib'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# MPAgenomics

Version: 1.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'R.devices' 'R.filesets' 'R.methodsS3' 'R.oo' 'aroma.affymetrix'
      'aroma.cn' 'aroma.core' 'aroma.light' 'matrixStats' 'snowfall'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unexported object imported by a ':::' call: 'cghseg:::segmeanCO'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    markerSelection: no visible global function definition for 'read.csv'
    postsegnormalize: no visible global function definition for 'median'
    segFracBSignal: no visible global function definition for 'read.csv'
    segFracBSignal : <anonymous>: no visible global function definition for
      'points'
    segFracBSignal : <anonymous>: no visible global function definition for
      'lines'
    segFracBSignal : <anonymous>: no visible global function definition for
      'write.table'
    tumorboostPlot: no visible global function definition for 'head'
    tumorboostPlot: no visible global function definition for 'par'
    tumorboostPlot: no visible global function definition for 'axis'
    tumorboostPlot: no visible global function definition for 'points'
    Undefined global functions or variables:
      axis head lines lm mad median optim par points read.csv sd var
      write.table
    Consider adding
      importFrom("graphics", "axis", "lines", "par", "points")
      importFrom("stats", "lm", "mad", "median", "optim", "sd", "var")
      importFrom("utils", "head", "read.csv", "write.table")
    to your NAMESPACE file.
    ```

# MSIseq

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'RWeka' 'rJava'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# nandb

Version: 0.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'autothresholdr'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# net.security

Version: 0.3.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# NSA

Version: 0.0.32

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'R.methodsS3' 'MASS' 'matrixStats' 'R.oo' 'R.utils' 'aroma.core'
      'aroma.affymetrix' 'DNAcopy'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.3Mb
      sub-directories of 1Mb or more:
        exData  1024.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'DNAcopy' 'MASS' 'R.methodsS3' 'R.oo' 'aroma.affymetrix' 'aroma.core'
      'matrixStats'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setTags.SampleNormalization: no visible global function definition for
      'trim'
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      'throw'
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      'str'
    snpsNByTotalAndFracB.matrix: no visible global function definition for
      'rowAlls'
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

# oce

Version: 0.9-22

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: gsw
    Loading required package: testthat
    Quitting from lines 407-415 (oce.Rmd) 
    Error: processing vignette 'oce.Rmd' failed with diagnostics:
    must install.packages("rgdal") to plot maps with projections
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'rgdal'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1029.3Mb
      sub-directories of 1Mb or more:
        R     1024.7Mb
        help     2.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'rgdal'
    ```

# officer

Version: 0.1.8

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: add_slide
    > ### Title: add a slide
    > ### Aliases: add_slide
    > 
    > ### ** Examples
    > 
    > my_pres <- read_pptx()
    
     *** caught segfault ***
    address 0x2b0400000000, cause 'memory not mapped'
    
    Traceback:
     1: .Call("xml2_doc_parse_file", PACKAGE = "xml2", path, encoding,     as_html, options)
     2: doc_parse_file(con, encoding = encoding, as_html = as_html, options = options)
     3: read_xml.character(file)
     4: read_xml(file)
     5: read_table_style(package_dir)
     6: read_pptx()
    An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      20: eval(exprs, env)
      21: eval(exprs, env)
      22: source_file(path, new.env(parent = env), chdir = TRUE)
      23: force(code)
      24: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE)        end_context()    })
      25: FUN(X[[i]], ...)
      26: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE)
      27: force(code)
      28: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE))
      29: test_files(paths, reporter = reporter, env = env, ...)
      30: test_dir(test_path, reporter = reporter, env = env, filter = filter,     ...)
      31: with_top_env(env, {    test_dir(test_path, reporter = reporter, env = env, filter = filter,         ...)})
      32: run_tests(package, test_path, filter, reporter, ...)
      33: test_check("officer")
      An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking whether package 'officer' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: program compiled against libxml 209 using older 207
    See '/cbc/henrik/repositories/R.utils/revdep/checks/officer/new/officer.Rcheck/00install.out' for details.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    See section 'Generic functions and methods' in the 'Writing R
    Extensions' manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    The argument of a replacement function which corresponds to the right
    hand side must be named 'value'.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    13: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))
    14: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))
    15: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)
    16: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
    17: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))
    18: block_exec(params)
    19: call_block(x)
    20: process_group.block(group)
    21: process_group(group)
    22: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = "\n", file = output %n% "")        message("Quitting from lines ", paste(current_lines(i),             collapse = "-"), " (", knit_concord$get("infile"),             ") ")    })
    23: process_file(text, output)
    24: knitr::knit(knit_input, knit_output, envir = envir, quiet = quiet,     encoding = encoding)
    25: rmarkdown::render(file, encoding = encoding, quiet = quiet, envir = globalenv())
    26: vweave_rmarkdown(...)
    27: engine$weave(file, quiet = quiet, encoding = enc)
    28: doTryCatch(return(expr), name, parentenv, handler)
    29: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    30: tryCatchList(expr, classes, parentenv, handlers)
    31: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
    32: buildVignettes(dir = "/cbc/henrik/repositories/R.utils/revdep/checks/officer/new/officer.Rcheck/vign_test/officer")
    An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.8Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking foreign function calls ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    See chapter 'System and foreign language interfaces' in the 'Writing R
    Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# openCyto

Version: 1.14.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      'flowWorkspace' 'flowViz' 'ncdfFlow' 'flowStats' 'flowClust'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# paxtoolsr

Version: 1.10.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rJava'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# PGA

Version: 1.6.0

## In both

*   checking whether package 'PGA' can be installed ... ERROR
    ```
    Installation failed.
    See '/cbc/henrik/repositories/R.utils/revdep/checks/PGA/new/PGA.Rcheck/00install.out' for details.
    ```

## Installation

### Devel

```
* installing *source* package 'PGA' ...
** R
** inst
** preparing package for lazy loading
Error: package or namespace load failed for 'rTANDEM' in library.dynam(lib, package, package.lib):
 shared object 'rTANDEM.so' not found
Error : package 'rTANDEM' could not be loaded
ERROR: lazy loading failed for package 'PGA'
* removing '/cbc/henrik/repositories/R.utils/revdep/checks/PGA/new/PGA.Rcheck/PGA'

```
### CRAN

```
* installing *source* package 'PGA' ...
** R
** inst
** preparing package for lazy loading
Error: package or namespace load failed for 'rTANDEM' in library.dynam(lib, package, package.lib):
 shared object 'rTANDEM.so' not found
Error : package 'rTANDEM' could not be loaded
ERROR: lazy loading failed for package 'PGA'
* removing '/cbc/henrik/repositories/R.utils/revdep/checks/PGA/old/PGA.Rcheck/PGA'

```
# PhenotypeSimulator

Version: 0.1.3

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

# PopGenReport

Version: 3.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rgdal'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# psichomics

Version: 1.2.1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1026.0Mb
      sub-directories of 1Mb or more:
        doc  1024.8Mb
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
      'R.utils' 'rmeta'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ChisqTest_expect: no visible global function definition for 'pchisq'
    plot_chase_observed_expected: no visible global function definition for
      'meta.MH'
    plot_chase_observed_expected: no visible global function definition for
      'txtProgressBar'
    plot_chase_observed_expected: no visible global function definition for
      'setTxtProgressBar'
    test.one.treated: no visible global function definition for
      'fisher.test'
    test_one: no visible global function definition for 'rbinom'
    test_one: no visible global function definition for 'fisher.test'
    Undefined global functions or variables:
      fisher.test meta.MH pchisq rbinom setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("stats", "fisher.test", "pchisq", "rbinom")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# QDNAseq

Version: 1.12.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'exportVCF'
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# ReporteRs

Version: 0.8.8

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'ReporteRsjars' 'rJava'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# ReportingTools

Version: 2.16.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/runTests.R' failed.
    Last 13 lines of output:
      ERROR in /cbc/henrik/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R: Error while sourcing  /cbc/henrik/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R : Error in .requirePackage(package) : 
        unable to find required package 'DESeq'
      
      Test files with failing tests
      
         test_DESeqDataSet.R 
           /cbc/henrik/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqDataSet.R 
      
         test_DESeqResults.R 
           /cbc/henrik/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R 
      
      
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

# Rnightlights

Version: 0.1.2

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'cleangeo' 'gdalUtils' 'rgdal' 'rgeos'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# ROI.models.miplib

Version: 0.0-1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'Rglpk'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# RxODE

Version: 0.6-1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'SnakeCharmR' 'rSymPy'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.7Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# sdmpredictors

Version: 0.2.6

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'rgdal'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# SDMTools

Version: 1.1-221

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'raster' 'sp'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    quick.map: no visible global function definition for 'image'
    raster.from.asc: no visible global function definition for 'raster'
    raster.from.asc: no visible global function definition for
      'projection<-'
    raster.from.asc: no visible global function definition for 'setValues'
    slope: no visible global function definition for 'setValues'
    sp.from.asc: no visible global function definition for 'CRS'
    sp.from.asc: no visible global function definition for 'GridTopology'
    sp.from.asc: no visible global function definition for
      'SpatialGridDataFrame'
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

# simPATHy

Version: 0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 2048.3Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
        doc   1024.0Mb
    ```

# snplist

Version: 0.18

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'snplist.tex' failed.
    LaTeX errors:
    ! File ended while scanning use of \beamer@processframefirstline.
    <inserted text> 
                    \par 
    <*> \nonstopmode \input ./snplist.tex
                                         
    ! Emergency stop.
    <*> \nonstopmode \input ./snplist.tex
                                         
    *** (job aborted, no legal \end found)
    
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# SpaDES.core

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'quickPlot'
    
    Packages suggested but not available for checking: 'rgdal' 'SpaDES.tools'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# spm12r

Version: 2.3.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 35-44 (fmri_processing_spm12r.Rmd) 
    Error: processing vignette 'fmri_processing_spm12r.Rmd' failed with diagnostics:
    Error in 'git2r_clone': the SSL certificate is invalid
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'utils'
      All declared Imports should be used.
    ```

# stplanr

Version: 0.1.9

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'rgdal' 'rgeos'
    
    Package suggested but not available for checking: 'tmap'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# TBSSurvival

Version: 1.3

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    LaTeX errors:
    ! Use of \caption@@settype doesn't match its definition.
    \@ifnextchar ... \reserved@d =#1\def \reserved@a {
                                                      #2}\def \reserved@b {#3}\f...
    l.236 ...tnormal{Normal}(0,2^2)$; $\beta_0 = 1$).}
                                                      
    ! Argument of \@firstoftwo has an extra }.
    <inserted text> 
                    \par 
    l.236 ...tnormal{Normal}(0,2^2)$; $\beta_0 = 1$).}
                                                      
    ! Use of \caption@@settype doesn't match its definition.
    \@ifnextchar ... \reserved@d =#1\def \reserved@a {
                                                      #2}\def \reserved@b {#3}\f...
    l.236 ...tnormal{Normal}(0,2^2)$; $\beta_0 = 1$).}
                                                      
    ! Use of \@icentercr doesn't match its definition.
    \@ifnextchar ...eserved@d =#1\def \reserved@a {#2}
                                                      \def \reserv
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# TCGAbiolinks

Version: 2.5.9

## In both

*   checking examples ... ERROR
    ```
    ...
    o Preparing output
    -------------------
    > GDCdownload(query)
    Downloading data for project TCGA-COAD
    Of the 2 files for download 2 already exist.
    All samples have been already downloaded
    > clinical <- GDCprepare_clinic(query,"patient")
    
      |                                                                            
      |                                                                      |   0%
     *** caught segfault ***
    address 0x2b9b00000000, cause 'memory not mapped'
    
    Traceback:
     1: .Call("xml2_doc_parse_file", PACKAGE = "xml2", path, encoding,     as_html, options)
     2: doc_parse_file(con, encoding = encoding, as_html = as_html, options = options)
     3: read_xml.character(xmlfile)
     4: read_xml(xmlfile)
     5: parseXML(files, xpath, clinical.info)
     6: GDCprepare_clinic(query, "patient")
    An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      
      gzip: stdin: not in gzip format
      /bin/gtar: Child returned status 1
      /bin/gtar: Error is not recoverable: exiting now
      1. Error: TCGAvisualize_meanMethylation works (@test-visualize.R#29) -----------
      I couldn't find all the files from the query. Please check if the directory parameter right or GDCdownload downloaded the samples.
      1: GDCprepare(query) at testthat/test-visualize.R:29
      2: stop(paste0("I couldn't find all the files from the query. ", "Please check if the directory parameter right or GDCdownload downloaded the samples."))
      
      testthat results ================================================================
      OK: 74 SKIPPED: 0 FAILED: 1
      1. Error: TCGAvisualize_meanMethylation works (@test-visualize.R#29) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking whether package 'TCGAbiolinks' can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: program compiled against libxml 209 using older 207
    See '/cbc/henrik/repositories/R.utils/revdep/checks/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00install.out' for details.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    See section 'Generic functions and methods' in the 'Writing R
    Extensions' manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    The argument of a replacement function which corresponds to the right
    hand side must be named 'value'.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:S4Vectors':
    
        first, intersect, rename, setdiff, setequal, union
    
    The following objects are masked from 'package:BiocGenerics':
    
        combine, intersect, setdiff, union
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 16-20 (clinical.Rmd) 
    Error: processing vignette 'clinical.Rmd' failed with diagnostics:
    there is no package called 'DT'
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 6147.9Mb
      sub-directories of 1Mb or more:
        R        1.1Mb
        data     2.3Mb
        doc   6144.3Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    ```

*   checking foreign function calls ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    See chapter 'System and foreign language interfaces' in the 'Writing R
    Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      'limmacontrasts.fit'
    TCGAanalyze_analyseGRN: no visible global function definition for
      'knnmi.cross'
    TCGAanalyze_networkInference: no visible global function definition for
      'c3net'
    TCGAanalyze_networkInference: no visible global function definition for
      'minet'
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      'dNetInduce'
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      'dNetPipeline'
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      'dCommSignif'
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      'visNet'
    TCGAvisualize_oncoprint: no visible binding for global variable 'value'
    getTSS: no visible global function definition for 'promoters'
    Undefined global functions or variables:
      c3net dCommSignif dNetInduce dNetPipeline knnmi.cross
      limmacontrasts.fit limmamakeContrasts minet portions promoters value
      visNet
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Warning: program compiled against libxml 209 using older 207
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: 'DT'
    ```

# tmle.npvi

Version: 0.10.0

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 1024.6Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    tmle.npvi.: no visible global function definition for 'update'
    update.NPVI: no visible global function definition for 'gaussian'
    updateConv.NPVI: no visible global function definition for 'tail'
    updateGNonTab.NPVI : g1: no visible binding for global variable
      'qlogis'
    updateGNonTab.NPVI : g1: no visible binding for global variable
      'plogis'
    updateGTab.NPVI: no visible binding for global variable 'qlogis'
    updateGTab.NPVI: no visible binding for global variable 'plogis'
    updatePsi.NPVI: no visible global function definition for 'str'
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

# ToPASeq

Version: 1.10.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section 'Package
    structure' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.3Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      'DEGraph' 'plotrix'
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    degree,Pathway-character: no visible global function definition for
      'setNames'
    nodes<-,Pathway-character: no visible global function definition for
      'setNames'
    Undefined global functions or variables:
      abline arrows colorRampPalette combn cor cov density getEntryID
      getName installed.packages layout legend median model.matrix na.omit
      p.adjust par pchisq perms pf phyper plot.new plot.window pnorm points
      polygon qchisq qnorm rbinom rnorm sd setNames strheight strwidth
      symbols t.test text title
    Consider adding
      importFrom("grDevices", "colorRampPalette")
      importFrom("graphics", "abline", "arrows", "layout", "legend", "par",
                 "plot.new", "plot.window", "points", "polygon", "strheight",
                 "strwidth", "symbols", "text", "title")
      importFrom("stats", "cor", "cov", "density", "median", "model.matrix",
                 "na.omit", "p.adjust", "pchisq", "pf", "phyper", "pnorm",
                 "qchisq", "qnorm", "rbinom", "rnorm", "sd", "setNames",
                 "t.test")
      importFrom("utils", "combn", "installed.packages")
    to your NAMESPACE file.
    ```

# Uniquorn

Version: 1.4.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.8Mb
    ```

# vortexR

Version: 1.1.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: 'glmulti'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

