# acc

<details>

* Version: 1.3.3
* Source code: https://github.com/cran/acc
* Date/Publication: 2016-12-16 23:29:38
* Number of recursive dependencies: 58

Run `revdep_details(,"acc")` for more info

</details>

## In both

*   checking whether package ‘acc’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/acc/new/acc.Rcheck/00install.out’ for details.
    ```

# ACNE

<details>

* Version: 0.8.1
* Source code: https://github.com/cran/ACNE
* URL: https://github.com/HenrikBengtsson/ACNE
* BugReports: https://github.com/HenrikBengtsson/ACNE/issues
* Date/Publication: 2015-10-27 08:09:51
* Number of recursive dependencies: 23

Run `revdep_details(,"ACNE")` for more info

</details>

## In both

*   checking whether package ‘ACNE’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ACNE/new/ACNE.Rcheck/00install.out’ for details.
    ```

# acnr

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/acnr
* URL: https://github.com/mpierrejean/acnr
* BugReports: https://github.com/mpierrejean/acnr/issues
* Date/Publication: 2017-04-18 09:58:15 UTC
* Number of recursive dependencies: 29

Run `revdep_details(,"acnr")` for more info

</details>

## In both

*   checking whether package ‘acnr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/acnr/new/acnr.Rcheck/00install.out’ for details.
    ```

# ActivityIndex

<details>

* Version: 0.3.6
* Source code: https://github.com/cran/ActivityIndex
* Date/Publication: 2018-12-31 22:10:21 UTC
* Number of recursive dependencies: 31

Run `revdep_details(,"ActivityIndex")` for more info

</details>

## In both

*   checking whether package ‘ActivityIndex’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ActivityIndex/new/ActivityIndex.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘affxparser’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/affxparser/new/affxparser.Rcheck/00install.out’ for details.
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

# alphahull

<details>

* Version: 2.1
* Source code: https://github.com/cran/alphahull
* Date/Publication: 2016-02-15 13:47:04
* Number of recursive dependencies: 52

Run `revdep_details(,"alphahull")` for more info

</details>

## Newly broken

*   checking R code for possible problems ... NOTE
    ```
    areaahull: no visible global function definition for ‘evalWithTimeout’
    Undefined global functions or variables:
      evalWithTimeout
    ```

## In both

*   checking whether package ‘alphahull’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/alphahull/new/alphahull.Rcheck/00install.out’ for details.
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

*   checking whether package ‘arc’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/arc/new/arc.Rcheck/00install.out’ for details.
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

*   checking whether package ‘aroma.affymetrix’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/aroma.affymetrix/new/aroma.affymetrix.Rcheck/00install.out’ for details.
    ```

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

# aroma.apd

<details>

* Version: 0.6.0
* Source code: https://github.com/cran/aroma.apd
* URL: URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.apd
* BugReports: https://github.com/HenrikBengtsson/aroma.apd/issues
* Date/Publication: 2015-02-25 00:49:33
* Number of recursive dependencies: 5

Run `revdep_details(,"aroma.apd")` for more info

</details>

## In both

*   checking whether package ‘aroma.apd’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/aroma.apd/new/aroma.apd.Rcheck/00install.out’ for details.
    ```

# aroma.cn

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/aroma.cn
* URL: http://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.cn
* BugReports: https://github.com/HenrikBengtsson/aroma.cn/issues
* Date/Publication: 2015-10-28 00:08:16
* Number of recursive dependencies: 23

Run `revdep_details(,"aroma.cn")` for more info

</details>

## In both

*   checking whether package ‘aroma.cn’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/aroma.cn/new/aroma.cn.Rcheck/00install.out’ for details.
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

*   checking whether package ‘aroma.core’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/aroma.core/new/aroma.core.Rcheck/00install.out’ for details.
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

*   checking whether package ‘aroma.light’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/aroma.light/new/aroma.light.Rcheck/00install.out’ for details.
    ```

# AUCell

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/AUCell
* URL: http://scenic.aertslab.org
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 159

Run `revdep_details(,"AUCell")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'doMC', 'doRNG'
    ```

*   checking whether package ‘AUCell’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/AUCell/new/AUCell.Rcheck/00install.out’ for details.
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

# awsjavasdk

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/awsjavasdk
* URL: https://github.com/zapier/awsjavasdk
* BugReports: https://github.com/zapier/awsjavasdk/issues
* Date/Publication: 2017-01-01 10:09:07
* Number of recursive dependencies: 39

Run `revdep_details(,"awsjavasdk")` for more info

</details>

## In both

*   checking whether package ‘awsjavasdk’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/awsjavasdk/new/awsjavasdk.Rcheck/00install.out’ for details.
    ```

# babel

<details>

* Version: 0.3-0
* Source code: https://github.com/cran/babel
* Date/Publication: 2016-06-23 09:05:13
* Number of recursive dependencies: 13

Run `revdep_details(,"babel")` for more info

</details>

## In both

*   checking whether package ‘babel’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/babel/new/babel.Rcheck/00install.out’ for details.
    ```

# bedr

<details>

