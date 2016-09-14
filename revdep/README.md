# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |C                            |
|tz       |NA                           |
|date     |2016-09-13                   |

## Packages

|package     |*  |version    |date       |source                             |
|:-----------|:--|:----------|:----------|:----------------------------------|
|R.methodsS3 |   |1.7.1      |2016-02-16 |cran (@1.7.1)                      |
|R.oo        |   |1.20.0     |2016-02-17 |cran (@1.20.0)                     |
|R.utils     |   |2.3.0-9000 |2016-09-13 |local (HenrikBengtsson/R.utils@NA) |
|digest      |   |0.6.10     |2016-08-02 |cran (@0.6.10)                     |

# Check results
50 packages

## ACNE (0.8.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/ACNE/issues

0 errors | 0 warnings | 0 notes

## Causata (4.2-0)
Maintainer: Justin Hemann <justinh@causata.com>

0 errors | 0 warnings | 5 notes

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'integration_tests'

checking R code for possible problems ... NOTE
BinaryCut: no visible global function definition for 'quantile'
CleanNaFromContinuousFunction: no visible global function definition
  for 'median'
CleanNaFromContinuousFunction: no visible global function definition
  for 'na.omit'
GetMetadata.Connect: no visible global function definition for
  'dbGetQuery'
GetRawData.Connect: no visible global function definition for
  'dbGetQuery'
... 12 lines ...
  'contrasts'
predict.GlmnetModelDefinition: no visible global function definition
  for 'predict'
Undefined global functions or variables:
  coef contrasts dbGetQuery median model.matrix na.omit predict
  quantile read.csv sd terms.formula
Consider adding
  importFrom("stats", "coef", "contrasts", "median", "model.matrix",
             "na.omit", "predict", "quantile", "sd", "terms.formula")
  importFrom("utils", "read.csv")
to your NAMESPACE file.

checking line endings in Makefiles ... NOTE
Found the following Makefile(s) without a final LF:
  inst/doc/Makefile
Some 'make' programs ignore lines not ending in LF.

checking files in 'vignettes' ... NOTE
The following files look like leftovers/mistakes:
  'Causata-vignette.log'
Please remove them from your package.
The following directory looks like a leftover from 'knitr':
  'figure'
Please remove from your package.
```

## CollapsABEL (0.10.8)
Maintainer: Kaiyin Zhong <kindlychung@gmail.com>  
Bug reports: https://bitbucket.org/kindlychung/collapsabel2/issues

0 errors | 0 warnings | 0 notes

## EEM (1.1.1)
Maintainer: Vipavee Trivittayasil <vipavee.tri@gmail.com>

0 errors | 0 warnings | 0 notes

## HyPhy (1.0)
Maintainer: Nathaniel Malachi Hallinan <nmhallinan@gmail.com>

0 errors | 0 warnings | 3 notes

```
checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  'R.utils' 'ape'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking R code for possible problems ... NOTE
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

checking Rd line widths ... NOTE
Rd file 'requiprobable.Rd':
  \examples lines wider than 100 characters:
     for (i in 1:10) unlabeled[[i]]$tip.label<-sample(c("A1","A2","B1","B2","B3","C1","C2","C3","C4","C5"))

Rd file 'rgenetree.Rd':
  \examples lines wider than 100 characters:
     ##Now lets start with 3 genes, set the number of genes at each tip of spec and vary mu between the branches of spec 

These lines will be truncated in the PDF manual.
```

## LSPFP (1.0.0)
Maintainer: Rafael Dellen <Rafael.Dellen@uni-duesseldorf.de>

0 errors | 0 warnings | 0 notes

## MPAgenomics (1.1.2)
Maintainer: Samuel Blanck <samuel.blanck@inria.fr>

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  'R.devices' 'R.filesets' 'R.methodsS3' 'R.oo' 'aroma.affymetrix'
  'aroma.cn' 'aroma.core' 'aroma.light' 'matrixStats' 'snowfall'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Unexported object imported by a ':::' call: 'cghseg:::segmeanCO'
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
.varregtimescount: no visible global function definition for 'var'
CGHSEGaroma: no visible global function definition for 'read.csv'
CGHSEGaroma : <anonymous>: no visible global function definition for
  'points'
CGHSEGaroma : <anonymous>: no visible global function definition for
  'lines'
CGHSEGaroma : <anonymous>: no visible global function definition for
  'write.table'
CGHcall: no visible global function definition for 'mad'
... 43 lines ...
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

## MSIseq (1.0.0)
Maintainer: Mini Huang <mini.huang@nus.edu.sg>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
MSIseq.classify: no visible global function definition for 'predict'
Undefined global functions or variables:
  predict
Consider adding
  importFrom("stats", "predict")
to your NAMESPACE file.
```

