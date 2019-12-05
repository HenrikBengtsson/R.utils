# affxparser

<details>

* Version: 1.58.0
* Source code: https://github.com/cran/affxparser
* URL: https://github.com/HenrikBengtsson/affxparser
* BugReports: https://github.com/HenrikBengtsson/affxparser/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 4

Run `revdep_details(,"affxparser")` for more info

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
      installed size is 16.4Mb
      sub-directories of 1Mb or more:
        libs  15.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# arc

<details>

* Version: 1.2
* Source code: https://github.com/cran/arc
* URL: https://github.com/kliegr/arc
* BugReports: https://github.com/kliegr/arc/issues
* Date/Publication: 2018-04-18 13:23:29 UTC
* Number of recursive dependencies: 9

Run `revdep_details(,"arc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qCBA’
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.affymetrix
* URL: https://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    ```

# aroma.core

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2019-06-17 18:20:03 UTC
* Number of recursive dependencies: 46

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("image", function(x, ...) standardGeneric("image")) : 
      could not find function "setGeneric"
    ```

# aroma.light

<details>

* Version: 3.16.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, https://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 6

Run `revdep_details(,"aroma.light")` for more info

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

* Version: 1.8.0
* Source code: https://github.com/cran/AUCell
* URL: http://scenic.aertslab.org
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 169

Run `revdep_details(,"AUCell")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 methods:
      generic 'cbind' and siglist 'aucellResults'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Objects in \usage without \alias in documentation object 'aucellResults-class':
      ‘\S4method{cbind}{aucellResults}’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG'
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘rbokeh’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘BiocGenerics’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘S4Vectors:::disableValidity’
      See the note in ?`:::` about the use of this operator.
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
    Package unavailable to check Rd xrefs: ‘SingleCellExperiment’
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘reshape2’
    ```

# BioInstaller

<details>

* Version: 0.3.7
* Source code: https://github.com/cran/BioInstaller
* URL: https://github.com/JhuangLab/BioInstaller
* BugReports: https://github.com/JhuangLab/BioInstaller/issues
* Date/Publication: 2018-11-20 15:50:09 UTC
* Number of recursive dependencies: 122

Run `revdep_details(,"BioInstaller")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        doc       2.5Mb
        extdata   8.7Mb
    ```

# biomartr

<details>

* Version: 0.9.0
* Source code: https://github.com/cran/biomartr
* URL: https://github.com/ropensci/biomartr
* BugReports: https://github.com/ropensci/biomartr/issues
* Date/Publication: 2019-05-21 17:40:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(,"biomartr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘fs’
      All declared Imports should be used.
    ```

# biscuiteer

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/biscuiteer
* URL: https://github.com/trichelab/biscuiteer
* BugReports: https://github.com/trichelab/biscuiteer/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 197

Run `revdep_details(,"biscuiteer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
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

* Version: 1.22.0
* Source code: https://github.com/cran/bsseq
* URL: https://github.com/kasperdanielhansen/bsseq
* BugReports: https://github.com/kasperdanielhansen/bsseq/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 112

Run `revdep_details(,"bsseq")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bsseqData’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.1Mb
      sub-directories of 1Mb or more:
        data   6.5Mb
        doc    1.9Mb
        libs   2.6Mb
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
    Package unavailable to check Rd xrefs: ‘bsseqData’
    ```

# Causata

<details>

* Version: 4.2-0
* Source code: https://github.com/cran/Causata
* URL: www.causata.com
* Date/Publication: 2016-12-05 18:28:46
* Number of recursive dependencies: 75

Run `revdep_details(,"Causata")` for more info

</details>

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

# ChemoSpec

<details>

* Version: 5.1.48
* Source code: https://github.com/cran/ChemoSpec
* URL: https://bryanhanson.github.io/ChemoSpec/
* BugReports: https://github.com/bryanhanson/ChemoSpec/issues
* Date/Publication: 2019-07-25 19:00:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(,"ChemoSpec")` for more info

</details>

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

# ChocoLattes

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/ChocoLattes
* Date/Publication: 2017-04-29 14:44:28 UTC
* Number of recursive dependencies: 79

Run `revdep_details(,"ChocoLattes")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘tools’
      All declared Imports should be used.
    ```

# circRNAprofiler

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/circRNAprofiler
* URL: https://github.com/Aufiero/circRNAprofiler
* BugReports: https://github.com/Aufiero/circRNAprofiler/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 202

Run `revdep_details(,"circRNAprofiler")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    ```

# CNEr

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/CNEr
* URL: https://github.com/ge11232002/CNEr
* BugReports: https://github.com/ge11232002/CNEr/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 155

Run `revdep_details(,"CNEr")` for more info

</details>

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

*   checking installed package size ... NOTE
    ```
      installed size is 20.2Mb
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

# countyfloods

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/countyfloods
* Date/Publication: 2017-10-26 03:22:55 UTC
* Number of recursive dependencies: 92

Run `revdep_details(,"countyfloods")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# cTRAP

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/cTRAP
* URL: https://github.com/nuno-agostinho/cTRAP
* BugReports: https://github.com/nuno-agostinho/cTRAP/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 114