* Version: 1.0.7
* Source code: https://github.com/cran/bedr
* Date/Publication: 2019-04-01 18:50:02 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"bedr")` for more info

</details>

## In both

*   checking whether package ‘bedr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/bedr/new/bedr.Rcheck/00install.out’ for details.
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

*   checking whether package ‘bigstep’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/bigstep/new/bigstep.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘BioInstaller’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/BioInstaller/new/BioInstaller.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘biomartr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/biomartr/new/biomartr.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘BMSC’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/BMSC/new/BMSC.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘bsseq’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/bsseq/new/bsseq.Rcheck/00install.out’ for details.
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

# calmate

<details>

* Version: 0.12.1
* Source code: https://github.com/cran/calmate
* URL: https://github.com/HenrikBengtsson/calmate/
* BugReports: https://github.com/HenrikBengtsson/calmate/issues
* Date/Publication: 2015-10-27 08:09:53
* Number of recursive dependencies: 20

Run `revdep_details(,"calmate")` for more info

</details>

## In both

*   checking whether package ‘calmate’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/calmate/new/calmate.Rcheck/00install.out’ for details.
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

*   checking whether package ‘Causata’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/Causata/new/Causata.Rcheck/00install.out’ for details.
    ```

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

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/cellbaseR
* URL: https://github.com/melsiddieg/cellbaseR
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 132

Run `revdep_details(,"cellbaseR")` for more info

</details>

## In both

*   checking whether package ‘cellbaseR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/cellbaseR/new/cellbaseR.Rcheck/00install.out’ for details.
    ```

# ChemoSpec

<details>

* Version: 5.0.229
* Source code: https://github.com/cran/ChemoSpec
* URL: https://bryanhanson.github.io/ChemoSpec/
* BugReports: https://github.com/bryanhanson/ChemoSpec/issues
* Date/Publication: 2019-03-01 05:20:12 UTC
* Number of recursive dependencies: 129

Run `revdep_details(,"ChemoSpec")` for more info

</details>

## In both

*   checking whether package ‘ChemoSpec’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ChemoSpec/new/ChemoSpec.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘chemometrics’
    ```

# ChemoSpec2D

<details>

* Version: 0.2.19
* Source code: https://github.com/cran/ChemoSpec2D
* URL: https://github.com/bryanhanson/ChemoSpec2D
* BugReports: https://github.com/bryanhanson/ChemoSpec2D/issues
* Date/Publication: 2019-03-01 05:20:03 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"ChemoSpec2D")` for more info

</details>

## In both

*   checking whether package ‘ChemoSpec2D’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ChemoSpec2D/new/ChemoSpec2D.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ChemoSpec’
    ```

# chillR

<details>

* Version: 0.70.17
* Source code: https://github.com/cran/chillR
* Date/Publication: 2019-05-26 08:00:03 UTC
* Number of recursive dependencies: 88

Run `revdep_details(,"chillR")` for more info

</details>

## In both

*   checking whether package ‘chillR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/chillR/new/chillR.Rcheck/00install.out’ for details.
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

*   checking whether package ‘ChocoLattes’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ChocoLattes/new/ChocoLattes.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘tools’
      All declared Imports should be used.
    ```

# cifti

<details>

* Version: 0.4.5
* Source code: https://github.com/cran/cifti
* Date/Publication: 2018-02-01 23:25:24 UTC
* Number of recursive dependencies: 82

Run `revdep_details(,"cifti")` for more info

</details>

## In both

*   checking whether package ‘cifti’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/cifti/new/cifti.Rcheck/00install.out’ for details.
    ```

# civis

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/civis
* URL: https://github.com/civisanalytics/civis-r
* BugReports: https://github.com/civisanalytics/civis-r/issues
* Date/Publication: 2019-02-12 20:30:03 UTC
* Number of recursive dependencies: 100

Run `revdep_details(,"civis")` for more info

</details>

## In both

*   checking whether package ‘civis’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/civis/new/civis.Rcheck/00install.out’ for details.
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

*   checking whether package ‘CNEr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/CNEr/new/CNEr.Rcheck/00install.out’ for details.
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

# CollapsABEL

<details>

* Version: 0.10.11
* Source code: https://github.com/cran/CollapsABEL
* URL: https://bitbucket.org/kindlychung/collapsabel2/overview
* BugReports: https://bitbucket.org/kindlychung/collapsabel2/issues
* Date/Publication: 2016-12-11 20:35:07
* Number of recursive dependencies: 99

Run `revdep_details(,"CollapsABEL")` for more info

</details>

## In both

*   checking whether package ‘CollapsABEL’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/CollapsABEL/new/CollapsABEL.Rcheck/00install.out’ for details.
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

*   checking whether package ‘countyfloods’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/countyfloods/new/countyfloods.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘maps’
      All declared Imports should be used.
    ```

# cRegulome

<details>

* Version: 0.3.1
* Source code: https://github.com/cran/cRegulome
* URL: https://github.com/ropensci/cRegulome
* BugReports: https://github.com/ropensci/cRegulome/issues
* Date/Publication: 2019-05-25 04:20:02 UTC
* Number of recursive dependencies: 121

Run `revdep_details(,"cRegulome")` for more info

</details>

## In both

*   checking whether package ‘cRegulome’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/cRegulome/new/cRegulome.Rcheck/00install.out’ for details.
    ```

# cTRAP

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/cTRAP
* URL: https://github.com/nuno-agostinho/cTRAP
* BugReports: https://github.com/nuno-agostinho/cTRAP/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 118

Run `revdep_details(,"cTRAP")` for more info

</details>

## In both

*   checking whether package ‘cTRAP’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/cTRAP/new/cTRAP.Rcheck/00install.out’ for details.
    ```

# CVXR

<details>

* Version: 0.99-5
* Source code: https://github.com/cran/CVXR
* URL: https://cvxr.rbind.io, https://anqif.github.io/CVXR
* BugReports: https://github.com/anqif/CVXR/issues
* Date/Publication: 2019-05-13 19:20:08 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"CVXR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rglpk’
    ```

*   checking whether package ‘CVXR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/CVXR/new/CVXR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
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

*   checking whether package ‘data.table’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/data.table/new/data.table.Rcheck/00install.out’ for details.
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

