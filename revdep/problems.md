# affxparser

<details>

* Version: 1.56.0
* Source code: https://github.com/cran/affxparser
* URL: https://github.com/HenrikBengtsson/affxparser
* BugReports: https://github.com/HenrikBengtsson/affxparser/issues
* Date/Publication: 2019-05-02
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
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        libs  16.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘affy’
    ```

# aroma.affymetrix

<details>

* Version: 3.1.1
* Source code: https://github.com/cran/aroma.affymetrix
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2018-04-16 18:53:05 UTC
* Number of recursive dependencies: 74

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

* Version: 3.1.3
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, http://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2018-05-03 13:41:54 UTC
* Number of recursive dependencies: 45

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# aroma.light

<details>

* Version: 3.14.0
* Source code: https://github.com/cran/aroma.light
* URL: https://github.com/HenrikBengtsson/aroma.light, http://www.aroma-project.org
* BugReports: https://github.com/HenrikBengtsson/aroma.light/issues
* Date/Publication: 2019-05-02
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

* Version: 1.6.1
* Source code: https://github.com/cran/AUCell
* URL: http://scenic.aertslab.org
* Date/Publication: 2019-06-05
* Number of recursive dependencies: 159

Run `revdep_details(,"AUCell")` for more info

</details>

## In both

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
    orderAUC: no visible global function definition for ‘as.dist’
    orderAUC: no visible global function definition for ‘cor’
    orderAUC: no visible global function definition for ‘hclust’
    Undefined global functions or variables:
      %>% as.dist cell cor hclust tsne1 tsne2
    Consider adding
      importFrom("stats", "as.dist", "cor", "hclust")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘SingleCellExperiment’
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘reshape2’
    ```

# bigstep

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/bigstep
* URL: http://github.com/pmszulc/bigstep
* BugReports: http://github.com/pmszulc/bigstep/issues
* Date/Publication: 2019-03-21 17:33:30 UTC
* Number of recursive dependencies: 68