Run `revdep_details(,"cTRAP")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data   4.3Mb
        doc    1.5Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# CVXR

<details>

* Version: 0.99-7
* Source code: https://github.com/cran/CVXR
* URL: https://cvxr.rbind.io, https://www.cvxgrp.org/CVXR/
* BugReports: https://github.com/cvxgrp/CVXR/issues
* Date/Publication: 2019-11-07 11:10:05 UTC
* Number of recursive dependencies: 54

Run `revdep_details(,"CVXR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        libs   6.5Mb
    ```

# DatabaseConnector

<details>

* Version: 2.4.1
* Source code: https://github.com/cran/DatabaseConnector
* URL: https://ohdsi.github.io/DatabaseConnector, https://github.com/OHDSI/DatabaseConnector
* BugReports: https://github.com/OHDSI/DatabaseConnector/issues
* Date/Publication: 2019-07-18 11:18:41 UTC
* Number of recursive dependencies: 70

Run `revdep_details(,"DatabaseConnector")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DatabaseConnectorJars’
      All declared Imports should be used.
    ```

# datapackage.r

<details>

* Version: 0.1.2
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2019-11-25 11:40:03 UTC
* Number of recursive dependencies: 130

Run `revdep_details(,"datapackage.r")` for more info

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

* Version: 1.6.0
* Source code: https://github.com/cran/ddPCRclust
* URL: https://github.com/bgbrink/ddPCRclust
* BugReports: https://github.com/bgbrink/ddPCRclust/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 137

Run `revdep_details(,"ddPCRclust")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    exportPlots: no visible binding for global variable ‘Cluster’
    Undefined global functions or variables:
      Cluster
    ```

# DeepBlueR

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 143

Run `revdep_details(,"DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

<details>

* Version: 1.38.0
* Source code: https://github.com/cran/DEGraph
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 41

Run `revdep_details(,"DEGraph")` for more info

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

# demi

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/demi
* URL: http://biit.cs.ut.ee/demi
* Date/Publication: 2015-02-13 20:22:57
* Number of recursive dependencies: 135

Run `revdep_details(,"demi")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    ```

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

# dplR

<details>

* Version: 1.7.0
* Source code: https://github.com/cran/dplR
* URL: https://github.com/AndyBunn/dplR
* Date/Publication: 2019-07-18 11:20:08 UTC
* Number of recursive dependencies: 89

Run `revdep_details(,"dplR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘tikzDevice’
    ```

# DropletUtils

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/DropletUtils
* Date/Publication: 2019-10-30
* Number of recursive dependencies: 76

Run `revdep_details(,"DropletUtils")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.5Mb
      sub-directories of 1Mb or more:
        libs  26.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# DupChecker

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/DupChecker
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 16

Run `revdep_details(,"DupChecker")` for more info

</details>

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

# Eagle

<details>

* Version: 2.1.1
* Source code: https://github.com/cran/Eagle
* URL: http://eagle.r-forge.r-project.org
* Date/Publication: 2019-11-17 22:10:06 UTC
* Number of recursive dependencies: 64

Run `revdep_details(,"Eagle")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        libs  12.6Mb
    ```

# eegc

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/eegc
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 160

Run `revdep_details(,"eegc")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: package or namespace load failed for ‘eegc’:
     unable to load R code in package ‘enrichplot’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'barplotEnrich.Rd':
      ‘[DOSE]{barplot.enrichResult}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        data  10.5Mb
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
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
    Execution halted
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocStyle’
    ```

# ELMER

<details>

* Version: 2.10.0
* Source code: https://github.com/cran/ELMER
* Date/Publication: 2019-11-06
* Number of recursive dependencies: 213

Run `revdep_details(,"ELMER")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: package or namespace load failed for 'ELMER':
     unable to load R code in package 'geneplotter'
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package 'geneplotter'
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

*   checking Rd \usage sections ... WARNING
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

*   checking installed package size ... NOTE
    ```
      installed size is 75.6Mb
      sub-directories of 1Mb or more:
        doc  75.1Mb
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
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package 'geneplotter'
    Execution halted
    ```

# enrichTF

<details>

* Version: 1.2.3
* Source code: https://github.com/cran/enrichTF
* URL: https://github.com/wzthu/enrichTF
* BugReports: https://github.com/wzthu/enrichTF/issues
* Date/Publication: 2019-11-18
* Number of recursive dependencies: 171

Run `revdep_details(,"enrichTF")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: package or namespace load failed for ‘enrichTF’:
     unable to load R code in package ‘enrichplot’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
    Execution halted
    ```

# esATAC

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/esATAC
* URL: https://github.com/wzthu/esATAC
* BugReports: https://github.com/wzthu/esATAC/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 193

Run `revdep_details(,"esATAC")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘GOSemSim’
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

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        doc       3.5Mb
        extdata   5.2Mb
        libs      3.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘ShortRead:::.ShortReadQQA’ ‘ShortRead:::.qa_adapterContamination’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘GOSemSim’
    Execution halted
    ```

# eudysbiome

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/eudysbiome
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 25

Run `revdep_details(,"eudysbiome")` for more info

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

<details>

* Version: 3.20.0
* Source code: https://github.com/cran/FGNet
* URL: http://www.cicancer.org
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 108

Run `revdep_details(,"FGNet")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    
    Attaching package: ‘S4Vectors’
    
    The following object is masked from ‘package:base’:
    
        expand.grid
    
    
    > 
    > plotGoAncestors(c("GO:0051603", "GO:0019941", "GO:0051128","GO:0044265"), 
    +     plotOutput="dynamic")
    Warning: no DISPLAY variable so Tk is not available
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "font".
    Calls: plotGoAncestors ... .tkplot.convert.font -> <Anonymous> -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      gtkTextBufferGetStartIter gtkTextBufferGetText gtkTextBufferNew
      gtkTextBufferSetText gtkTextViewGetBuffer gtkTextViewNewWithBuffer
      gtkTextViewSetBuffer gtkVBox gtkVBoxNew gtkViewportNew
      gtkWidgetGetSensitive gtkWidgetSetSensitive gtkWindowNew hclust image
      install.packages installed.packages keys layout legend new
      pangoFontDescriptionFromString par parseHTTPHeader parse_XMLfile plot
      plot_profile png postForm quantile rainbow rawResults
      reactomeEXTID2PATHID reactomePATHID2EXTID reactomePATHID2NAME
      read.csv read.table readList select setAnnotationCategories setNames
      sigGenes title url.exists write.table
    Consider adding
      importFrom("grDevices", "col2rgb", "dev.off", "png", "rainbow")
      importFrom("graphics", "abline", "axis", "barplot", "box", "boxplot",
                 "image", "layout", "legend", "par", "plot", "title")
      importFrom("methods", "new")
      importFrom("stats", "dist", "hclust", "quantile", "setNames")
      importFrom("utils", "View", "browseURL", "data", "download.file",
                 "install.packages", "installed.packages", "read.csv",
                 "read.table", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# fitteR

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/fitteR
* Date/Publication: 2017-12-11 14:27:45 UTC
* Number of recursive dependencies: 192

Run `revdep_details(,"fitteR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
                        ncol = ncol(AllStarts))
                      AllStarts <- cbind(V, v)
                    }
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
    <bytecode: 0x55d82bed53c8>
    <environment: namespace:fitteR>
     --- function search by body ---
    Function fitter in namespace fitteR has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Fatal error: length > 1 in coercion to logical
    ```

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c("lastFuncGrad", "lastFuncParam")) : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘fitteR’:
     unable to load R code in package ‘maxLik’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setOldClass(c("maxLik", "maxim")) : 
      could not find function "setOldClass"
    Error: unable to load R code in package ‘maxLik’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ExtDist’
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
    Error in setOldClass(c("maxLik", "maxim")) : 
      could not find function "setOldClass"
    Error: unable to load R code in package ‘maxLik’
    Execution halted
    ```

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
    

# hashFunction

<details>

* Version: 1.0
* Source code: https://github.com/cran/hashFunction
* Date/Publication: 2013-03-25 14:21:08
* Number of recursive dependencies: 4

Run `revdep_details(,"hashFunction")` for more info

</details>

## In both

*   checking package namespace information ... NOTE
    ```
      Namespace with empty importFrom: ‘utils’
    ```

# HiCBricks

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/HiCBricks
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 83

Run `revdep_details(,"HiCBricks")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc       4.4Mb
        extdata   2.2Mb
    ```

# hoardeR

<details>

* Version: 0.9.4-2
* Source code: https://github.com/cran/hoardeR
* Date/Publication: 2019-02-12 08:23:21 UTC
* Number of recursive dependencies: 61

Run `revdep_details(,"hoardeR")` for more info

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

Run `revdep_details(,"HyPhy")` for more info

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

# imagefluency

<details>

* Version: 0.2.1
* Source code: https://github.com/cran/imagefluency
* URL: https://stm.github.io/imagefluency
* BugReports: https://github.com/stm/imagefluency/issues
* Date/Publication: 2019-09-27 09:50:02 UTC
* Number of recursive dependencies: 84

Run `revdep_details(,"imagefluency")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘quadprog’
      All declared Imports should be used.
    ```

# KnowSeq

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/KnowSeq
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 218

Run `revdep_details(,"KnowSeq")` for more info

</details>

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'dataPlot':
    dataPlot
      Code: function(data, labels, colours = c("green", "red"), main = "",
                     ylab = "Expression", xlab = "Samples", xgrid = FALSE,
                     ygrid = FALSE, legend = "", mode = "boxplot", clusters
                     = 2, toPNG = FALSE, toPDF = FALSE)
      Docs: function(data, labels, colours = c("green", "red"), main = "",
                     ylab = "Expression", xlab = "Samples", legend = "",
                     mode = "boxplot", clusters = 2, toPNG = FALSE, toPDF =
                     FALSE)
      Argument names in code not in docs:
        xgrid ygrid
      Mismatches in argument names (first 3):
        Position: 7 Code: xgrid Docs: legend
        Position: 8 Code: ygrid Docs: mode
        Position: 9 Code: legend Docs: clusters
    ```

*   checking R code for possible problems ... NOTE
    ```
    limmaDEGsExtraction: warning in topTable(fit, number = number, coef =
      2, sort.by = "logFC", p.value = pvalue, adjust = "fdr", lfc = lfc):
      partial argument match of 'adjust' to 'adjust.method'
    dataPlot: no visible binding for global variable ‘Classes’
    dataPlot: no visible binding for global variable ‘Value’
    dataPlot: no visible global function definition for ‘grid’
    Undefined global functions or variables:
      Classes Value grid
    Consider adding
      importFrom("graphics", "grid")
    to your NAMESPACE file.
    ```

# link2GI

<details>

* Version: 0.4-0
* Source code: https://github.com/cran/link2GI
* URL: https://github.com/r-spatial/link2GI
* Date/Publication: 2019-11-22 20:50:02 UTC
* Number of recursive dependencies: 125

Run `revdep_details(,"link2GI")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘methods’ ‘tools’
      All declared Imports should be used.
    ```

# listenv

<details>

* Version: 0.7.0
* Source code: https://github.com/cran/listenv
* URL: https://github.com/HenrikBengtsson/listenv
* BugReports: https://github.com/HenrikBengtsson/listenv/issues
* Date/Publication: 2018-01-21 21:55:48 UTC
* Number of recursive dependencies: 9

Run `revdep_details(,"listenv")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/parse_env_subset,dimensions.R’ failed.
    Last 13 lines of output:
          }
          stopifnot(is.environment(res$envir))
          stopifnot(is.character(res$name))
          stopifnot(is.null(res$subset) || is.list(res$subset))
          stopifnot(is.null(res$idx) || all(is.numeric(res$idx)))
          stopifnot(is.logical(res$exists), !anyNA(res$exists))
          stopifnot(length(res$exists) == length(res$idx))
          res
      }
      <bytecode: 0x564ad96ff440>
      <environment: namespace:listenv>
       --- function search by body ---
      Function parse_env_subset in namespace listenv has this body.
       ----------- END OF FAILURE REPORT -------------- 
      Fatal error: length > 1 in coercion to logical
    ```

# LSPFP

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/LSPFP
* Date/Publication: 2016-05-19 16:35:29
* Number of recursive dependencies: 13

Run `revdep_details(,"LSPFP")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tcltk2’
      All declared Imports should be used.
    ```

# MACSQuantifyR

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/MACSQuantifyR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 86

Run `revdep_details(,"MACSQuantifyR")` for more info

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

* Version: 1.12.0
* Source code: https://github.com/cran/methylKit
* URL: http://code.google.com/p/methylkit/
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 114

Run `revdep_details(,"methylKit")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
        pr = prcomp(mat, scale. = FALSE, center = FALSE)
        pr$rotation[, comp] = 0
        res = pr$x %*% t(pr$rotation)
        res = (scale(res, center = (-centers/scales), scale = 1/scales))
        attr(res, "scaled:center") <- NULL
        attr(res, "scaled:scale") <- NULL
        res[res > 100] = 100
        res[res < 0] = 0
        reconstruct(res, mBase, save.db = save.db, ... = ...)
    }
    <bytecode: 0x5556697fe520>
    <environment: namespace:methylKit>
    
    Signatures:
            mBase       
    target  "methylBase"
    defined "methylBase"
     --- function search by body ---
    S4 Method removeComp:methylKit defined in namespace methylKit with signature methylBase has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Fatal error: length > 1 in coercion to logical
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        doc    1.4Mb
        libs   4.0Mb
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