*   checking whether package ‘DatabaseConnector’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/DatabaseConnector/new/DatabaseConnector.Rcheck/00install.out’ for details.
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

*   checking whether package ‘datapackage.r’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/datapackage.r/new/datapackage.r.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# ddPCRclust

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/ddPCRclust
* URL: https://github.com/bgbrink/ddPCRclust
* BugReports: https://github.com/bgbrink/ddPCRclust/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 141

Run `revdep_details(,"ddPCRclust")` for more info

</details>

## In both

*   checking whether package ‘ddPCRclust’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ddPCRclust/new/ddPCRclust.Rcheck/00install.out’ for details.
    ```

*   checking R code for possible problems ... NOTE
    ```
    exportPlots: no visible binding for global variable ‘Cluster’
    Undefined global functions or variables:
      Cluster
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

*   checking whether package ‘DeepBlueR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/DeepBlueR/new/DeepBlueR.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘DEGraph’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/DEGraph/new/DEGraph.Rcheck/00install.out’ for details.
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
* Number of recursive dependencies: 111

Run `revdep_details(,"demi")` for more info

</details>

## In both

*   checking whether package ‘demi’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/demi/new/demi.Rcheck/00install.out’ for details.
    ```

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

# downsize

<details>

* Version: 0.2.2
* Source code: https://github.com/cran/downsize
* URL: https://github.com/wlandau/downsize
* BugReports: https://github.com/wlandau/downsize/issues
* Date/Publication: 2017-04-03 06:17:14 UTC
* Number of recursive dependencies: 29

Run `revdep_details(,"downsize")` for more info

</details>

## In both

*   checking whether package ‘downsize’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/downsize/new/downsize.Rcheck/00install.out’ for details.
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

*   checking whether package ‘dplR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/dplR/new/dplR.Rcheck/00install.out’ for details.
    ```

# DropletUtils

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/DropletUtils
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 65

Run `revdep_details(,"DropletUtils")` for more info

</details>

## In both

*   checking whether package ‘DropletUtils’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/DropletUtils/new/DropletUtils.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 27.4Mb
      sub-directories of 1Mb or more:
        libs  26.3Mb
    ```

# DupChecker

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/DupChecker
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 16

Run `revdep_details(,"DupChecker")` for more info

</details>

## In both

*   checking whether package ‘DupChecker’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/DupChecker/new/DupChecker.Rcheck/00install.out’ for details.
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

# edgar

<details>

* Version: 2.0.1
* Source code: https://github.com/cran/edgar
* Date/Publication: 2019-03-22 10:00:09 UTC
* Number of recursive dependencies: 15

Run `revdep_details(,"edgar")` for more info

</details>

## In both

*   checking whether package ‘edgar’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/edgar/new/edgar.Rcheck/00install.out’ for details.
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

*   checking whether package ‘eegc’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/eegc/new/eegc.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        data  10.5Mb
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

# EEM

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/EEM
* URL: https://github.com/chengvt/EEM
* Date/Publication: 2016-04-21 13:47:18
* Number of recursive dependencies: 51

Run `revdep_details(,"EEM")` for more info

</details>

## In both

*   checking whether package ‘EEM’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/EEM/new/EEM.Rcheck/00install.out’ for details.
    ```

# eiCompare

<details>

* Version: 2.1
* Source code: https://github.com/cran/eiCompare
* Date/Publication: 2017-06-16 17:59:02 UTC
* Number of recursive dependencies: 66

Run `revdep_details(,"eiCompare")` for more info

</details>

## In both

*   checking whether package ‘eiCompare’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/eiCompare/new/eiCompare.Rcheck/00install.out’ for details.
    ```

# ELMER

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/ELMER
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 203

Run `revdep_details(,"ELMER")` for more info

</details>

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking whether package ‘ELMER’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ELMER/new/ELMER.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘enrichTF’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/enrichTF/new/enrichTF.Rcheck/00install.out’ for details.
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

*   checking whether package ‘esATAC’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/esATAC/new/esATAC.Rcheck/00install.out’ for details.
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

# eudysbiome

<details>

* Version: 1.14.0
* Source code: https://github.com/cran/eudysbiome
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 25

Run `revdep_details(,"eudysbiome")` for more info

</details>

## In both

*   checking whether package ‘eudysbiome’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/eudysbiome/new/eudysbiome.Rcheck/00install.out’ for details.
    ```

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

# evclust

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/evclust
* Date/Publication: 2016-09-04 13:29:43
* Number of recursive dependencies: 28

Run `revdep_details(,"evclust")` for more info

</details>

## In both

*   checking whether package ‘evclust’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/evclust/new/evclust.Rcheck/00install.out’ for details.
    ```

# ezknitr

<details>

* Version: 0.6
* Source code: https://github.com/cran/ezknitr
* URL: https://github.com/ropenscilabs/ezknitr
* BugReports: https://github.com/ropenscilabs/ezknitr/issues
* Date/Publication: 2016-09-16 07:13:44
* Number of recursive dependencies: 29

Run `revdep_details(,"ezknitr")` for more info

</details>

## In both

*   checking whether package ‘ezknitr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ezknitr/new/ezknitr.Rcheck/00install.out’ for details.
    ```

# FAMoS

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/FAMoS
* Date/Publication: 2019-05-26 09:40:03 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"FAMoS")` for more info

</details>

## In both

*   checking whether package ‘FAMoS’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/FAMoS/new/FAMoS.Rcheck/00install.out’ for details.
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
    Package suggested but not available for checking: ‘RDAVIDWebService’
    ```

*   checking whether package ‘FGNet’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/FGNet/new/FGNet.Rcheck/00install.out’ for details.
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
* Number of recursive dependencies: 188

