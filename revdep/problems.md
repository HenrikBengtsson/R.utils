# affxparser

Version: 1.54.0

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

Version: 3.12.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/rsp/.rspPlugins
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# AUCell

Version: 1.4.1

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

Version: 1.18.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("bsseq")
      ── 1. Error: Expected parallelisation backends work with in-memory realization b
      BatchJobsParam() requires the 'BatchJobs' package
      1: BSmooth(bsseq_test, BPPARAM = BatchJobsParam(2, progressbar = FALSE)) at testthat/test_BSmooth.R:64
      2: is(BPPARAM, "SnowParam")
      3: BatchJobsParam(2, progressbar = FALSE)
      4: stop("BatchJobsParam() requires the 'BatchJobs' package")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 135 SKIPPED: 6 FAILED: 1
      1. Error: Expected parallelisation backends work with in-memory realization backend (@test_BSmooth.R#64) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        data   6.5Mb
        doc    1.9Mb
        libs   1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘DelayedArray:::.normarg_grid’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘GenomicRanges:::.extract_groups_from_GenomicRanges’
      ‘GenomicRanges:::.get_circle_length’
      ‘GenomicRanges:::extraColumnSlotNames’ ‘HDF5Array:::.create_dir’
      ‘HDF5Array:::.shorten_h5_paths’
      ‘IRanges:::.shift_ranges_in_groups_to_first_circle’
      ‘S4Vectors:::make_zero_col_DataFrame’ ‘S4Vectors:::new_DataFrame’
      ‘S4Vectors:::normalize_names_replacement_value’
      ‘S4Vectors:::numeric2integer’ ‘S4Vectors:::sapply_isNULL’
      ‘data.table:::funique’
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

# ChemoSpec

Version: 5.0.225

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘chemometrics’
    ```

# ChemoSpec2D

Version: 0.2.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ChemoSpec’
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

Version: 1.18.1

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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rglpk’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        libs   6.4Mb
    ```

# DatabaseConnector

Version: 2.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DatabaseConnectorJars’
      All declared Imports should be used.
    ```

# ddPCRclust

Version: 1.2.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    exportPlots: no visible binding for global variable ‘Cluster’
    Undefined global functions or variables:
      Cluster
    ```

# DeepBlueR

Version: 1.8.0

## In both

*   R CMD check timed out
    

*   checking Rd files ... NOTE
    ```
    prepare_Rd: deepblue_enrich_regions_fast.Rd:35-38: Dropping empty section \examples
    ```

# DEGraph

Version: 1.34.0

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

Version: 1.20.0

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

# eegc

Version: 1.8.1

## In both

*   R CMD check timed out
    

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

# ELMER

Version: 2.6.1

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > data <- ELMER:::getdata("elmer.data.example")
    > pair <- data.frame(Probe = c("cg19403323","cg19403323", "cg26403223"),
    +                    GeneID = c("ENSG00000196878", "ENSG00000009790", "ENSG00000009790" ),
    +                    Symbol = c("TRAF3IP3","LAMB3","LAMB3"),
    +                    Raw.p =c(0.001,0.00001,0.001),
    +                    Pe = c(0.001,0.00001,0.001))
    > schematic.plot(data,
    +                group.col = "definition",
    +                group1 = "Primary solid Tumor",
    +                group2 = "Solid Tissue Normal",
    +                pair = pair,
    +                byProbe = "cg19403323")
    Searching for the 20 near genes
    Identifying gene position for each probe
    
      |                                                                            
      |                                                                      |   0%
      |                                                                            
      |======================================================================| 100%Error: GenomicInteractions package is needed for this function to work. Please install it.
    Execution halted
    ```

*   R CMD check timed out
    

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'progress'
    ':::' calls which should be '::':
      'TCGAbiolinks:::colDataPrepare' 'TCGAbiolinks:::get.GRCh.bioMart'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'get.enriched.motif':
    get.enriched.motif
      Code: function(data, probes.motif, probes, min.motif.quality = "DS",
                     background.probes, pvalue = 0.05, lower.OR = 1.1,
                     min.incidence = 10, dir.out = "./", label = NULL, save
                     = TRUE, plot.title = "")
      Docs: function(data, probes.motif, probes, min.motif.quality = "DS",
                     background.probes, pvalue = 0.05, lower.OR = 1.1,
                     min.incidence = 10, dir.out = "./", label = NULL, save
                     = TRUE, plot.title = NULL)
      Mismatches in argument default values:
        Name: 'plot.title' Code: "" Docs: NULL
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GenomicInteractions’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 44.1Mb
      sub-directories of 1Mb or more:
        doc  43.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    getRegionNearGenes : f: no visible binding for global variable 'Side'
    getRegionNearGenes: no visible binding for global variable 'ID'
    getTFtargets: no visible binding for global variable 'TF'
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
    scatter: no visible binding for global variable 'mae'
    scatter.plot: no visible binding for global variable 'ID'
    scatter.plot: no visible binding for global variable 'GeneID'
    Undefined global functions or variables:
      DistanceTSS Gene GeneID Hugo_Symbol ID OR Probe Side Sides TF
      ensembl_gene_id label lowerOR mae motif pvalue subsetByOverlaps
      upperOR value x y z
    ```

# esATAC

Version: 1.4.2

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

# eudysbiome

Version: 1.12.0

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

Version: 3.16.0

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

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ExtDist’
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

# LSPFP

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tcltk2’
      All declared Imports should be used.
    ```

# methylKit

Version: 1.8.1

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

Version: 1.6.1

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

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
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

Version: 1.20.2

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

# paxtoolsr

Version: 1.16.0

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

Version: 1.12.1

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

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ecodist’
    ```

# primirTSS

Version: 1.0.1

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

# psichomics

Version: 1.8.1

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

Version: 1.18.0

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

Version: 1.2.1

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
    Quitting from lines 323-327 (RcisTarget.Rmd) 
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

# RCy3

Version: 2.2.6

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
      installed size is 12.8Mb
      sub-directories of 1Mb or more:
        doc  10.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    createNetworkFromDataFrames: no visible binding for global variable
      ‘SUID’
    Undefined global functions or variables:
      SUID
    ```

# ReportingTools

Version: 2.22.1

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

# TCGAbiolinks

Version: 2.10.3

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 98.5Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        data   3.5Mb
        doc   93.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
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
    readExonQuantification: no visible binding for global variable ‘exon’
    readExonQuantification: no visible binding for global variable
      ‘coordinates’
    Undefined global functions or variables:
      Tumor.purity barcode c3net clinical coordinates dCommSignif
      dNetInduce dNetPipeline exon knnmi.cross limmacontrasts.fit
      limmamakeContrasts minet portions rse_gene value visNet
    ```

# TFEA.ChIP

Version: 1.2.3

## In both

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

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   4.5Mb
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

Version: 2.2.1

## In both

*   checking whether package ‘Uniquorn’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘GenomicRanges::shift’ by ‘data.table::shift’ when loading ‘Uniquorn’
    See ‘/home/hb/repositories/R.utils/revdep/checks/Uniquorn/new/Uniquorn.Rcheck/00install.out’ for details.
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
      ‘Tumor_Sample_Barcode’
    parse_ccle_genotype_data: no visible binding for global variable
      ‘Index’
    parse_cosmic_genotype_data: no visible binding for global variable
      ‘position’
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
      Index Tumor_Sample_Barcode ccls_all g_mat_exclude output_file_xls
      position res_table sig_vec sim_list tail vcf_fingerprint
    Consider adding
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