# msgbsR

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/msgbsR
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 159

Run `revdep_details(,"msgbsR")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
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
      ratdata.rda     318Kb    125Kb       xz
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

*   checking R code for possible problems ... NOTE
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    ```

# MSIseq

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/MSIseq
* Date/Publication: 2015-06-15 16:26:10
* Number of recursive dependencies: 9

Run `revdep_details(,"MSIseq")` for more info

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

# netboost

<details>

* Version: 1.2.2
* Source code: https://github.com/cran/netboost
* URL: https://bioconductor.org/packages/release/bioc/html/netboost.html
* BugReports: https://github.com/PascalSchlosser/netboost/issues
* Date/Publication: 2019-11-27
* Number of recursive dependencies: 101

Run `revdep_details(,"netboost")` for more info

</details>

## In both

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

# networktools

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/networktools
* URL: https://CRAN.R-project.org/package=networktools
* BugReports: http://github.com/paytonjjones/networktools/issues
* Date/Publication: 2019-05-20 18:50:09 UTC
* Number of recursive dependencies: 161

Run `revdep_details(,"networktools")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘networktools’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    ```

# nhdplusTools

<details>

* Version: 0.3.11
* Source code: https://github.com/cran/nhdplusTools
* URL: https://github.com/usgs-r/nhdplusTools
* BugReports: https://github.com/usgs-r/nhdplusTools/issues
* Date/Publication: 2019-11-07 14:50:02 UTC
* Number of recursive dependencies: 129