Run `revdep_details(,"fitteR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ExtDist’
    ```

*   checking whether package ‘fitteR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/fitteR/new/fitteR.Rcheck/00install.out’ for details.
    ```

# fpmoutliers

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/fpmoutliers
* URL: https://github.com/jaroslav-kuchar/fpmoutliers
* BugReports: https://github.com/jaroslav-kuchar/fpmoutliers/issues
* Date/Publication: 2017-11-22 09:25:49 UTC
* Number of recursive dependencies: 27

Run `revdep_details(,"fpmoutliers")` for more info

</details>

## In both

*   checking whether package ‘fpmoutliers’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/fpmoutliers/new/fpmoutliers.Rcheck/00install.out’ for details.
    ```

# freesurfer

<details>

* Version: 1.6.1
* Source code: https://github.com/cran/freesurfer
* BugReports: https://github.com/muschellij2/freesurfer/issues
* Date/Publication: 2017-10-10 14:20:36 UTC
* Number of recursive dependencies: 76

Run `revdep_details(,"freesurfer")` for more info

</details>

## In both

*   checking whether package ‘freesurfer’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/freesurfer/new/freesurfer.Rcheck/00install.out’ for details.
    ```

# fslr

<details>

* Version: 2.22.0
* Source code: https://github.com/cran/fslr
* BugReports: https://github.com/muschellij2/fslr/issues
* Date/Publication: 2018-11-19 21:50:19 UTC
* Number of recursive dependencies: 38

Run `revdep_details(,"fslr")` for more info

</details>

## In both

*   checking whether package ‘fslr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/fslr/new/fslr.Rcheck/00install.out’ for details.
    ```

# future.BatchJobs

<details>

* Version: 0.16.1
* Source code: https://github.com/cran/future.BatchJobs
* URL: https://github.com/HenrikBengtsson/future.BatchJobs
* BugReports: https://github.com/HenrikBengtsson/future.BatchJobs/issues
* Date/Publication: 2019-01-04 12:00:03 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"future.BatchJobs")` for more info

</details>

## In both

*   checking whether package ‘future.BatchJobs’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/future.BatchJobs/new/future.BatchJobs.Rcheck/00install.out’ for details.
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
    

*   checking whether package ‘gdalUtils’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/gdalUtils/new/gdalUtils.Rcheck/00install.out’ for details.
    ```

# geno2proteo

<details>

* Version: 0.0.3
* Source code: https://github.com/cran/geno2proteo
* Date/Publication: 2018-01-24 12:25:39 UTC
* Number of recursive dependencies: 14

Run `revdep_details(,"geno2proteo")` for more info

</details>

## In both

*   checking whether package ‘geno2proteo’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/geno2proteo/new/geno2proteo.Rcheck/00install.out’ for details.
    ```

# gifti

<details>

* Version: 0.7.5
* Source code: https://github.com/cran/gifti
* BugReports: https://github.com/muschellij2/gifti/issues
* Date/Publication: 2018-02-01 22:21:05 UTC
* Number of recursive dependencies: 78

Run `revdep_details(,"gifti")` for more info

</details>

## In both

*   checking whether package ‘gifti’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/gifti/new/gifti.Rcheck/00install.out’ for details.
    ```

# glue

<details>

* Version: 1.3.1
* Source code: https://github.com/cran/glue
* URL: https://github.com/tidyverse/glue
* BugReports: https://github.com/tidyverse/glue/issues
* Date/Publication: 2019-03-12 22:30:02 UTC
* Number of recursive dependencies: 75

Run `revdep_details(,"glue")` for more info

</details>

## In both

*   checking whether package ‘glue’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/glue/new/glue.Rcheck/00install.out’ for details.
    ```

# gofCopula

<details>

* Version: 0.2-4
* Source code: https://github.com/cran/gofCopula
* Date/Publication: 2018-10-17 16:00:03 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"gofCopula")` for more info

</details>

## In both

*   checking whether package ‘gofCopula’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/gofCopula/new/gofCopula.Rcheck/00install.out’ for details.
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

*   checking whether package ‘GSODR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/GSODR/new/GSODR.Rcheck/00install.out’ for details.
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

*   checking whether package ‘hashFunction’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/hashFunction/new/hashFunction.Rcheck/00install.out’ for details.
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

*   checking whether package ‘hoardeR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/hoardeR/new/hoardeR.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# homologene

<details>

* Version: 1.4.68.19.3.27
* Source code: https://github.com/cran/homologene
* URL: https://github.com/oganm/homologene
* BugReports: https://github.com/oganm/homologene/issues
* Date/Publication: 2019-03-28 23:10:03 UTC
* Number of recursive dependencies: 31

Run `revdep_details(,"homologene")` for more info

</details>

## In both

*   checking whether package ‘homologene’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/homologene/new/homologene.Rcheck/00install.out’ for details.
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

*   checking whether package ‘HyPhy’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/HyPhy/new/HyPhy.Rcheck/00install.out’ for details.
    ```

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

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/joinXL
* URL: http://github.com/yvonneglanville/joinXL
* BugReports: http://github.com/yvonneglanville/joinXL/issues
* Date/Publication: 2016-09-19 01:45:37
* Number of recursive dependencies: 47

Run `revdep_details(,"joinXL")` for more info

</details>

## In both

*   checking whether package ‘joinXL’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/joinXL/new/joinXL.Rcheck/00install.out’ for details.
    ```

# listenv

<details>