## NSA (0.0.32)
Maintainer: Maria Ortiz-Estevez <mortizest@gmail.com>

0 errors | 0 warnings | 7 notes

```
checking package dependencies ... NOTE
Depends: includes the non-default packages:
  'R.methodsS3' 'MASS' 'matrixStats' 'R.oo' 'R.utils' 'aroma.core'
  'aroma.affymetrix' 'DNAcopy'
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking installed package size ... NOTE
  installed size is 1024.3Mb
  sub-directories of 1Mb or more:
    exData  1024.2Mb

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'incl'

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  'DNAcopy' 'MASS' 'R.methodsS3' 'R.oo' 'aroma.affymetrix' 'aroma.core'
  'matrixStats'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  NSAByTotalAndFracB.matrix allocateOutputDataSets.NSANormalization
  allocateOutputDataSets.SNPsNormalization
  allocateOutputDataSets.SampleNormalization
  as.character.NSANormalization as.character.SNPsNormalization
  as.character.SampleNormalization findArraysTodo.NSANormalization
  findArraysTodo.SampleNormalization findUnitsTodo.SNPsNormalization
  fitNSA.matrix fitNSAcnPs.matrix getDataSets.NSANormalization
  getDataSets.SNPsNormalization getDataSets.SampleNormalization
  getName.NSANormalization getName.SNPsNormalization
  getName.SampleNormalization getOutputDataSets.NSANormalization
  getOutputDataSets.SNPsNormalization
  getOutputDataSets.SampleNormalization getPath.NSANormalization
  getPath.SNPsNormalization getPath.SampleNormalization
  getRootPath.NSANormalization getRootPath.SNPsNormalization
  getRootPath.SampleNormalization process.NSANormalization
  process.SNPsNormalization process.SampleNormalization
  sampleNByTotalAndFracB.numeric snpsNByTotalAndFracB.matrix
See section 'Registering S3 methods' in the 'Writing R Extensions'
manual.

checking R code for possible problems ... NOTE
NB: .First.lib is obsolete and will not be used in R >= 3.0.0

.First.lib: no visible global function definition for
  'packageDescription'
NSAByTotalAndFracB.matrix: no visible global function definition for
  'throw'
NSAByTotalAndFracB.matrix: no visible global function definition for
  'str'
NSANormalization: no visible global function definition for 'throw'
... 279 lines ...
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

checking Rd line widths ... NOTE
Rd file 'NSANormalization.Rd':
  \examples lines wider than 100 characters:
     by <- 50e3; # 50kb bins; you may want to try with other amounts of smoothing xOut <- seq(from=xRange[1], to=xRange[2], by=by);
     plot(getSignals(cnCNPS), getSignals(cnSNPS), xlim=Clim, ylim=Clim); abline(a=0, b=1, col="red", lwd=2);

These lines will be truncated in the PDF manual.
```

## PSCBS (0.61.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/PSCBS/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is 1025.7Mb
  sub-directories of 1Mb or more:
    data-ex  1024.0Mb
```

## PubBias (1.0)
Maintainer: Simon Thornley <sithor@gmail.com>

0 errors | 0 warnings | 3 notes

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  'R.utils' 'rmeta'
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking R code for possible problems ... NOTE
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

## R.cache (0.12.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.cache/issues

0 errors | 0 warnings | 0 notes

## R.devices (2.14.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.devices/issues

0 errors | 0 warnings | 0 notes

## R.filesets (2.10.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.filesets/issues

0 errors | 0 warnings | 0 notes

## R.huge (0.9.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.huge/issues

0 errors | 0 warnings | 0 notes

## R.matlab (3.6.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.matlab/issues

0 errors | 0 warnings | 0 notes

## R.rsp (0.30.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.rsp/issues

0 errors | 0 warnings | 0 notes

## ReporteRs (0.8.6)
Maintainer: David Gohel <david.gohel@lysis-consultants.fr>  
Bug reports: https://github.com/davidgohel/ReporteRs/issues

2 errors | 4 warnings | 5 notes

```
checking examples ... ERROR
Running examples in 'ReporteRs-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: addPlot
> ### Title: Add a plot into a document object
> ### Aliases: addPlot addPlot.bsdoc addPlot.docx addPlot.pptx
> 
> ### ** Examples
... 15 lines ...
 *** caught segfault ***