Run `revdep_details(,"nhdplusTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        extdata   5.5Mb
    ```

# nlmixr

<details>

* Version: 1.1.1-3
* Source code: https://github.com/cran/nlmixr
* URL: https://github.com/nlmixrdevelopment/nlmixr
* Date/Publication: 2019-11-13 13:20:02 UTC
* Number of recursive dependencies: 167

Run `revdep_details(,"nlmixr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.7Mb
      sub-directories of 1Mb or more:
        libs  19.0Mb
    ```

# oce

<details>

* Version: 1.1-1
* Source code: https://github.com/cran/oce
* URL: https://dankelley.github.io/oce
* BugReports: https://github.com/dankelley/oce/issues
* Date/Publication: 2019-06-17 12:20:03 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"oce")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        R      2.3Mb
        doc    2.6Mb
        help   2.6Mb
        libs   5.3Mb
    ```

# openCyto

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 113

Run `revdep_details(,"openCyto")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'openCyto.Rd':
      ‘[openCyto:gating-methods]{gating}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
        gs
    
    Codoc mismatches from documentation object 'gs_remove_gating_method':
    gs_remove_gating_method
      Code: function(gs)
      Docs: function(GatingSet)
      Argument names in code not in docs:
        gs
      Argument names in docs not in code:
        GatingSet
      Mismatches in argument names:
        Position: 1 Code: gs Docs: GatingSet
    gs_remove_gating_method
      Code: function(gs)
      Docs: function(GatingSetList)
      Argument names in code not in docs:
        gs
      Argument names in docs not in code:
        GatingSetList
      Mismatches in argument names:
        Position: 1 Code: gs Docs: GatingSetList
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'gs_add_gating_method_init'
      ‘GatingSet’ ‘GatingSetList’ ‘gs’
    
    Undocumented arguments in documentation object 'gs_remove_gating_method'
      ‘GatingSet’ ‘GatingSetList’
    
    Documented arguments not in \usage in documentation object 'gt_gating':
      ‘env_fct’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

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

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc    2.6Mb
        libs   3.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘parallel’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘flowViz’
      All declared Imports should be used.
    ':::' call which should be '::': ‘flowWorkspace:::gh_pop_is_negated’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘flowClust:::.ellipsePoints’ ‘flowStats:::drvkde’
      ‘flowStats:::warpSetNCDF’ ‘flowWorkspace:::.addGate’
      ‘flowWorkspace:::.cpp_addGate’ ‘flowWorkspace:::.cpp_boolGating’
      ‘flowWorkspace:::.cpp_setIndices’
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