Run `revdep_details(,"bigstep")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# BioInstaller

<details>

* Version: 0.3.7
* Source code: https://github.com/cran/BioInstaller
* URL: https://github.com/JhuangLab/BioInstaller
* BugReports: https://github.com/JhuangLab/BioInstaller/issues
* Date/Publication: 2018-11-20 15:50:09 UTC
* Number of recursive dependencies: 112

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
* Number of recursive dependencies: 98

Run `revdep_details(,"biomartr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘fs’
      All declared Imports should be used.
    ```

# BMSC

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/BMSC
* Date/Publication: 2019-04-16 15:25:42 UTC
* Number of recursive dependencies: 81

Run `revdep_details(,"BMSC")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 89.2Mb
      sub-directories of 1Mb or more:
        libs  88.9Mb
    ```

# bsseq

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/bsseq
* URL: https://github.com/kasperdanielhansen/bsseq
* BugReports: https://github.com/kasperdanielhansen/bsseq/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 99

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
      ‘S4Vectors:::normalize_names_replacement_value’
      ‘S4Vectors:::numeric2integer’ ‘S4Vectors:::sapply_isNULL’
      ‘data.table:::funique’
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
* Number of recursive dependencies: 62

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

* Version: 5.1.9
* Source code: https://github.com/cran/ChemoSpec
* URL: https://bryanhanson.github.io/ChemoSpec/
* BugReports: https://github.com/bryanhanson/ChemoSpec/issues
* Date/Publication: 2019-06-09 18:50:03 UTC
* Number of recursive dependencies: 135

Run `revdep_details(,"ChemoSpec")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘chemometrics’
    ```

# ChemoSpec2D

<details>

* Version: 0.3.166
* Source code: https://github.com/cran/ChemoSpec2D
* URL: https://github.com/bryanhanson/ChemoSpec2D
* BugReports: https://github.com/bryanhanson/ChemoSpec2D/issues
* Date/Publication: 2019-06-09 17:50:02 UTC
* Number of recursive dependencies: 101

Run `revdep_details(,"ChemoSpec2D")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'mlrMBO', 'smoof', 'mlr'
    ```

# ChocoLattes

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/ChocoLattes
* Date/Publication: 2017-04-29 14:44:28 UTC
* Number of recursive dependencies: 75

Run `revdep_details(,"ChocoLattes")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘tools’
      All declared Imports should be used.
    ```

# CNEr

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/CNEr
* URL: https://github.com/ge11232002/CNEr
* BugReports: https://github.com/ge11232002/CNEr/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 139

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
* Number of recursive dependencies: 80

Run `revdep_details(,"countyfloods")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘hurricaneexposure’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# CVXR

<details>

* Version: 0.99-6
* Source code: https://github.com/cran/CVXR
* URL: https://cvxr.rbind.io, https://anqif.github.io/CVXR
* BugReports: https://github.com/anqif/CVXR/issues
* Date/Publication: 2019-06-02 03:40:08 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"CVXR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        libs   6.5Mb
    ```

# data.table

<details>

* Version: 1.12.2
* Source code: https://github.com/cran/data.table
* URL: http://r-datatable.com
* BugReports: https://github.com/Rdatatable/data.table/issues
* Date/Publication: 2019-04-07 10:05:02 UTC
* Number of recursive dependencies: 23

Run `revdep_details(,"data.table")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘nanotime’
    ```

# DatabaseConnector

<details>

* Version: 2.3.0
* Source code: https://github.com/cran/DatabaseConnector
* URL: https://ohdsi.github.io/DatabaseConnector, https://github.com/OHDSI/DatabaseConnector
* BugReports: https://github.com/OHDSI/DatabaseConnector/issues
* Date/Publication: 2019-02-21 15:20:13 UTC
* Number of recursive dependencies: 61

Run `revdep_details(,"DatabaseConnector")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘aws.s3’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DatabaseConnectorJars’
      All declared Imports should be used.
    ```

# datapackage.r

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2019-05-20 16:40:03 UTC
* Number of recursive dependencies: 97

Run `revdep_details(,"datapackage.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# DeepBlueR

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/DeepBlueR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 137

Run `revdep_details(,"DeepBlueR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

<details>

* Version: 1.36.0
* Source code: https://github.com/cran/DEGraph
* Date/Publication: 2019-05-02
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

# demi

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/demi
* URL: http://biit.cs.ut.ee/demi
* Date/Publication: 2015-02-13 20:22:57
* Number of recursive dependencies: 111

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

* Version: 1.6.9
* Source code: https://github.com/cran/dplR
* URL: https://r-forge.r-project.org/projects/dplr/
* Date/Publication: 2018-11-05 09:50:03 UTC
* Number of recursive dependencies: 79

Run `revdep_details(,"dplR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘tikzDevice’
    ```

# DropletUtils

<details>

* Version: 1.4.1
* Source code: https://github.com/cran/DropletUtils
* Date/Publication: 2019-05-31
* Number of recursive dependencies: 65

Run `revdep_details(,"DropletUtils")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.4Mb
      sub-directories of 1Mb or more:
        libs  26.3Mb
    ```

# eegc

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/eegc
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 156

Run `revdep_details(,"eegc")` for more info

</details>

## In both

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

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘BiocStyle’
    ```

# ELMER

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/ELMER
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 203

Run `revdep_details(,"ELMER")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 83.5Mb
      sub-directories of 1Mb or more:
        doc  82.9Mb
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

* Version: 1.0.0
* Source code: https://github.com/cran/enrichTF
* URL: https://github.com/wzthu/enrichTF
* BugReports: https://github.com/wzthu/enrichTF/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 115

Run `revdep_details(,"enrichTF")` for more info

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
    Last 13 lines of output:
      3: FUN(X[[i]], ...)
      4: cai()
      5: runWithFinishCheck(func = checkAndInstallBSgenomeTestgenome, refName = "bsgenome")
      6: func(NULL)
      7: checkAndInstallBSgenome(refFilePath, genome)
      8: BSgenome::available.genomes()
      9: get_data_annotation_contrib_url(type)
      10: stop("Install 'BiocManager' from CRAN to get 'BioCann' contrib.url")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 0 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: test whole pipeline (@test-pipe.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# esATAC

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/esATAC
* URL: https://github.com/wzthu/esATAC
* BugReports: https://github.com/wzthu/esATAC/issues
* Date/Publication: 2019-05-15
* Number of recursive dependencies: 184

Run `revdep_details(,"esATAC")` for more info

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

# FGNet

<details>

* Version: 3.18.0
* Source code: https://github.com/cran/FGNet
* URL: http://www.cicancer.org
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 105

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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gage’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘gage’
    ```

# fitteR

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/fitteR
* Date/Publication: 2017-12-11 14:27:45 UTC
* Number of recursive dependencies: 188

Run `revdep_details(,"fitteR")` for more info

</details>

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'actuar', 'emdbook', 'ExtDist', 'FatTailsR', 'flexsurv', 'gb',
      'GeneralizedHyperbolic', 'gld', 'NormalLaplace', 'ParetoPosStable',
      'sadists', 'SkewHyperbolic', 'VarianceGamma'
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
    

# gofCopula

<details>

* Version: 0.2-4
* Source code: https://github.com/cran/gofCopula
* Date/Publication: 2018-10-17 16:00:03 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"gofCopula")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'copula', 'VineCopula'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GSODR

<details>

* Version: 1.3.2
* Source code: https://github.com/cran/GSODR
* URL: https://github.com/ropensci/GSODR, https://ropensci.github.io/GSODR/
* BugReports: https://github.com/ropensci/GSODR/issues
* Date/Publication: 2019-01-18 23:10:43 UTC
* Number of recursive dependencies: 133

Run `revdep_details(,"GSODR")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                 message("\nThere are no files for station ID ", station, " in ", yr, ".\n")
             }
         })
      4: map(.x, .f, ...)
      5: .f(.x[[i]], ...)
      6: retry_cfm(year_url, handle = dir_list_handle)
      7: stop(call. = FALSE, "\nWe've tried to get the file(s) you requested six\n", "times, but the server is not responding, so we are\n", 
             "unable to process your request now.\n", "Please try again later.\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 29 SKIPPED: 5 WARNINGS: 0 FAILED: 1
      1. Error: unique stations are returned, tempdir() is cleaned up on exit (@test-get_GSOD.R#197) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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

# hoardeR

<details>

* Version: 0.9.4-2
* Source code: https://github.com/cran/hoardeR
* Date/Publication: 2019-02-12 08:23:21 UTC
* Number of recursive dependencies: 60

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

# methylKit

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/methylKit
* URL: http://code.google.com/p/methylkit/
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 102

Run `revdep_details(,"methylKit")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘genomation’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        doc    1.4Mb
        libs   3.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘KernSmooth’
      All declared Imports should be used.
    ```

# msgbsR

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/msgbsR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 156

Run `revdep_details(,"msgbsR")` for more info

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

# NCIgraph

<details>

* Version: 1.32.0
* Source code: https://github.com/cran/NCIgraph
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 27

Run `revdep_details(,"NCIgraph")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘DEGraph’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# net.security

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/net.security
* URL: https://github.com/r-net-tools/net.security
* Date/Publication: 2017-06-25 15:54:33 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"net.security")` for more info

</details>

## In both

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("capec.sample", package = "net.security"):
      No dataset created in 'envir'
    Output for data("cpes.sample", package = "net.security"):
      No dataset created in 'envir'
    Output for data("cves.sample", package = "net.security"):
      No dataset created in 'envir'
    Output for data("cwes.sample", package = "net.security"):
      No dataset created in 'envir'
    ```

# netboost

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/netboost
* URL: https://github.com/PascalSchlosser/netboost
* BugReports: https://github.com/PascalSchlosser/netboost/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 98

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
* Number of recursive dependencies: 150

Run `revdep_details(,"networktools")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: 'qgraph', 'smacof'
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# nlmixr

<details>

* Version: 1.1.0-9
* Source code: https://github.com/cran/nlmixr
* URL: https://github.com/nlmixrdevelopment/nlmixr
* Date/Publication: 2019-05-31 16:50:05 UTC
* Number of recursive dependencies: 150

Run `revdep_details(,"nlmixr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.4Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs  18.2Mb
    ```

# oce

<details>

* Version: 1.0-1
* Source code: https://github.com/cran/oce
* URL: https://dankelley.github.io/oce
* BugReports: https://github.com/dankelley/oce/issues
* Date/Publication: 2018-10-04 16:00:03 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"oce")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘marmap’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.9Mb
      sub-directories of 1Mb or more:
        R      2.1Mb
        doc    1.5Mb
        help   2.5Mb
        libs   5.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘marmap’
    ```

# openCyto

<details>

* Version: 1.22.2
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2019-06-03
* Number of recursive dependencies: 102

Run `revdep_details(,"openCyto")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setClass("curv1Filter", representation = representation(bwFac = "numeric",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘flowStats’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
        gs
    
    Codoc mismatches from documentation object 'remove_pop':
    remove_pop
      Code: function(gs)
      Docs: function(GatingSet)
      Argument names in code not in docs:
        gs
      Argument names in docs not in code:
        GatingSet
      Mismatches in argument names:
        Position: 1 Code: gs Docs: GatingSet
    remove_pop
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
    Undocumented arguments in documentation object 'add_pop_init'
      ‘GatingSet’ ‘GatingSetList’
    
    Documented arguments not in \usage in documentation object 'gate_tail':
      ‘method’ ‘auto_tol’ ‘adjust’
    
    Undocumented arguments in documentation object 'remove_pop'
      ‘GatingSet’ ‘GatingSetList’
    Documented arguments not in \usage in documentation object 'remove_pop':
      ‘gs’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc    2.4Mb
        libs   3.2Mb
    ```

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
    ':::' call which should be '::': ‘flowWorkspace:::isNegated’
      See the note in ?`:::` about the use of this operator.
    Unexported objects imported by ':::' calls:
      ‘flowClust:::.ellipsePoints’ ‘flowStats:::drvkde’
      ‘flowStats:::warpSetNCDF’ ‘flowWorkspace:::.cpp_addGate’
      ‘flowWorkspace:::.getAllDescendants’ ‘lattice:::updateList’
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

# paxtoolsr

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/paxtoolsr
* URL: https://github.com/BioPAX/paxtoolsr
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 88

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

* Version: 1.14.0
* Source code: https://github.com/cran/PGA
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 110

Run `revdep_details(,"PGA")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
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

# PhenotypeSimulator

<details>

* Version: 0.3.3
* Source code: https://github.com/cran/PhenotypeSimulator
* URL: https://github.com/HannahVMeyer/PhenotypeSimulator
* BugReports: https://github.com/HannahVMeyer/PhenotypeSimulator/issues
* Date/Publication: 2019-05-15 15:40:03 UTC
* Number of recursive dependencies: 68

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
* Number of recursive dependencies: 105

Run `revdep_details(,"PopGenReport")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# Prostar

<details>

* Version: 1.16.5
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2019-06-07
* Number of recursive dependencies: 254

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/R.utils/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

# proteoQC

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/proteoQC
* URL: https://github.com/wenbostar/proteoQC
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 121

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

* Version: 1.10.0
* Source code: https://github.com/cran/psichomics
* URL: https://github.com/nuno-agostinho/psichomics
* BugReports: https://github.com/nuno-agostinho/psichomics/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 226

Run `revdep_details(,"psichomics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        doc   5.1Mb
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

# QDNAseq

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 66

Run `revdep_details(,"QDNAseq")` for more info

</details>

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# radtools

<details>

* Version: 1.0.6
* Source code: https://github.com/cran/radtools
* Date/Publication: 2019-04-28 20:50:06 UTC
* Number of recursive dependencies: 91

Run `revdep_details(,"radtools")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Error: NIfTI import (@test_image_import_nifti.R#7) 
      2. Error: NIfTI metadata (@test_metadata_nifti.R#6) 
      3. Error: View slice - for CRAN (@test_view.R#15) 
      
      Error: testthat unit tests failed
      In addition: Warning messages:
      1: In dir.create(outdir_nifti, recursive = TRUE) :
        '/tmp/hb/RtmpXTqCuX' already exists
      2: In download.file(url, destfile) :
        cannot open URL 'https://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.hdr.gz': HTTP status was '502 Bad Gateway'
      3: In download.file(url, destfile) :
        cannot open URL 'https://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.img.gz': HTTP status was '502 Bad Gateway'
      4: In download.file(url, destfile) :
        cannot open URL 'https://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz': HTTP status was '502 Bad Gateway'
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘TCIApathfinder’ ‘xfun’
      All declared Imports should be used.
    ```

# RcisTarget

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/RcisTarget
* URL: http://scenic.aertslab.org
* BugReports: https://github.com/aertslab/RcisTarget/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 113

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
      OK: 45 SKIPPED: 0 WARNINGS: 0 FAILED: 1
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

# RCy3

<details>

* Version: 2.4.2
* Source code: https://github.com/cran/RCy3
* URL: https://github.com/cytoscape/RCy3
* BugReports: https://github.com/cytoscape/RCy3/issues
* Date/Publication: 2019-06-09
* Number of recursive dependencies: 39

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
      installed size is 13.2Mb
      sub-directories of 1Mb or more:
        doc  11.2Mb
    ```

# rdwd

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/rdwd
* URL: https://github.com/brry/rdwd
* BugReports: https://github.com/brry/rdwd/issues
* Date/Publication: 2019-05-31 08:50:03 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"rdwd")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘OSMscale’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        R      2.2Mb
        data   1.0Mb
        doc    2.9Mb
    ```

# ReportingTools

<details>

* Version: 2.24.0
* Source code: https://github.com/cran/ReportingTools
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 153

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

# restez

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/restez
* URL: https://github.com/ropensci/restez#readme
* BugReports: https://github.com/ropensci/restez/issues
* Date/Publication: 2018-11-26 20:00:12 UTC
* Number of recursive dependencies: 66

Run `revdep_details(,"restez")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘MonetDBLite’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RforProteomics

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/RforProteomics
* URL: http://lgatto.github.com/RforProteomics/
* Date/Publication: 2019-05-07
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

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'isobar', 'MALDIquantForeign', 'synapter', 'synapterdata', 'BRAIN',
      'pRoloc', 'MSGFplus', 'MSGFgui', 'DEP'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        doc  10.7Mb
    ```

# RRphylo

<details>

* Version: 2.0.3
* Source code: https://github.com/cran/RRphylo
* Date/Publication: 2019-02-25 14:40:03 UTC
* Number of recursive dependencies: 145

Run `revdep_details(,"RRphylo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.tree’ ‘penalized’
      All declared Imports should be used.
    ```

# RxODE

<details>

* Version: 0.9.0-6
* Source code: https://github.com/cran/RxODE
* URL: https://nlmixrdevelopment.github.io/RxODE/
* BugReports: https://github.com/nlmixrdevelopment/RxODE/issues
* Date/Publication: 2019-05-30 22:00:03 UTC
* Number of recursive dependencies: 117

Run `revdep_details(,"RxODE")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘installr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.3Mb
      sub-directories of 1Mb or more:
        doc    2.5Mb
        libs  15.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘n1qn1’
      All declared Imports should be used.
    ```

# SDMTools

<details>

* Version: 1.1-221.1
* Source code: https://github.com/cran/SDMTools
* URL: http://www.rforge.net/SDMTools/
* Date/Publication: 2019-04-18 15:38:30 UTC
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

# simPATHy

<details>

* Version: 0.2
* Source code: https://github.com/cran/simPATHy
* Date/Publication: 2016-09-21 07:27:43
* Number of recursive dependencies: 101

Run `revdep_details(,"simPATHy")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'clipper', 'topologyGSA'
    ```

# SpaDES.core

<details>

* Version: 0.2.5
* Source code: https://github.com/cran/SpaDES.core
* URL: http://spades-core.predictiveecology.org/, https://github.com/PredictiveEcology/SpaDES.core
* BugReports: https://github.com/PredictiveEcology/SpaDES.core/issues
* Date/Publication: 2019-03-19 05:43:37 UTC
* Number of recursive dependencies: 151

Run `revdep_details(,"SpaDES.core")` for more info

</details>

## In both

*   checking whether package ‘SpaDES.core’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/R.utils/revdep/checks/SpaDES.core/new/SpaDES.core.Rcheck/00install.out’ for details.
    ```

# spm12r

<details>

* Version: 2.8.1
* Source code: https://github.com/cran/spm12r
* Date/Publication: 2019-01-09 12:50:03 UTC
* Number of recursive dependencies: 44

Run `revdep_details(,"spm12r")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'kirby21.t1', 'kirby21.fmri'
    ```

# TCGAbiolinks

<details>

* Version: 2.12.1
* Source code: https://github.com/cran/TCGAbiolinks
* URL: https://github.com/BioinformaticsFMRP/TCGAbiolinks
* BugReports: https://github.com/BioinformaticsFMRP/TCGAbiolinks/issues
* Date/Publication: 2019-05-16
* Number of recursive dependencies: 251

Run `revdep_details(,"TCGAbiolinks")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      LGm2   NA   NA        NA        NA
      LGm4   NA   NA        NA 0.9217168
      LGm5   NA   NA 0.9217168        NA
        groups      Mean    Median       Max       Min
      1  alive 0.3594683 0.3594683 0.3594683 0.3594683
      2   dead 0.3589557 0.3608853 0.4099433 0.3240056
            alive dead
      alive    NA   NA
      dead     NA   NA
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 66 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: GDCprepare accepts more than one project (@test-prepare-download.R#35) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘PCBC_stemSig’
    Undocumented data sets:
      ‘PCBC_stemSig’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'sesame', 'pathview'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 98.7Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        data   3.6Mb
        doc   93.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘move’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
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
    readExonQuantification: no visible binding for global variable ‘exon’
    readExonQuantification: no visible binding for global variable
      ‘coordinates’
    readIDATDNAmethylation: no visible global function definition for
      ‘openSesame’
    Undefined global functions or variables:
      Tumor.purity barcode c3net clinical coordinates dCommSignif
      dNetInduce dNetPipeline exon knnmi.cross limmacontrasts.fit
      limmamakeContrasts minet openSesame portions rse_gene value visNet
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘DT’
    'library' or 'require' call not declared from: ‘DT’
    ```

# TCGAutils

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/TCGAutils
* BugReports: https://github.com/waldronlab/TCGAutils/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 176

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

* Version: 1.4.0
* Source code: https://github.com/cran/TFEA.ChIP
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 154

Run `revdep_details(,"TFEA.ChIP")` for more info

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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rcompanion’
    ```

# tmle.npvi

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/tmle.npvi
* Date/Publication: 2015-05-22 18:59:02
* Number of recursive dependencies: 42

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
# Uniquorn

<details>

* Version: 2.4.0
* Source code: https://github.com/cran/Uniquorn
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 85

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