address 0x2b7200000000, cause 'memory not mapped'

Traceback:
 1: .Call("xml2_doc_parse_file", PACKAGE = "xml2", path, encoding,     as_html, options)
 2: doc_parse_file(con, encoding = encoding, as_html = as_html, options = options)
 3: read_xml.character(filename)
 4: read_xml(filename)
 5: addPlot.docx(doc, fun = function() barplot(1:6, col = 2:7), vector.graphic = TRUE,     width = 5, height = 7, par.properties = parProperties(text.align = "center"))
 6: addPlot(doc, fun = function() barplot(1:6, col = 2:7), vector.graphic = TRUE,     width = 5, height = 7, par.properties = parProperties(text.align = "center"))
An irrecoverable exception occurred. R is aborting now ...

checking tests ... ERROR
Running the tests in 'tests/testthat.R' failed.
Last 13 lines of output:
  26: source_file(path, new.env(parent = env), chdir = TRUE)
  27: force(code)
  28: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE)        end_context()    })
  29: FUN(X[[i]], ...)
  30: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE)
  31: force(code)
  32: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE))
  33: test_files(paths, reporter = reporter, env = env, ...)
  34: test_dir(test_path, reporter = reporter, env = env, filter = filter,     ...)
  35: with_top_env(env, {    test_dir(test_path, reporter = reporter, env = env, filter = filter,         ...)})
  36: run_tests(package, test_path, filter, reporter, ...)
  37: test_check("ReporteRs")
  An irrecoverable exception occurred. R is aborting now ...

checking whether package 'ReporteRs' can be installed ... WARNING
Found the following significant warnings:
  Warning: program compiled against libxml 209 using older 207
See '/cbc/henrik/repositories/R.utils/revdep/checks/ReporteRs.Rcheck/00install.out' for details.

checking S3 generic/method consistency ... WARNING
Warning: program compiled against libxml 209 using older 207
See section 'Generic functions and methods' in the 'Writing R
Extensions' manual.

checking replacement functions ... WARNING
Warning: program compiled against libxml 209 using older 207
The argument of a replacement function which corresponds to the right
hand side must be named 'value'.

checking for missing documentation entries ... WARNING
Warning: program compiled against libxml 209 using older 207
All user-level objects in a package should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: program compiled against libxml 209 using older 207

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking dependencies in R code ... NOTE
Warning: program compiled against libxml 209 using older 207

checking foreign function calls ... NOTE
Warning: program compiled against libxml 209 using older 207
See chapter 'System and foreign language interfaces' in the 'Writing R
Extensions' manual.

checking R code for possible problems ... NOTE
Warning: program compiled against libxml 209 using older 207
Warning: program compiled against libxml 209 using older 207

