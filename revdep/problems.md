# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.2 (2016-10-31) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |US/Pacific                   |
|date     |2016-11-07                   |

## Packages

|package     |*  |version    |date       |source                             |
|:-----------|:--|:----------|:----------|:----------------------------------|
|digest      |   |0.6.10     |2016-08-02 |cran (@0.6.10)                     |
|R.methodsS3 |   |1.7.1      |2016-02-16 |CRAN (R 3.3.1)                     |
|R.oo        |   |1.21.0     |2016-11-01 |cran (@1.21.0)                     |
|R.utils     |   |2.4.0-9000 |2016-11-07 |local (HenrikBengtsson/R.utils@NA) |

# Check results

8 packages with problems

|package       |version | errors| warnings| notes|
|:-------------|:-------|------:|--------:|-----:|
|affxparser    |1.46.0  |      0|        1|     2|
|CNEr          |1.10.1  |      0|        2|     2|
|FGNet         |3.8.0   |      1|        1|     3|
|oneChannelGUI |1.40.0  |      0|        2|     6|
|openCyto      |1.12.1  |      0|        2|     5|
|psichomics    |1.0.0   |      0|        1|     1|
|SpaDES        |1.3.1   |      0|        2|     1|
|stplanr       |0.1.5   |      0|        1|     0|

## affxparser (1.46.0)
Maintainer: Kasper Daniel Hansen <kasperdanielhansen@gmail.com>  
Bug reports: https://github.com/HenrikBengtsson/affxparser/issues

0 errors | 1 warning  | 2 notes

```
checking compiled code ... WARNING
File ‘affxparser/libs/affxparser.so’:
  Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
    Object: ‘fusion_sdk/util/Verbose.o’
  Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
    Objects: ‘fusion_sdk/file/TsvFile/TsvFile.o’,
      ‘fusion_sdk/util/Err.o’
  Found ‘abort’, possibly from ‘abort’ (C)
    Objects:
      ‘fusion_sdk/calvin_files/fusion/src/CalvinAdapter/CalvinCHPDataAdapter.o’,
... 14 lines ...
    Objects: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’,
      ‘fusion_sdk/util/Verbose.o’
  Found ‘srand’, possibly from ‘srand’ (C)
    Object: ‘fusion_sdk/calvin_files/utils/src/AffymetrixGuid.o’
  Found ‘stdout’, possibly from ‘stdout’ (C)
    Object: ‘fusion_sdk/util/Util.o’

Compiled code should not call entry points which might terminate R nor
write to stdout/stderr instead of to the console, nor the system RNG.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.

checking for portable file names ... NOTE
Found the following non-portable file paths:
  affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.cpp
  affxparser/src/fusion_sdk/calvin_files/writers/src/CalvinCHPQuantificationDetectionFileBufferWriter.h

Tarballs are only required to store paths of up to 100 bytes and cannot
store those of more than 256 bytes, with restrictions including to 100
bytes for the final component.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.

checking installed package size ... NOTE
  installed size is 14.5Mb
  sub-directories of 1Mb or more:
    libs  13.9Mb
```

## CNEr (1.10.1)
Maintainer: Ge Tan <ge.tan09@imperial.ac.uk>  
Bug reports: https://github.com/ge11232002/CNEr/issues

0 errors | 2 warnings | 2 notes

```
checking compiled code ... WARNING
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
write to stdout/stderr instead of to the console, nor the system RNG.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: It seems you should call rmarkdown::render() instead of knitr::knit2html() because CNEr.Rmd appears to be an R Markdown v2 document.
Quitting from lines 2-15 (CNEr.Rmd) 
Error: processing vignette 'CNEr.Rmd' failed with diagnostics:
could not find function "doc_date"
Execution halted


checking installed package size ... NOTE
  installed size is 18.2Mb
  sub-directories of 1Mb or more:
    extdata  15.9Mb
    libs      1.1Mb

checking dependencies in R code ... NOTE
Unexported objects imported by ':::' calls:
  ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
  See the note in ?`:::` about the use of this operator.
```