* Version: 0.7.0
* Source code: https://github.com/cran/listenv
* URL: https://github.com/HenrikBengtsson/listenv
* BugReports: https://github.com/HenrikBengtsson/listenv/issues
* Date/Publication: 2018-01-21 21:55:48 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"listenv")` for more info

</details>

## In both

*   checking whether package ‘listenv’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/listenv/new/listenv.Rcheck/00install.out’ for details.
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

*   checking whether package ‘LSPFP’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/LSPFP/new/LSPFP.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tcltk2’
      All declared Imports should be used.
    ```

# mailR

<details>

* Version: 0.4.1
* Source code: https://github.com/cran/mailR
* URL: https://github.com/rpremraj/mailR
* Date/Publication: 2015-01-14 01:51:35
* Number of recursive dependencies: 8

Run `revdep_details(,"mailR")` for more info

</details>

## In both

*   checking whether package ‘mailR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/mailR/new/mailR.Rcheck/00install.out’ for details.
    ```

# mcparallelDo

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/mcparallelDo
* URL: https://github.com/drknexus/mcparallelDo
* BugReports: https://github.com/drknexus/mcparallelDo/issues
* Date/Publication: 2016-07-24 19:43:57
* Number of recursive dependencies: 25

Run `revdep_details(,"mcparallelDo")` for more info

</details>

## In both

*   checking whether package ‘mcparallelDo’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/mcparallelDo/new/mcparallelDo.Rcheck/00install.out’ for details.
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

*   checking whether package ‘methylKit’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/methylKit/new/methylKit.Rcheck/00install.out’ for details.
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

*   checking whether package ‘msgbsR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/msgbsR/new/msgbsR.Rcheck/00install.out’ for details.
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

# MSIseq

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/MSIseq
* Date/Publication: 2015-06-15 16:26:10
* Number of recursive dependencies: 9

Run `revdep_details(,"MSIseq")` for more info

</details>

## In both

*   checking whether package ‘MSIseq’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/MSIseq/new/MSIseq.Rcheck/00install.out’ for details.
    ```

*   checking R code for possible problems ... NOTE
    ```
    MSIseq.classify: no visible global function definition for ‘predict’
    Undefined global functions or variables:
      predict
    Consider adding
      importFrom("stats", "predict")
    to your NAMESPACE file.
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

*   checking whether package ‘net.security’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/net.security/new/net.security.Rcheck/00install.out’ for details.
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

*   checking whether package ‘netboost’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/netboost/new/netboost.Rcheck/00install.out’ for details.
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
* Number of recursive dependencies: 149

Run `revdep_details(,"networktools")` for more info

</details>

## In both

*   checking whether package ‘networktools’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/networktools/new/networktools.Rcheck/00install.out’ for details.
    ```

# neurobase

<details>

* Version: 1.27.6
* Source code: https://github.com/cran/neurobase
* BugReports: https://github.com/muschellij2/neurobase/issues
* Date/Publication: 2018-11-20 17:10:03 UTC
* Number of recursive dependencies: 70

Run `revdep_details(,"neurobase")` for more info

</details>

## In both

*   checking whether package ‘neurobase’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/neurobase/new/neurobase.Rcheck/00install.out’ for details.
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

*   checking whether package ‘nlmixr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/nlmixr/new/nlmixr.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘oce’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/oce/new/oce.Rcheck/00install.out’ for details.
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

# openCyto

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/openCyto
* Date/Publication: 2019-05-02
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