checking Rd \usage sections ... NOTE
Warning: program compiled against libxml 209 using older 207
The \usage entries for S3 methods should use the \method markup and not
their full name.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.
```

## SDMTools (1.1-221)
Maintainer: Jeremy VanDerWal <jjvanderwal@gmail.com>

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  'raster' 'sp'
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking R code for possible problems ... NOTE
COGravity: no visible global function definition for 'sd'
ClassStat: no visible global function definition for 'na.omit'
ClassStat: no visible global function definition for 'sd'
ConnCompLabel: no visible global function definition for 'setValues'
ImageDiff: no visible global function definition for 'terrain.colors'
ImageDiff: no visible global function definition for 'image'
PatchStat: no visible global function definition for 'na.omit'
Scalebar: no visible global function definition for 'rect'
Scalebar: no visible global function definition for 'segments'
... 35 lines ...
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

## TBSSurvival (1.2)
Maintainer: Cassio de Campos <cassiopc@acm.org>

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
TBSSurvival 1.2 loaded

Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'TBSSurvival.tex' failed.
LaTeX errors:
! Use of \caption@@settype doesn't match its definition.
\@ifnextchar ... \reserved@d =#1\def \reserved@a {
... 8 lines ...
                                                  
! Use of \caption@@settype doesn't match its definition.
\@ifnextchar ... \reserved@d =#1\def \reserved@a {
                                                  #2}\def \reserved@b {#3}\f...
l.236 ...tnormal{Normal}(0,2^2)$; $\beta_0 = 1$).}
                                                  
! Use of \@icentercr doesn't match its definition.
\@ifnextchar ...eserved@d =#1\def \reserved@a {#2}
                                                  \def \reserv
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

checking R code for possible problems ... NOTE
.dunif.exp: no visible global function definition for 'dunif'
.dunif.exp: no visible global function definition for 'dexp'
.logpost: no visible global function definition for 'dnorm'
.pt2: no visible global function definition for 'pbeta'
.qt2: no visible global function definition for 'qbeta'
.rlogis2: no visible global function definition for 'runif'
.rt2: no visible global function definition for 'runif'
.tbs.survreg: no visible global function definition for 'model.frame'
.tbs.survreg: no visible global function definition for 'model.matrix'
... 61 lines ...
  ppoints qbeta qcauchy qlogis qnorm qqline qqplot quantile rcauchy
  rlogis rnorm runif sd ts
Consider adding
  importFrom("graphics", "hist", "lines", "par", "plot")
  importFrom("stats", "acf", "dcauchy", "dexp", "dlogis", "dnorm",
             "dunif", "model.frame", "model.matrix", "model.response",
             "optim", "pbeta", "pcauchy", "plogis", "pnorm", "ppoints",
             "qbeta", "qcauchy", "qlogis", "qnorm", "qqline", "qqplot",
             "quantile", "rcauchy", "rlogis", "rnorm", "runif", "sd",
             "ts")
to your NAMESPACE file.
```

## acnr (0.2.4)
Maintainer: Morgane Pierre-Jean <morgane.pierrejean@genopole.cnrs.fr>

0 errors | 0 warnings | 0 notes

## alphahull (2.1)
Maintainer: Beatriz Pateiro-Lopez <beatriz.pateiro@usc.es>

0 errors | 0 warnings | 0 notes

## arc (1.0)
Maintainer: Tomas Kliegr <kliegr@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

```

## aroma.affymetrix (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is 1028.1Mb
  sub-directories of 1Mb or more:
    R            1024.9Mb
    help            1.1Mb
    testScripts     1.2Mb
```

## aroma.apd (0.6.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.apd/issues

0 errors | 0 warnings | 0 notes

## aroma.cn (1.6.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.cn/issues

0 errors | 0 warnings | 0 notes

## aroma.core (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.core/issues

0 errors | 0 warnings | 2 notes

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: 'expectile' 'mpcbs'

checking installed package size ... NOTE
  installed size is 1025.6Mb
  sub-directories of 1Mb or more:
    R  1024.5Mb
```

## babel (0.3-0)
Maintainer: Adam B. Olshen <adam.olshen@ucsf.edu>

0 errors | 0 warnings | 0 notes

## bedr (1.0.3)
Maintainer: Paul Boutros <Paul.Boutros@oicr.on.ca>

1 error  | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in 'bedr-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: bedr
> ### Title: Main bedtools wrapper function.
> ### Aliases: bedr
> ### Keywords: bedtools bedops tabix region interval bed
> 
... 281 lines ...
head of file a ...
[1] "chr1:10-100"  "chr1:101-210" "chr1:211-212" "chr10:50-100" "chr2:10-60"  
[6] "chr20:1-5"   
head of file b ...
[1] "chr1:1-10"      "chr1:111-250"   "chr1:2000-2010" "chr10:100-150" 
[5] "chr2:1-5"       "chr2:40-60"    
ERROR: Looks like bedtools had a problem
Error in bedr(engine = "bedtools", input = list(a = x, b = y), method = "subtract",  : 
  
Calls: bedr.subtract.region -> bedr
Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...


Tool:    bedtools subtract (aka subtractBed)
Version: 2.15.0
Summary: Removes the portion(s) of an interval that is overlapped
	 by another feature(s).

... 8 lines ...
	-s	Require same strandedness.  That is, only subtract hits in B
		that overlap A on the _same_ strand.
		- By default, overlaps are subtracted without respect to strand.

	-S	Force strandedness.  That is, only subtract hits in B that
		overlap A on the _opposite_ strand.
		- By default, overlaps are subtracted without respect to strand.

Quitting from lines 175-191 (Using-bedr.Rmd) 
Error: processing vignette 'Using-bedr.Rmd' failed with diagnostics:
Execution halted
```