## FGNet (3.8.0)
Maintainer: Sara Aibar <saibar@usal.es>

1 error  | 1 warning  | 3 notes

```
checking examples ... ERROR
Running examples in ‘FGNet-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: fea2incidMat
> ### Title: Transforms FEA output into incidence matrices.
> ### Aliases: fea2incidMat toMatrix adjMatrix
> 
> ### ** Examples
... 49 lines ...
> 
> functionalNetwork(incidMat)
>     
> # Term-based network
> incidMatTerms <- fea2incidMat(results, key="Terms")
> functionalNetwork(incidMatTerms, plotOutput="dynamic")
Warning: no DISPLAY variable so Tk is not available
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".
Calls: functionalNetwork ... .tkplot.convert.font -> <Anonymous> -> tcl -> .Tcl.objv -> structure
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

    simplify, union

The following objects are masked from 'package:S4Vectors':

    compare, union

... 8 lines ...

The following object is masked from 'package:base':

    union

The following metagroups/clusters have been filtered out: 1, 3, 4
Warning: no DISPLAY variable so Tk is not available
Quitting from lines 500-504 (FGNet.Rmd) 
Error: processing vignette 'FGNet.Rmd' failed with diagnostics:
[tcl] invalid command name "font".
Execution halted

checking installed package size ... NOTE
  installed size is  7.7Mb
  sub-directories of 1Mb or more:
    doc   7.1Mb

checking R code for possible problems ... NOTE
FGNet_GUI: no visible global function definition for ‘data’
FGNet_GUI: no visible global function definition for ‘gtkWindowNew’
FGNet_GUI: no visible global function definition for ‘gtkStatusbar’
FGNet_GUI: no visible global function definition for ‘gtkNotebookNew’
FGNet_GUI: no visible global function definition for ‘setNames’
FGNet_GUI: no visible global function definition for
  ‘gtkNotebookInsertPage’
FGNet_GUI: no visible global function definition for ‘gtkLabelNew’
FGNet_GUI: no visible global function definition for ‘gtkVBoxNew’
... 552 lines ...
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

checking Rd line widths ... NOTE
Rd file 'format_david.Rd':
  \usage lines wider than 90 characters:
     format_david(fileName, jobName = NULL, geneLabels = NULL, moveFile = FALSE, downloadFile=TRUE)

Rd file 'functionalNetwork.Rd':
  \examples lines wider than 100 characters:
     functionalNetwork(incidMat, plotType="bipartite", plotOutput="dynamic", vSize=c(default=10, GLC7=20, PTA1=20))

These lines will be truncated in the PDF manual.
```

## oneChannelGUI (1.40.0)
Maintainer: Raffaele A Calogero <raffaele.calogero@unito.it>

0 errors | 2 warnings | 6 notes

