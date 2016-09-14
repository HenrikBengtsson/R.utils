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
8 packages with problems

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

## arc (1.0)
Maintainer: Tomas Kliegr <kliegr@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
checking a package with encoding  'UTF-8'  in an ASCII locale

```

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

