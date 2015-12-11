# CRAN submission R.utils 2.2.0
on 2015-12-09

Updates related to R / CRAN:

* Explicit import of all 'graphics', 'grDevices', 'stats'
  and 'utils' functions.

Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R version 3.2.2 Patched (2015-11-25 r69697)
  - R version 3.2.3 RC (2015-12-06 r69744)
  - R Under development (unstable) (2015-12-07 r69745)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 Patched (2015-11-13 r69636)
  - R version 3.2.3 RC (2015-12-02 r69719)
  - R Under development (unstable) (2015-12-02 r69719)

It has also verified using the <http://win-builder.r-project.org/> service.

Moreover, the updates cause no issues for any of the following
59 reverse dependency on CRAN and Bioconductor, which have been
tested with `R CMD check --as-cran`: ACNE 0.8.1, Causata 4.2-0,
ChemoSpec 4.1.15, DEGraph 1.22.0, DupChecker 1.8.0, EEM 1.0.4,
ENiRG 0.1, FGNet 3.4.0, GhcnDaily 1.5, HyPhy 1.0, MPAgenomics 1.1.2,
MSIseq 1.0.0, NSA 0.0.32, PGA 1.0.0, PSCBS 0.60.0, PopGenReport 2.2,
PubBias 1.0, QDNAseq 1.6.0, R.cache 0.12.0, R.devices 2.13.1,
R.filesets 2.9.0, R.huge 0.9.0, R.matlab 3.3.0, R.rsp 0.20.0,
ReportingTools 2.10.0, SDMTools 1.1-221, SpaDES 1.0.1,
TBSSurvival 1.2, ToPASeq 1.4.0, acnr 0.2.4, affxparser 1.42.0,
aroma.affymetrix 2.14.0, aroma.apd 0.6.0, aroma.cn 1.6.1,
aroma.core 2.14.0, aroma.light 3.0.0, babel 0.2-6, bedr 1.0.2,
bsseq 1.6.0, calmate 0.12.1, demi 1.1.2, dplR 1.6.3, edgar 1.0.4,
ezknitr 0.3.0, fslr 1.5.0, gdalUtils 2.0.1.7, hashFunction 1.0,
hoardeR 0.1, mailR 0.4.1, mcparallelDo 1.0.0, metaX 1.0.0,
oneChannelGUI 1.36.0, openCyto 1.8.3, paxtoolsr 1.4.0, proteoQC 1.6.0,
qrcode 0.1.1, snplist 0.15, spm12r 1.1.1 and tmle.npvi 0.10.0.