```
checking whether package ‘oneChannelGUI’ can be installed ... WARNING
Found the following significant warnings:
  Warning: no DISPLAY variable so Tk is not available
  Warning: loading Rplot failed
See ‘/home/hb/repositories/R.utils/revdep/checks/oneChannelGUI.Rcheck/00install.out’ for details.

checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘Exon-level.analysis.pdf’ from 1395Kb to 598Kb
     compacted ‘RNAseq.pdf’ from 1979Kb to 385Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘Biobase’ ‘affylmGUI’ ‘tkrplot’ ‘tkWidgets’ ‘IRanges’ ‘Rsamtools’
  ‘Biostrings’ ‘siggenes’ ‘chimera’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is  6.6Mb
  sub-directories of 1Mb or more:
    doc   5.0Mb

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘BSgenome.Hsapiens.UCSC.hg19’ ‘BSgenome.Mmusculus.UCSC.mm9’
  ‘BSgenome.Rnorvegicus.UCSC.rn4’ ‘Genominator’ ‘affy’ ‘affyPLM’
  ‘chipseq’ ‘maSigPro’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking R code for possible problems ... NOTE
.consistentFilter: warning in get("midas.p.Available", env =
  affylmGUIenvironment): partial argument match of 'env' to 'envir'
.consistentFilter: warning in get("AltSplRP.e.Available", env =
  affylmGUIenvironment): partial argument match of 'env' to 'envir'
.consistentFilter: warning in get("AltSplRP.e.p", env =
  affylmGUIenvironment): partial argument match of 'env' to 'envir'
.consistentFilter: warning in get("midas.p", env =
  affylmGUIenvironment): partial argument match of 'env' to 'envir'
.consistentFilter: warning in get("spliceIndexData", env =
... 2499 lines ...
  data("chrLength", package = "oneChannelGUI")
  data("chrLength", package = "oneChannelGUI")
  data("chrLength", package = "oneChannelGUI")
  data("chrLength", package = "oneChannelGUI")
File ‘oneChannelGUI/R/generaltoolsmenu.R’:
  data(HuExExonProbesetLocation)
  data(MoExExonProbesetLocation)
  data(RaExExonProbesetLocation)
File ‘oneChannelGUI/R/standalonefunctions.R’:
  data("chrLength", package = "oneChannelGUI")
See section ‘Good practice’ in ‘?data’.

checking Rd line widths ... NOTE
Rd file 'oneChannelGUI.Rd':
  \usage lines wider than 90 characters:
     wrapperMirnaCounts(working.dir, out.dir, org = "hsa", threads = 1, cutadapt.path = "/usr/local/bin/cutadapt", parallel = FALSE, ...)

Rd file 'standAloneBuildingLocalAnnotation.Rd':
  \usage lines wider than 90 characters:
        standAloneBuildingLocalAnnotation(libDirLocation = getwd(), netaffxUser = "myemail@somewhere.org", netaffxUserPw = "yourpassword", w ... [TRUNCATED]

These lines will be truncated in the PDF manual.
```

## openCyto (1.12.1)
Maintainer: Mike Jiang <wjiang2@fhcrc.org>

0 errors | 2 warnings | 5 notes

```
checking dependencies in R code ... WARNING
'library' or 'require' call to ‘parallel’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Unexported objects imported by ':::' calls:
  ‘flowClust:::.ellipsePoints’ ‘flowStats:::drvkde’
  ‘flowStats:::warpSetNCDF’ ‘flowWorkspace:::.cpp_addGate’
  ‘flowWorkspace:::.getAllDescendants’ ‘flowWorkspace:::trimWhiteSpace’
  ‘lattice:::updateList’
  See the note in ?`:::` about the use of this operator.
  Including base/recommended package(s):
  ‘lattice’
There are ::: calls to the package's namespace in its code. A package
  almost never needs to use ::: for its own objects:
  ‘groupBy’ ‘isCollapse’ ‘ppMethod’ ‘unlockNamespace’

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: Removed 14 rows containing missing values (geom_hex).
Warning: Removed 7 rows containing missing values (geom_hex).
Warning: Removed 7 rows containing missing values (geom_hex).
Warning: Removed 42 rows containing missing values (geom_hex).
Warning in rlm.default(x, y, weights, method = method, wt.method = wt.method,  :
  'rlm' failed to converge in 5 steps
Warning in singletGate(fr, area = channels[1], height = channels[2], ...) :
... 8 lines ...
Warning: Removed 163 rows containing non-finite values (stat_binhex).
Warning: Removed 13 rows containing missing values (geom_hex).
loading R object...
loading tree object...
Done
The prior specification has no effect when usePrior=no
Using the serial version of flowClust
Quitting from lines 155-161 (HowToAutoGating.Rmd) 
Error: processing vignette 'HowToAutoGating.Rmd' failed with diagnostics:
Names missing in input list.
Execution halted

checking DESCRIPTION meta-information ... NOTE
Package listed in more than one of Depends, Imports, Suggests, Enhances:
  ‘flowWorkspace’
A package should be listed in only one of these fields.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘example’

checking R code for possible problems ... NOTE
Found the following possibly unsafe calls:
File ‘openCyto/R/pluginFramework.R’:
  unlockBinding(methodName, ENV)
  unlockBinding(methodName, ENV)

.boundary: no visible global function definition for ‘rectangleGate’
.center_mode: no visible global function definition for ‘density’
.find_peaks: no visible global function definition for ‘density’
.find_peaks: no visible global function definition for ‘points’
... 236 lines ...
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

checking Rd line widths ... NOTE
Rd file 'add_pop.Rd':
  \examples lines wider than 100 characters:
      add_pop(gs, gating_method = "mindensity", dims = "CCR7,CD45RA", parent = "cd4-cd8+", pop = "CCR7+/-CD45RA+/-")
     add_pop(gs, gating_method = "polyFunctions", parent = "cd8", gating_args = "cd8/IFNg:cd8/IL2:cd8/TNFa")
     add_pop(gs, alias = "IL2orIFNg", gating_method = "boolGate", parent = "cd4", gating_args = "cd4/IL2|cd4/IFNg") 

These lines will be truncated in the PDF manual.

checking for unstated dependencies in vignettes ... NOTE
'library' or 'require' call not declared from: ‘ggcyto’
```