# pathfindR

<details>

* Version: 1.4.1
* Source code: https://github.com/cran/pathfindR
* URL: https://github.com/egeulgen/pathfindR
* BugReports: https://github.com/egeulgen/pathfindR/issues
* Date/Publication: 2019-11-15 11:10:06 UTC
* Number of recursive dependencies: 129

Run `revdep_details(,"pathfindR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        R      2.6Mb
        data   1.2Mb
        doc    2.1Mb
    ```

# paxtoolsr

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/paxtoolsr
* URL: https://github.com/BioPAX/paxtoolsr
* Date/Publication: 2019-10-30
* Number of recursive dependencies: 101

Run `revdep_details(,"paxtoolsr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 33.5Mb
      sub-directories of 1Mb or more:
        doc       1.9Mb
        extdata   6.8Mb
        java     24.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘org.Hs.eg.db’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    convertIds: no visible global function definition for ‘select’
    convertIds: no visible binding for global variable ‘org.Hs.eg.db’
    splitSifnxByPathway: no visible global function definition for
      ‘%dopar%’
    Undefined global functions or variables:
      %dopar% org.Hs.eg.db select
    ```

# PGA

<details>

* Version: 1.16.0
* Source code: https://github.com/cran/PGA
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 126

Run `revdep_details(,"PGA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        extdata   1.8Mb
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
      . .I .N .SD CUFF_ID Change Class Evalue Frame Freq Hsapiens ID Index
      LeftBreakpoint LeftNaSeq Mass MutNum Query Qvalue RightBreakpoint
      RightNaSeq Strand Substring Type aapos aaref aavar abc alleleCount
      alleles charge chr chrom cumlen delta_da delta_ppm evalue gene_name
      genename genome<- id isSAP isUnique junType jun_type label miss mods
      mrnaAcc mz name output pep peptide pincoding position pro_name
      proname prot protAcc protein rbindlist readAAStringSet
      readDNAStringSet refbase rsid seqlengths seqlevels seqlevels<- subseq
      transcript tx_name txid txname varbase writeXStringSet x xyz y
    ```

# PhenotypeSimulator

<details>