## calmate (0.12.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/calmate/issues

0 errors | 0 warnings | 0 notes

## demi (1.1.2)
Maintainer: Sten Ilmjarv <sten.ilmjarv@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
DEMIPathway: no visible global function definition for 'dhyper'
DEMIPathway: no visible global function definition for 'p.adjust'
calcHypergeoExon: no visible global function definition for 'dhyper'
calcHypergeoProb: no visible global function definition for 'dhyper'
demi: no visible global function definition for 'write.table'
demi.t.test: no visible global function definition for 't.test'
demi.wilcox.test: no visible global function definition for
  'wilcox.test'
demi.wilcox.test.fast: no visible global function definition for
... 10 lines ...
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

## dplR (1.6.4)
Maintainer: Andy Bunn <andy.bunn@wwu.edu>

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in 'tests/testthat.R' failed.
Last 13 lines of output:
  latexify(enc2utf8(latin1String), doublebackslash = FALSE) not equal to `latinConverted`.
  1/1 mismatches
  x[1]: "clich\\'{e} ma\\~{n}ana"
  y[1]: "clich\\textless e9\\textgreater{} ma\\textless f1\\textgreater ana"
  
  
  testthat results ================================================================
  OK: 461 SKIPPED: 0 FAILED: 2
  1. Failure: latexify handles different encodings (@test-utils.R#251) 
  2. Failure: latexify handles different encodings (@test-utils.R#252) 
  
  Error: testthat unit tests failed
  Execution halted

checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
                   user system elapsed
rwi.stats.running 5.917  0.016   5.946
```

## edgar (1.0.5)
Maintainer: Gunratan Lonare <lonare.gunratan@gmail.com>

0 errors | 0 warnings | 0 notes

## eiCompare (1.7)
Maintainer: Loren Collingwood <loren.collingwood@ucr.edu>

0 errors | 0 warnings | 0 notes

## evclust (1.0.3)
Maintainer: Thierry Denoeux <tdenoeux@utc.fr>

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is 1024.3Mb
  sub-directories of 1Mb or more:
    doc  1024.0Mb
```

## ezknitr (0.4)
Maintainer: Dean Attali <daattali@gmail.com>  
Bug reports: https://github.com/daattali/ezknitr/issues

0 errors | 0 warnings | 0 notes

## freesurfer (0.9.8)
Maintainer: John Muschelli <muschellij2@gmail.com>  
Bug reports: https://github.com/muschellij2/freesurfer/issues

0 errors | 0 warnings | 0 notes

## fslr (1.9.2.1)
Maintainer: John Muschelli <muschellij2@gmail.com>  
Bug reports: https://github.com/muschellij2/fslr/issues

0 errors | 0 warnings | 0 notes

## future.BatchJobs (0.13.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/future.BatchJobs/issues

0 errors | 0 warnings | 0 notes

## hashFunction (1.0)
Maintainer: Xiaowei Zhan <zhanxw@gmail.com>

0 errors | 0 warnings | 2 notes

```
checking package namespace information ... NOTE
  Namespace with empty importFrom: 'utils'

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  'test'
```

## hoardeR (0.9)
Maintainer: Daniel Fischer <daniel.fischer@luke.fi>

0 errors | 0 warnings | 0 notes

## joinXL (1.0.0)
Maintainer: Yvonne Glanville <yvonneglanville@gmail.com>  
Bug reports: http://github.com/yvonneglanville/joinXL/issues

0 errors | 0 warnings | 0 notes

## listenv (0.6.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/listenv/issues

0 errors | 0 warnings | 0 notes

## mailR (0.4.1)
Maintainer: Rahul Premraj <r.premraj+mailR@gmail.com>

0 errors | 0 warnings | 0 notes

## mcparallelDo (1.1.0)
Maintainer: Russell S. Pierce <russell.s.pierce@gmail.com>  
Bug reports: https://github.com/drknexus/mcparallelDo/issues

0 errors | 0 warnings | 0 notes

## qrcode (0.1.1)
Maintainer: Victor Teh <victorteh@gmail.com>

0 errors | 0 warnings | 0 notes

## rvg (0.1.0)
Maintainer: David Gohel <david.gohel@ardata.fr>  
Bug reports: https://github.com/davidgohel/rvg/issues

2 errors | 4 warnings | 6 notes

```
checking examples ... ERROR
Running examples in 'rvg-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: write_docx
> ### Title: Microsoft Word Graphics Device
> ### Aliases: write_docx
> ### Keywords: device
> 
> ### ** Examples
> 
> write_docx(file = "my_plot_1.docx", code = plot(rnorm(10)) )

 *** caught segfault ***
address 0x2af500000000, cause 'memory not mapped'

Traceback:
 1: .Call("xml2_doc_parse_file", PACKAGE = "xml2", path, encoding,     as_html, options)
 2: doc_parse_file(con, encoding = encoding, as_html = as_html, options = options)
 3: read_xml.character(x = filename)
 4: read_xml(x = filename)
 5: read_relationship(filename = document_rel)
 6: write_docx(file = "my_plot_1.docx", code = plot(rnorm(10)))
An irrecoverable exception occurred. R is aborting now ...

checking tests ... ERROR
Running the tests in 'tests/testthat.R' failed.
Last 13 lines of output:
  19: source_file(path, new.env(parent = env), chdir = TRUE)
  20: force(code)
  21: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE)        end_context()    })
  22: FUN(X[[i]], ...)
  23: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE)
  24: force(code)
  25: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE))
  26: test_files(paths, reporter = reporter, env = env, ...)
  27: test_dir(test_path, reporter = reporter, env = env, filter = filter,     ...)
  28: with_top_env(env, {    test_dir(test_path, reporter = reporter, env = env, filter = filter,         ...)})
  29: run_tests(package, test_path, filter, reporter, ...)
  30: test_check("rvg")
  An irrecoverable exception occurred. R is aborting now ...

checking whether package 'rvg' can be installed ... WARNING
Found the following significant warnings:
  Warning: program compiled against libxml 209 using older 207
See '/cbc/henrik/repositories/R.utils/revdep/checks/rvg.Rcheck/00install.out' for details.

checking S3 generic/method consistency ... WARNING
Warning: program compiled against libxml 209 using older 207
See section 'Generic functions and methods' in the 'Writing R
Extensions' manual.

checking replacement functions ... WARNING
Warning: program compiled against libxml 209 using older 207
The argument of a replacement function which corresponds to the right
hand side must be named 'value'.

checking for missing documentation entries ... WARNING
Warning: program compiled against libxml 209 using older 207
All user-level objects in a package should have documentation entries.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.

checking installed package size ... NOTE
  installed size is 1024.2Mb
  sub-directories of 1Mb or more:
    libs  1024.0Mb

checking whether the namespace can be loaded with stated dependencies ... NOTE
Warning: program compiled against libxml 209 using older 207

A namespace must be able to be loaded with just the base namespace
loaded: otherwise if the namespace gets loaded by a saved object, the
session will be unable to start.

Probably some imports need to be declared in the NAMESPACE file.

checking dependencies in R code ... NOTE
Warning: program compiled against libxml 209 using older 207

checking foreign function calls ... NOTE
Warning: program compiled against libxml 209 using older 207
See chapter 'System and foreign language interfaces' in the 'Writing R
Extensions' manual.

checking R code for possible problems ... NOTE
Warning: program compiled against libxml 209 using older 207
Warning: program compiled against libxml 209 using older 207

checking Rd \usage sections ... NOTE
Warning: program compiled against libxml 209 using older 207
The \usage entries for S3 methods should use the \method markup and not
their full name.
See chapter 'Writing R documentation files' in the 'Writing R
Extensions' manual.
```

## scphaser (1.0.0)
Maintainer: Daniel Edsgärd <edsgard@hotmail.com>  
Bug reports: https://github.com/edsgard/scphaser/issues

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

Examples with CPU or elapsed time > 5s
             user system elapsed
set_gt_conc 5.286  0.028   5.325

checking installed package size ... NOTE
  installed size is 1024.4Mb
  sub-directories of 1Mb or more:
    data  1024.0Mb
```

## snplist (0.15)
Maintainer: Alexander Sibley <alexander.sibley@dm.duke.edu>

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
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

## spm12r (1.1.1)
Maintainer: John Muschelli <muschellij2@gmail.com>

0 errors | 0 warnings | 0 notes