*   checking whether package ‘openCyto’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/openCyto/new/openCyto.Rcheck/00install.out’ for details.
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
    
    Error in setClass("curv1Filter", representation = representation(bwFac = "numeric",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘flowStats’
    Execution halted
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘gridExtra’
    ```

# osrmr

<details>

* Version: 0.1.35
* Source code: https://github.com/cran/osrmr
* Date/Publication: 2019-01-14 15:30:03 UTC
* Number of recursive dependencies: 32

Run `revdep_details(,"osrmr")` for more info

</details>

## In both

*   checking whether package ‘osrmr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/osrmr/new/osrmr.Rcheck/00install.out’ for details.
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

*   checking whether package ‘paxtoolsr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/paxtoolsr/new/paxtoolsr.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘PGA’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/PGA/new/PGA.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘PhenotypeSimulator’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/PhenotypeSimulator/new/PhenotypeSimulator.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.1Mb
    ```

# phylotaR

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/phylotaR
* URL: https://github.com/ropensci/phylotaR#readme
* BugReports: https://github.com/ropensci/phylotaR/issues
* Date/Publication: 2018-07-31 15:50:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(,"phylotaR")` for more info

</details>

## In both

*   checking whether package ‘phylotaR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/phylotaR/new/phylotaR.Rcheck/00install.out’ for details.
    ```

# plinkQC

<details>

* Version: 0.2.1
* Source code: https://github.com/cran/plinkQC
* URL: https://github.com/HannahVMeyer/plinkQC
* BugReports: https://github.com/HannahVMeyer/plinkQC/issues
* Date/Publication: 2019-03-01 21:50:15 UTC
* Number of recursive dependencies: 71

Run `revdep_details(,"plinkQC")` for more info

</details>

## In both

*   checking whether package ‘plinkQC’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/plinkQC/new/plinkQC.Rcheck/00install.out’ for details.
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

*   checking whether package ‘PopGenReport’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/PopGenReport/new/PopGenReport.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# primirTSS

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/primirTSS
* URL: https://github.com/ipumin/primirTSS
* BugReports: http://github.com/ipumin/primirTSS/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 155

Run `revdep_details(,"primirTSS")` for more info

</details>

## In both

*   checking whether package ‘primirTSS’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/primirTSS/new/primirTSS.Rcheck/00install.out’ for details.
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

# profileplyr

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/profileplyr
* Date/Publication: 2019-05-12
* Number of recursive dependencies: 168

Run `revdep_details(,"profileplyr")` for more info

</details>

## In both

*   checking whether package ‘profileplyr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/profileplyr/new/profileplyr.Rcheck/00install.out’ for details.
    ```

# Prostar

<details>

* Version: 1.16.1
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2019-05-29
* Number of recursive dependencies: 254

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    Found the following additional notes/warnings:
      Non-staged installation was used
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

*   checking whether package ‘proteoQC’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/proteoQC/new/proteoQC.Rcheck/00install.out’ for details.
    ```

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

# PSCBS

<details>

* Version: 0.65.0
* Source code: https://github.com/cran/PSCBS
* URL: https://github.com/HenrikBengtsson/PSCBS
* BugReports: https://github.com/HenrikBengtsson/PSCBS/issues
* Date/Publication: 2019-05-05 22:40:09 UTC
* Number of recursive dependencies: 75

Run `revdep_details(,"PSCBS")` for more info

</details>

## In both

*   checking whether package ‘PSCBS’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/PSCBS/new/PSCBS.Rcheck/00install.out’ for details.
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

*   checking whether package ‘psichomics’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/psichomics/new/psichomics.Rcheck/00install.out’ for details.
    ```

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

*   checking whether package ‘PubBias’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/PubBias/new/PubBias.Rcheck/00install.out’ for details.
    ```

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

# pubtatordb

<details>

* Version: 0.1.3
* Source code: https://github.com/cran/pubtatordb
* Date/Publication: 2019-03-13 16:00:03 UTC
* Number of recursive dependencies: 60

Run `revdep_details(,"pubtatordb")` for more info

</details>

## In both

*   checking whether package ‘pubtatordb’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/pubtatordb/new/pubtatordb.Rcheck/00install.out’ for details.
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

*   checking whether package ‘QDNAseq’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/QDNAseq/new/QDNAseq.Rcheck/00install.out’ for details.
    ```

# qrcode

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/qrcode
* Date/Publication: 2015-08-23 23:27:47
* Number of recursive dependencies: 7

Run `revdep_details(,"qrcode")` for more info

</details>

## In both

*   checking whether package ‘qrcode’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/qrcode/new/qrcode.Rcheck/00install.out’ for details.
    ```

# R.cache

<details>

* Version: 0.13.0
* Source code: https://github.com/cran/R.cache
* URL: https://github.com/HenrikBengtsson/R.cache
* BugReports: https://github.com/HenrikBengtsson/R.cache/issues
* Date/Publication: 2018-01-04 16:55:43 UTC
* Number of recursive dependencies: 4

Run `revdep_details(,"R.cache")` for more info

</details>

## In both

*   checking whether package ‘R.cache’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/R.cache/new/R.cache.Rcheck/00install.out’ for details.
    ```

# R.devices

<details>

* Version: 2.16.0
* Source code: https://github.com/cran/R.devices
* URL: https://github.com/HenrikBengtsson/R.devices
* BugReports: https://github.com/HenrikBengtsson/R.devices/issues
* Date/Publication: 2018-07-21 12:30:03 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"R.devices")` for more info

</details>

## In both

*   checking whether package ‘R.devices’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/R.devices/new/R.devices.Rcheck/00install.out’ for details.
    ```

# R.filesets

<details>

* Version: 2.13.0
* Source code: https://github.com/cran/R.filesets
* URL: https://github.com/HenrikBengtsson/R.filesets, http://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/R.filesets/issues
* Date/Publication: 2019-04-18 05:10:04 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"R.filesets")` for more info

</details>

## In both

*   checking whether package ‘R.filesets’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/R.filesets/new/R.filesets.Rcheck/00install.out’ for details.
    ```

# R.huge

<details>

* Version: 0.9.0
* Source code: https://github.com/cran/R.huge
* URL: https://github.com/HenrikBengtsson/R.huge
* BugReports: https://github.com/HenrikBengtsson/R.huge/issues
* Date/Publication: 2015-02-22 20:52:32
* Number of recursive dependencies: 3

Run `revdep_details(,"R.huge")` for more info

</details>

## In both

*   checking whether package ‘R.huge’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/R.huge/new/R.huge.Rcheck/00install.out’ for details.
    ```

# R.matlab

<details>

* Version: 3.6.2
* Source code: https://github.com/cran/R.matlab
* URL: https://github.com/HenrikBengtsson/R.matlab
* BugReports: https://github.com/HenrikBengtsson/R.matlab/issues
* Date/Publication: 2018-09-27 07:30:03 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"R.matlab")` for more info

</details>

## In both

*   checking whether package ‘R.matlab’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/R.matlab/new/R.matlab.Rcheck/00install.out’ for details.
    ```

# R.rsp

<details>

* Version: 0.43.1
* Source code: https://github.com/cran/R.rsp
* URL: https://github.com/HenrikBengtsson/R.rsp
* BugReports: https://github.com/HenrikBengtsson/R.rsp/issues
* Date/Publication: 2019-02-05 23:11:50 UTC
* Number of recursive dependencies: 18

Run `revdep_details(,"R.rsp")` for more info

</details>

## In both

*   checking whether package ‘R.rsp’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/R.rsp/new/R.rsp.Rcheck/00install.out’ for details.
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

*   checking whether package ‘radtools’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/radtools/new/radtools.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R.utils’ ‘TCIApathfinder’ ‘xfun’
      All declared Imports should be used.
    ```

# rCBA

<details>

* Version: 0.4.3
* Source code: https://github.com/cran/rCBA
* URL: https://github.com/jaroslav-kuchar/rCBA
* BugReports: https://github.com/jaroslav-kuchar/rCBA/issues
* Date/Publication: 2019-05-29 21:50:03 UTC
* Number of recursive dependencies: 8

Run `revdep_details(,"rCBA")` for more info

</details>

## In both

*   checking whether package ‘rCBA’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/rCBA/new/rCBA.Rcheck/00install.out’ for details.
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

*   checking whether package ‘RcisTarget’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/RcisTarget/new/RcisTarget.Rcheck/00install.out’ for details.
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

* Version: 2.4.0
* Source code: https://github.com/cran/RCy3
* URL: https://github.com/cytoscape/RCy3
* BugReports: https://github.com/cytoscape/RCy3/issues
* Date/Publication: 2019-05-02
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

*   checking whether package ‘RCy3’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/RCy3/new/RCy3.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.2Mb
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

# rddapp

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/rddapp
* Date/Publication: 2018-04-26 03:39:19 UTC
* Number of recursive dependencies: 138

Run `revdep_details(,"rddapp")` for more info

</details>

## In both

*   checking whether package ‘rddapp’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/rddapp/new/rddapp.Rcheck/00install.out’ for details.
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

*   checking whether package ‘rdwd’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/rdwd/new/rdwd.Rcheck/00install.out’ for details.
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
           /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_DESeqResults.R 
      
         test_GeneSets.R 
           /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_GeneSets.R 
      
         test_HyperGResults.R 
           /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_HyperGResults.R 
      
         test_MArrayLM.R 
           /home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/ReportingTools/unitTests/test_MArrayLM.R 
      
      
      Error in BiocGenerics:::testPackage("ReportingTools") : 
        unit tests failed for package ReportingTools
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘hgu95av2.db’
    ```

*   checking whether package ‘ReportingTools’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ReportingTools/new/ReportingTools.Rcheck/00install.out’ for details.
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

# reproducible

<details>

* Version: 0.2.8
* Source code: https://github.com/cran/reproducible
* URL: http://reproducible.predictiveecology.org, https://github.com/PredictiveEcology/reproducible
* BugReports: https://github.com/PredictiveEcology/reproducible/issues
* Date/Publication: 2019-03-18 18:20:03 UTC
* Number of recursive dependencies: 108

Run `revdep_details(,"reproducible")` for more info

</details>

## In both

*   checking whether package ‘reproducible’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/reproducible/new/reproducible.Rcheck/00install.out’ for details.
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

# Rnightlights

<details>

* Version: 0.2.3
* Source code: https://github.com/cran/Rnightlights
* URL: https://github.com/chrisvwn/Rnightlights
* BugReports: https://github.com/chrisvwn/Rnightlights/issues
* Date/Publication: 2018-10-13 23:00:03 UTC
* Number of recursive dependencies: 107

Run `revdep_details(,"Rnightlights")` for more info

</details>

## In both

*   checking whether package ‘Rnightlights’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/Rnightlights/new/Rnightlights.Rcheck/00install.out’ for details.
    ```

# ROI.models.miplib

<details>

* Version: 0.0-2
* Source code: https://github.com/cran/ROI.models.miplib
* URL: http://R-Forge.R-project.org/projects/roi
* Date/Publication: 2019-01-25 13:10:03 UTC
* Number of recursive dependencies: 7

Run `revdep_details(,"ROI.models.miplib")` for more info

</details>

## In both

*   checking whether package ‘ROI.models.miplib’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ROI.models.miplib/new/ROI.models.miplib.Rcheck/00install.out’ for details.
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

*   checking whether package ‘RRphylo’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/RRphylo/new/RRphylo.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.tree’ ‘penalized’
      All declared Imports should be used.
    ```

# ruta

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/ruta
* URL: https://github.com/fdavidcl/ruta
* BugReports: https://github.com/fdavidcl/ruta/issues
* Date/Publication: 2019-03-18 13:10:02 UTC
* Number of recursive dependencies: 44

Run `revdep_details(,"ruta")` for more info

</details>

## In both

*   checking whether package ‘ruta’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/ruta/new/ruta.Rcheck/00install.out’ for details.
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

*   checking whether package ‘RxODE’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/RxODE/new/RxODE.Rcheck/00install.out’ for details.
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

# sdmpredictors

<details>

* Version: 0.2.8
* Source code: https://github.com/cran/sdmpredictors
* URL: http://www.samuelbosch.com/p/sdmpredictors.html
* BugReports: https://github.com/lifewatch/sdmpredictors/issues
* Date/Publication: 2018-07-19 12:40:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(,"sdmpredictors")` for more info

</details>

## In both

*   checking whether package ‘sdmpredictors’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/sdmpredictors/new/sdmpredictors.Rcheck/00install.out’ for details.
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

*   checking whether package ‘SDMTools’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/SDMTools/new/SDMTools.Rcheck/00install.out’ for details.
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

# SEMID

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/SEMID
* URL: https://github.com/Lucaweihs/SEMID
* BugReports: https://github.com/Lucaweihs/SEMID/issues
* Date/Publication: 2019-05-21 07:30:11 UTC
* Number of recursive dependencies: 17

Run `revdep_details(,"SEMID")` for more info

</details>

## In both

*   checking whether package ‘SEMID’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/SEMID/new/SEMID.Rcheck/00install.out’ for details.
    ```

# SensusR

<details>

* Version: 2.3.1
* Source code: https://github.com/cran/SensusR
* URL: https://predictive-technology-laboratory.github.io/sensus/
* Date/Publication: 2019-02-01 18:03:27 UTC
* Number of recursive dependencies: 59

Run `revdep_details(,"SensusR")` for more info

</details>

## In both

*   checking whether package ‘SensusR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/SensusR/new/SensusR.Rcheck/00install.out’ for details.
    ```

# shinyEventLogger

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/shinyEventLogger
* URL: https://github.com/kalimu/shinyEventLogger#readme, https://kalimu.github.io/project/shinyeventlogger/
* BugReports: https://github.com/kalimu/shinyEventLogger/issues
* Date/Publication: 2019-02-22 10:20:03 UTC
* Number of recursive dependencies: 95

Run `revdep_details(,"shinyEventLogger")` for more info

</details>

## In both

*   checking whether package ‘shinyEventLogger’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/shinyEventLogger/new/shinyEventLogger.Rcheck/00install.out’ for details.
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

*   checking whether package ‘simPATHy’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/simPATHy/new/simPATHy.Rcheck/00install.out’ for details.
    ```

# snplist

<details>

* Version: 0.18.1
* Source code: https://github.com/cran/snplist
* Date/Publication: 2017-12-11 19:12:03 UTC
* Number of recursive dependencies: 47

Run `revdep_details(,"snplist")` for more info

</details>

## In both

*   checking whether package ‘snplist’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/snplist/new/snplist.Rcheck/00install.out’ for details.
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
    Found the following additional notes/warnings:
      Non-staged installation was used
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

*   checking whether package ‘spm12r’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/spm12r/new/spm12r.Rcheck/00install.out’ for details.
    ```

# stplanr

<details>

* Version: 0.2.10
* Source code: https://github.com/cran/stplanr
* URL: https://github.com/ropensci/stplanr, https://ropensci.github.io/stplanr/
* BugReports: https://github.com/ropensci/stplanr/issues
* Date/Publication: 2019-05-18 08:40:03 UTC
* Number of recursive dependencies: 110

Run `revdep_details(,"stplanr")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: route_dodgr
    > ### Title: Route on local data using the dodgr package
    > ### Aliases: route_dodgr
    > 
    > ### ** Examples
    > 
    > # from <- geo_code("pedallers arms leeds")
    > from <- c(-1.5327, 53.8006)
    > # to <- geo_code("gzing")
    > to <- c(-1.5279, 53.8044)
    > # next 4 lines recreate `stplanr::osm_net_example`
    > # pts <- rbind(from, to)
    > # colnames(pts) <- c("X", "Y")
    > # net <- dodgr::dodgr_streetnet(pts = rbind(from, to), expand = 0.1)
    > # osm_net_example <- net[c("highway", "name", "lanes", "maxspeed")]
    > r <- route_dodgr(from, to, net = osm_net_example)
    Error in loadNamespace(name) : there is no package called ‘dodgr’
    Calls: route_dodgr ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘dodgr’
    ```

*   checking whether package ‘stplanr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/stplanr/new/stplanr.Rcheck/00install.out’ for details.
    ```

# taxonomizr

<details>

* Version: 0.5.3
* Source code: https://github.com/cran/taxonomizr
* BugReports: https://github.com/sherrillmix/taxonomizr/issues
* Date/Publication: 2019-04-22 15:40:02 UTC
* Number of recursive dependencies: 40

Run `revdep_details(,"taxonomizr")` for more info

</details>

## In both

*   checking whether package ‘taxonomizr’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/taxonomizr/new/taxonomizr.Rcheck/00install.out’ for details.
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

*   checking whether package ‘TBSSurvival’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/TBSSurvival/new/TBSSurvival.Rcheck/00install.out’ for details.
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

*   checking whether package ‘TCGAbiolinks’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00install.out’ for details.
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

*   checking examples ... ERROR
    ```
    Running examples in ‘TCGAutils-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: imputeAssay
    > ### Title: This function imputes assays values inside a
    > ###   'MultiAssayExperiment'
    > ### Aliases: imputeAssay
    > 
    > ### ** Examples
    > 
    > library(curatedTCGAData)
    Error in library(curatedTCGAData) : 
      there is no package called ‘curatedTCGAData’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'curatedTCGAData', 'RTCGAToolbox'
    ```

*   checking whether package ‘TCGAutils’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/TCGAutils/new/TCGAutils.Rcheck/00install.out’ for details.
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

*   checking whether package ‘TFEA.ChIP’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/TFEA.ChIP/new/TFEA.ChIP.Rcheck/00install.out’ for details.
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

*   checking whether package ‘tmle.npvi’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/tmle.npvi/new/tmle.npvi.Rcheck/00install.out’ for details.
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

# TNBC.CMS

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/TNBC.CMS
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 114

Run `revdep_details(,"TNBC.CMS")` for more info

</details>

## In both

*   checking whether package ‘TNBC.CMS’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/TNBC.CMS/new/TNBC.CMS.Rcheck/00install.out’ for details.
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

*   checking whether package ‘uavRst’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/uavRst/new/uavRst.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tmaptools’
    ```

# understandBPMN

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/understandBPMN
* Date/Publication: 2018-06-08 15:15:35 UTC
* Number of recursive dependencies: 72

Run `revdep_details(,"understandBPMN")` for more info

</details>

## In both

*   checking whether package ‘understandBPMN’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/understandBPMN/new/understandBPMN.Rcheck/00install.out’ for details.
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

*   checking whether package ‘Uniquorn’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/Uniquorn/new/Uniquorn.Rcheck/00install.out’ for details.
    ```

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

# vortexR

<details>

* Version: 1.1.6
* Source code: https://github.com/cran/vortexR
* URL: https://github.com/carlopacioni/vortexR/
* BugReports: https://github.com/carlopacioni/vortexR/issues
* Date/Publication: 2019-02-06 12:50:03 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"vortexR")` for more info

</details>

## In both

*   checking whether package ‘vortexR’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/home/hb/repositories/R.utils/revdep/checks/vortexR/new/vortexR.Rcheck/00install.out’ for details.
    ```