* Version: 0.3.3
* Source code: https://github.com/cran/PhenotypeSimulator
* URL: https://github.com/HannahVMeyer/PhenotypeSimulator
* BugReports: https://github.com/HannahVMeyer/PhenotypeSimulator/issues
* Date/Publication: 2019-05-15 15:40:03 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"PhenotypeSimulator")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.1Mb
    ```

# PopGenReport

<details>

* Version: 3.0.4
* Source code: https://github.com/cran/PopGenReport
* URL: https://github.com/green-striped-gecko/PopGenReport
* Date/Publication: 2019-02-04 12:13:23 UTC
* Number of recursive dependencies: 109

Run `revdep_details(,"PopGenReport")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# primirTSS

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/primirTSS
* URL: https://github.com/ipumin/primirTSS
* BugReports: http://github.com/ipumin/primirTSS/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 160

Run `revdep_details(,"primirTSS")` for more info

</details>

## In both

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

# profileplyr

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/profileplyr
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 182

Run `revdep_details(,"profileplyr")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘GOSemSim’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘GOSemSim’
    Execution halted
    ```

# Prostar

<details>

* Version: 1.18.3
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2019-11-28
* Number of recursive dependencies: 259

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/R.utils/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘Prostar’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    ```

# proteoQC

<details>

* Version: 1.21.0
* Source code: https://github.com/cran/proteoQC
* URL: https://github.com/wenbostar/proteoQC
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 125

Run `revdep_details(,"proteoQC")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        doc       3.3Mb
        extdata   4.0Mb
    ```

*   checking S3 generic/method consistency ... NOTE
    ```
    Found the following apparent S3 methods exported but not registered:
      print.msQCres
    See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
    manual.
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

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/psichomics
* URL: https://github.com/nuno-agostinho/psichomics
* BugReports: https://github.com/nuno-agostinho/psichomics/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 234

Run `revdep_details(,"psichomics")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘psichomics’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        R     1.2Mb
        doc   5.1Mb
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
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    ```

# PubBias

<details>

* Version: 1.0
* Source code: https://github.com/cran/PubBias
* Date/Publication: 2013-11-21 06:48:21
* Number of recursive dependencies: 4

Run `revdep_details(,"PubBias")` for more info

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

# pulsedSilac

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/pulsedSilac
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 94

Run `revdep_details(,"pulsedSilac")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
    ...
              unk <- xx[enc == "unknown"]
              ind <- .Call(C_check_nonASCII2, unk)
              if (length(ind)) {
                  non_ASCII <<- c(non_ASCII, unk[ind])
                  where <<- c(where, rep.int(ds, length(ind)))
              }
          }
          a <- attributes(x)
          if (!is.null(a)) {
              lapply(a, check_one, ds = ds)
              check_one(names(a), ds)
          }
          invisible()
      }
      <bytecode: 0x565121aa4d98>
      <environment: 0x565121ab2e80>
       --- function search by body ---
       ----------- END OF FAILURE REPORT -------------- 
      Error loading dataset 'wormsPE':
       Error in if (!length(x)) return() : the condition has length > 1
      
    ```

# QDNAseq

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 70

Run `revdep_details(,"QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# RcisTarget

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/RcisTarget
* URL: http://scenic.aertslab.org
* BugReports: https://github.com/aertslab/RcisTarget/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 128

Run `revdep_details(,"RcisTarget")` for more info

</details>

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
    Error in .getSignificantGenes(geneSet = as.character(geneSets[[unique(as.character(enrRnkT_ByGs$geneSet))]]),  : 
      Package 'zoo' is required to calculate the aproximate RCC distributions.To install it, run:	 install.packages('zoo')
    Calls: addSignificantGenes ... .addSignificantGenes -> lapply -> FUN -> .getSignificantGenes
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. RcisTarget:::test_Workflow()
       2. RcisTarget:::.check_addSignificantGenes(...)
       4. RcisTarget::addSignificantGenes(...)
       5. RcisTarget:::.addSignificantGenes(...)
       6. base::lapply(...)
       7. RcisTarget:::FUN(X[[i]], ...)
       8. RcisTarget:::.getSignificantGenes(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 45 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: RcisTarget workflow tests (@test_RcisTarget.R#258) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG', 'zoo'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data   4.4Mb
        doc    1.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported object: ‘arrow::parquet_file_reader’
    ```

# Rcwl

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/Rcwl
* Date/Publication: 2019-11-01
* Number of recursive dependencies: 112

Run `revdep_details(,"Rcwl")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# RCy3

<details>

* Version: 2.6.1
* Source code: https://github.com/cran/RCy3
* URL: https://github.com/cytoscape/RCy3
* BugReports: https://github.com/cytoscape/RCy3/issues
* Date/Publication: 2019-11-19
* Number of recursive dependencies: 40

Run `revdep_details(,"RCy3")` for more info

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
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        doc  11.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    createNetworkFromDataFrames: no visible binding for global variable
      ‘SUID’
    Undefined global functions or variables:
      SUID
    ```

# ReportingTools

<details>

* Version: 2.26.0
* Source code: https://github.com/cran/ReportingTools
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 163