## psichomics (1.0.0)
Maintainer: Nuno Saraiva Agostinho <nunodanielagostinho@gmail.com>  
Bug reports: https://github.com/nuno-agostinho/psichomics/issues

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning in readLines(con) :
  incomplete final line found on 'AS_events_preparation.Rmd'
Warning: It seems you should call rmarkdown::render() instead of knitr::knit2html() because AS_events_preparation.Rmd appears to be an R Markdown v2 document.
Warning in readLines(con) :
  incomplete final line found on 'CLI_tutorial.Rmd'
Warning: It seems you should call rmarkdown::render() instead of knitr::knit2html() because CLI_tutorial.Rmd appears to be an R Markdown v2 document.
Quitting from lines 178-195 (CLI_tutorial.Rmd) 
Error: processing vignette 'CLI_tutorial.Rmd' failed with diagnostics:
there is no package called 'webshot'
Execution halted


checking R code for possible problems ... NOTE
hchart.survfit: no visible binding for global variable ‘group’
Undefined global functions or variables:
  group
```

## SpaDES (1.3.1)
Maintainer: Alex M Chubaty <alexander.chubaty@canada.ca>  
Bug reports: https://github.com/PredictiveEcology/SpaDES/issues

0 errors | 2 warnings | 1 note 

```
checking whether package ‘SpaDES’ can be installed ... WARNING
Found the following significant warnings:
  Warning: no DISPLAY variable so Tk is not available
See ‘/home/hb/repositories/R.utils/revdep/checks/SpaDES.Rcheck/00install.out’ for details.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

    RFoptions

The following object is masked from 'package:raster':

    atan2

... 8 lines ...

Attaching package: 'grid'

The following object is masked from 'package:SpaDES':

    gpar

Quitting from lines 352-356 (ii-modules.Rmd) 
Error: processing vignette 'ii-modules.Rmd' failed with diagnostics:
there is no package called 'webshot'
Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘fastshp’
```

## stplanr (0.1.5)
Maintainer: Robin Lovelace <rob00x@gmail.com>  
Bug reports: https://github.com/ropensci/stplanr/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Warning: It seems you should call rmarkdown::render() instead of knitr::knit2html() because introducing-stplanr.Rmd appears to be an R Markdown v2 document.
trying URL 'http://www.google.com'
Content type 'text/html; charset=ISO-8859-1' length unknown
.......... 
downloaded 10 KB

Quitting from lines 208-219 (introducing-stplanr.Rmd) 
Error: processing vignette 'introducing-stplanr.Rmd' failed with diagnostics:
there is no package called 'webshot'
Execution halted

```