Run `revdep_details(,"ReportingTools")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      ERROR in /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R: Error while sourcing  /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R : Error in .requirePackage(package) : 
        unable to find required package 'DESeq'
      
      Test files with failing tests
      
         test_DESeqDataSet.R 
           /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqDataSet.R 
      
         test_DESeqResults.R 
           /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R 
      
      
      Error in BiocGenerics:::testPackage("ReportingTools") : 
        unit tests failed for package ReportingTools
      Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    ```

# RforProteomics

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/RforProteomics
* URL: http://lgatto.github.com/RforProteomics/
* Date/Publication: 2019-11-10
* Number of recursive dependencies: 259

Run `revdep_details(,"RforProteomics")` for more info

</details>

## In both

*   checking whether package ‘RforProteomics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘MSnbase::plot’ by ‘graphics::plot’ when loading ‘RforProteomics’
    See ‘/home/hb/repositories/R.utils/revdep/checks/RforProteomics/new/RforProteomics.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        doc  10.7Mb
    ```

# RRphylo

<details>

* Version: 2.0.3
* Source code: https://github.com/cran/RRphylo
* Date/Publication: 2019-02-25 14:40:03 UTC
* Number of recursive dependencies: 128

Run `revdep_details(,"RRphylo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.tree’ ‘penalized’
      All declared Imports should be used.
    ```

# SDMTools

<details>

* Version: 1.1-221.2
* Source code: https://github.com/cran/SDMTools
* URL: http://www.rforge.net/SDMTools/
* Date/Publication: 2019-11-30 06:55:27 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"SDMTools")` for more info

</details>

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
    ConnCompLabel: no visible global function definition for ‘setValues’
    SigDiff: no visible global function definition for ‘setValues’
    asc.from.raster: no visible global function definition for ‘getValues’
    aspect: no visible global function definition for ‘setValues’
    grid.area: no visible global function definition for ‘setValues’
    grid.perimeter: no visible global function definition for ‘setValues’
    lcmw: no visible global function definition for ‘setValues’
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
      CRS GridTopology SpatialGridDataFrame getValues projection<- raster
      setValues
    ```

# shinymanager

<details>

* Version: 1.0
* Source code: https://github.com/cran/shinymanager
* URL: https://github.com/datastorm-open/shinymanager
* Date/Publication: 2019-06-19 11:20:04 UTC
* Number of recursive dependencies: 85

Run `revdep_details(,"shinymanager")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘keyring’
    ```

# signatureSearchData

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/signatureSearchData
* Date/Publication: 2019-11-10
* Number of recursive dependencies: 157

Run `revdep_details(,"signatureSearchData")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: package or namespace load failed for ‘signatureSearchData’:
     unable to load R code in package ‘enrichplot’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
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
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
    Execution halted
    ```

# simPATHy

<details>

* Version: 0.3
* Source code: https://github.com/cran/simPATHy
* Date/Publication: 2019-10-18 21:20:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(,"simPATHy")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in setAs("graphNEL", "igraph", function(from) gn2ig_(from)) : 
      could not find function "setAs"
    ```

# simpleSingleCell

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/simpleSingleCell
* URL: https://www.bioconductor.org/help/workflows/simpleSingleCell/
* Date/Publication: 2019-11-20
* Number of recursive dependencies: 130

Run `revdep_details(,"simpleSingleCell")` for more info

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
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        doc   9.2Mb
    ```

# SpaDES.core

<details>

* Version: 0.2.7
* Source code: https://github.com/cran/SpaDES.core
* URL: https://spades-core.predictiveecology.org/, https://github.com/PredictiveEcology/SpaDES.core
* BugReports: https://github.com/PredictiveEcology/SpaDES.core/issues
* Date/Publication: 2019-11-25 17:00:06 UTC
* Number of recursive dependencies: 170

Run `revdep_details(,"SpaDES.core")` for more info

</details>

## In both

*   checking whether package ‘SpaDES.core’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/R.utils/revdep/checks/SpaDES.core/new/SpaDES.core.Rcheck/00install.out’ for details.
    ```

# TBSSurvival

<details>

* Version: 1.3
* Source code: https://github.com/cran/TBSSurvival
* URL: http://code.google.com/p/tbssurvival/
* Date/Publication: 2017-01-05 14:45:36
* Number of recursive dependencies: 12

Run `revdep_details(,"TBSSurvival")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
                attr(out$x, "plot") <- 3
            }
            out$run.time <- .gettime() - initial.time
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
    <bytecode: 0x560c2a4863e0>
    <environment: namespace:TBSSurvival>
     --- function search by body ---
    Function .tbs.survreg in namespace TBSSurvival has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Fatal error: length > 1 in coercion to logical
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/simple.r’ failed.
    Last 13 lines of output:
          else {
              if (verbose) 
                  cat(" failed\n")
              out$convergence <- FALSE
              out$run.time <- .gettime() - initial.time
              cat(paste(method, ": It was not possible to find a feasible solution\n"))
          }
          return(out)
      }
      <bytecode: 0x55de783ee6d0>
      <environment: namespace:TBSSurvival>
       --- function search by body ---
      Function .tbs.survreg in namespace TBSSurvival has this body.
       ----------- END OF FAILURE REPORT -------------- 
      Fatal error: length > 1 in coercion to logical
    ```

*   checking running R code from vignettes ...
    ```
      ‘TBSSurvival.Rnw’using ‘UTF-8’... failed to complete the test
     ERROR
    Errors in running code in vignettes:
    when running code in ‘TBSSurvival.Rnw’
      ...
        return(out)
    }
    <bytecode: 0x558e8ec07940>
    <environment: namespace:TBSSurvival>
     --- function search by body ---
    Function .tbs.survreg in namespace TBSSurvival has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Fatal error: length > 1 in coercion to logical
    
    ... incomplete output.  Crash?
    ```

# TCGAbiolinks

<details>

* Version: 2.14.0
* Source code: https://github.com/cran/TCGAbiolinks
* URL: https://github.com/BioinformaticsFMRP/TCGAbiolinks
* BugReports: https://github.com/BioinformaticsFMRP/TCGAbiolinks/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 259

Run `revdep_details(,"TCGAbiolinks")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: package or namespace load failed for ‘TCGAbiolinks’:
     unable to load R code in package ‘geneplotter’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
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

*   checking installed package size ... NOTE
    ```
      installed size is 95.6Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        data   3.6Mb
        doc   90.2Mb
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
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
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

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘DT’
    'library' or 'require' call not declared from: ‘DT’
    ```

# TCGAutils

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/TCGAutils
* BugReports: https://github.com/waldronlab/TCGAutils/issues
* Date/Publication: 2019-11-28
* Number of recursive dependencies: 210

Run `revdep_details(,"TCGAutils")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘GenomicRanges:::.normarg_field’
      See the note in ?`:::` about the use of this operator.
    ```

# TFEA.ChIP

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/TFEA.ChIP
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 160

Run `revdep_details(,"TFEA.ChIP")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TFEA.ChIP-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: GeneID2entrez
    > ### Title: Translates gene IDs from Gene Symbol or Ensemble ID to Entrez
    > ###   ID.
    > ### Aliases: GeneID2entrez
    > 
    > ### ** Examples
    > 
    > GeneID2entrez(c('TNMD','DPM1','SCYL3','FGR','CFH','FUCA2','GCLC'))
    Done! 7 genes of 7 successfully converted.
    
    [1] "64102" "8813"  "57147" "2268"  "3075"  "2519"  "2729" 
    > GeneID2entrez(c('Mcm6', 'Rpl7', 'Itch' ), mode ="m2m")
    Cache found
    Error in biomaRt::getBM(attributes = c("ensembl_gene_id", "mgi_symbol",  : 
      Multiple cache results found
    Calls: GeneID2entrez -> <Anonymous>
    Execution halted
    ```

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

Run `revdep_details(,"tmle.npvi")` for more info

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

# TNBC.CMS

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/TNBC.CMS
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 118

Run `revdep_details(,"TNBC.CMS")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setGeneric("Makesense", function(expr, lib, ...) standardGeneric("Makesense")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘geneplotter’
    Execution halted
    ```

# Uniquorn

<details>

* Version: 2.6.0
* Source code: https://github.com/cran/Uniquorn
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 107

Run `revdep_details(,"Uniquorn")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        extdata   6.5Mb
    ```

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

* Version: 1.0.0
* Source code: https://github.com/cran/ViSEAGO
* URL: https://forgemia.inra.fr/UMR-BOA/ViSEAGO, https://www.bioconductor.org/packages/release/bioc/html/ViSEAGO.html
* BugReports: https://forgemia.inra.fr/UMR-BOA/ViSEAGO/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 149

Run `revdep_details(,"ViSEAGO")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: package or namespace load failed for ‘ViSEAGO’:
     unable to load R code in package ‘GOSemSim’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘GOSemSim’
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
    Undocumented S4 methods:
      generic 'merge_enrich_terms' and siglist 'list'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
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

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc       3.9Mb
        extdata   2.1Mb
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
    Error in representation(keys = "character", ont = "character", IC = "numeric",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘GOSemSim’
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

# vortexR

<details>

* Version: 1.1.6
* Source code: https://github.com/cran/vortexR
* URL: https://github.com/carlopacioni/vortexR/
* BugReports: https://github.com/carlopacioni/vortexR/issues
* Date/Publication: 2019-02-06 12:50:03 UTC
* Number of recursive dependencies: 123

Run `revdep_details(,"vortexR")` for more info

</details>

## In both

*   checking for missing documentation entries ... ERROR
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

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in representation(precision = "ANY", link = "character", link.phi = "character",  : 
      could not find function "representation"
    Error: package or namespace load failed for ‘vortexR’:
     unable to load R code in package ‘betareg’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in representation(precision = "ANY", link = "character", link.phi = "character",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘betareg’
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
    Error in representation(precision = "ANY", link = "character", link.phi = "character",  : 
      could not find function "representation"
    Error: unable to load R code in package ‘betareg’
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

