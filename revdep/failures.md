# BgeeDB

<details>

* Version: 2.22.2
* GitHub: https://github.com/BgeeDB/BgeeDB_R
* Source code: https://github.com/cran/BgeeDB
* Date/Publication: 2022-06-23
* Number of recursive dependencies: 95

Run `revdep_details(, "BgeeDB")` for more info

</details>

## In both

*   R CMD check timed out
    

# biscuiteer

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_cheapcgi.c -o ucsc/_cheapcgi.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/internet.c -o ucsc/internet.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/https.c -o ucsc/https.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/base64.c -o ucsc/base64.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/verbose.c -o ucsc/verbose.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/os.c -o ucsc/os.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/wildcmp.c -o ucsc/wildcmp.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_portimpl.c -o ucsc/_portimpl.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’


trying URL 'https://cloud.r-project.org/src/contrib/dbplyr_2.2.1.tar.gz'
Content type 'application/x-gzip' length 670569 bytes (654 KB)
==================================================
downloaded 654 KB

trying URL 'https://cloud.r-project.org/src/contrib/downlit_0.4.1.tar.gz'
Content type 'application/x-gzip' length 36641 bytes (35 KB)
==================================================
downloaded 35 KB

...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (biomaRt)
* installing *source* package ‘BSgenome’ ...
** using staged installation
** R
** inst


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_cheapcgi.c -o ucsc/_cheapcgi.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/internet.c -o ucsc/internet.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/https.c -o ucsc/https.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/base64.c -o ucsc/base64.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/verbose.c -o ucsc/verbose.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/os.c -o ucsc/os.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/wildcmp.c -o ucsc/wildcmp.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_portimpl.c -o ucsc/_portimpl.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’


trying URL 'https://cloud.r-project.org/src/contrib/dbplyr_2.2.1.tar.gz'
Content type 'application/x-gzip' length 670569 bytes (654 KB)
==================================================
downloaded 654 KB

trying URL 'https://cloud.r-project.org/src/contrib/downlit_0.4.1.tar.gz'
Content type 'application/x-gzip' length 36641 bytes (35 KB)
==================================================
downloaded 35 KB

...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (biomaRt)
* installing *source* package ‘BSgenome’ ...
** using staged installation
** R
** inst


```
# CINdex

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
rm -f fusion/calvin_files/data/src/CDFData.o fusion/calvin_files/data/src/CDFProbeGroupInformation.o fusion/calvin_files/data/src/CDFProbeInformation.o fusion/calvin_files/data/src/CDFProbeSetInformation.o fusion/calvin_files/data/src/CDFQCProbeInformation.o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o fusion/calvin_files/data/src/CELData.o fusion/calvin_files/data/src/CHPBackgroundZone.o fusion/calvin_files/data/src/CHPData.o fusion/calvin_files/data/src/CHPExpressionEntry.o fusion/calvin_files/data/src/CHPMultiDataData.o fusion/calvin_files/data/src/CHPTilingData.o fusion/calvin_files/data/src/CHPQuantificationData.o fusion/calvin_files/data/src/CHPQuantificationDetectionData.o fusion/calvin_files/data/src/CHPGenotypeEntry.o fusion/calvin_files/data/src/CHPUniversalEntry.o fusion/calvin_files/data/src/ColumnInfo.o fusion/calvin_files/data/src/DataGroup.o fusion/calvin_files/data/src/DataGroupHeader.o fusion/calvin_files/data/src/DataSet.o fusion/calvin_files/data/src/DataSetHeader.o fusion/calvin_files/data/src/FileHeader.o fusion/calvin_files/data/src/GenericData.o fusion/calvin_files/data/src/GenericDataHeader.o fusion/calvin_files/exception/src/ExceptionBase.o fusion/calvin_files/fusion/src/CalvinAdapter/CalvinCELDataAdapter.o fusion/calvin_files/fusion/src/CalvinAdapter/CalvinCHPDataAdapter.o fusion/calvin_files/fusion/src/FusionBPMAPData.o fusion/calvin_files/fusion/src/FusionCDFData.o fusion/calvin_files/fusion/src/FusionCDFQCProbeSetNames.o fusion/calvin_files/fusion/src/FusionCELData.o fusion/calvin_files/fusion/src/FusionCHPData.o fusion/calvin_files/fusion/src/FusionProbeSetResults.o fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCELDataAdapter.o fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCHPDataAdapter.o fusion/calvin_files/fusion/src/FusionCHPLegacyData.o fusion/calvin_files/fusion/src/FusionCHPMultiDataAccessor.o fusion/calvin_files/fusion/src/FusionCHPMultiDataData.o fusion/calvin_files/fusion/src/FusionCHPTilingData.o fusion/calvin_files/fusion/src/FusionCHPGenericData.o fusion/calvin_files/fusion/src/FusionCHPQuantificationData.o fusion/calvin_files/fusion/src/FusionCHPQuantificationDetectionData.o fusion/calvin_files/parameter/src/ParameterNameValueType.o fusion/calvin_files/parsers/src/CDFFileReader.o fusion/calvin_files/parsers/src/CelFileReader.o fusion/calvin_files/parsers/src/CHPFileReader.o fusion/calvin_files/parsers/src/CHPMultiDataFileReader.o fusion/calvin_files/parsers/src/CHPTilingFileReader.o fusion/calvin_files/parsers/src/CHPQuantificationFileReader.o fusion/calvin_files/parsers/src/CHPQuantificationDetectionFileReader.o fusion/calvin_files/parsers/src/DataGroupHeaderReader.o fusion/calvin_files/parsers/src/DataGroupReader.o fusion/calvin_files/parsers/src/DataSetHeaderReader.o fusion/calvin_files/parsers/src/DataSetReader.o fusion/calvin_files/parsers/src/FileHeaderReader.o fusion/calvin_files/parsers/src/FileInput.o fusion/calvin_files/parsers/src/GenericDataHeaderReader.o fusion/calvin_files/parsers/src/GenericFileReader.o fusion/calvin_files/utils/src/AffymetrixGuid.o fusion/calvin_files/utils/src/DateTime.o fusion/calvin_files/utils/src/FileUtils.o fusion/calvin_files/utils/src/StringUtils.o fusion/calvin_files/utils/src/checksum.o fusion/file/BPMAPFileData.o fusion/file/BPMAPFileWriter.o fusion/file/CDFFileData.o fusion/file/CELFileData.o fusion/file/CHPFileData.o fusion/file/FileIO.o fusion/file/FileWriter.o fusion/file/TsvFile/ClfFile.o fusion/file/TsvFile/PgfFile.o fusion/file/TsvFile/TsvFile.o fusion/util/AffxByteArray.o fusion/util/AffxConv.o fusion/util/MsgStream.o fusion/util/Util.o fusion/util/Err.o fusion/util/Fs.o fusion/util/Verbose.o fusion/util/RowFile.o fusion/util/TableFile.o fusion/util/Convert.o R_affx_cel_parser.o R_affx_cdf_parser.o R_affx_cdf_extras.o R_affx_bpmap_parser.o R_affx_clf_pgf_parser.o R_affx_chp_parser.o 000.init.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFData.cpp -o fusion/calvin_files/data/src/CDFData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeGroupInformation.cpp -o fusion/calvin_files/data/src/CDFProbeGroupInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeInformation.cpp -o fusion/calvin_files/data/src/CDFProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CELData.cpp -o fusion/calvin_files/data/src/CELData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPBackgroundZone.cpp -o fusion/calvin_files/data/src/CHPBackgroundZone.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPData.cpp -o fusion/calvin_files/data/src/CHPData.o
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/base64.c -o ucsc/base64.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/verbose.c -o ucsc/verbose.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/os.c -o ucsc/os.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/wildcmp.c -o ucsc/wildcmp.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_portimpl.c -o ucsc/_portimpl.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/dbplyr_2.2.1.tar.gz'
Content type 'application/x-gzip' length 670569 bytes (654 KB)
==================================================
downloaded 654 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

...
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GOSemSim)
* installing *source* package ‘pd.genomewidesnp.6’ ...
** using staged installation
** R
** inst


```
### CRAN

```
rm -f fusion/calvin_files/data/src/CDFData.o fusion/calvin_files/data/src/CDFProbeGroupInformation.o fusion/calvin_files/data/src/CDFProbeInformation.o fusion/calvin_files/data/src/CDFProbeSetInformation.o fusion/calvin_files/data/src/CDFQCProbeInformation.o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o fusion/calvin_files/data/src/CELData.o fusion/calvin_files/data/src/CHPBackgroundZone.o fusion/calvin_files/data/src/CHPData.o fusion/calvin_files/data/src/CHPExpressionEntry.o fusion/calvin_files/data/src/CHPMultiDataData.o fusion/calvin_files/data/src/CHPTilingData.o fusion/calvin_files/data/src/CHPQuantificationData.o fusion/calvin_files/data/src/CHPQuantificationDetectionData.o fusion/calvin_files/data/src/CHPGenotypeEntry.o fusion/calvin_files/data/src/CHPUniversalEntry.o fusion/calvin_files/data/src/ColumnInfo.o fusion/calvin_files/data/src/DataGroup.o fusion/calvin_files/data/src/DataGroupHeader.o fusion/calvin_files/data/src/DataSet.o fusion/calvin_files/data/src/DataSetHeader.o fusion/calvin_files/data/src/FileHeader.o fusion/calvin_files/data/src/GenericData.o fusion/calvin_files/data/src/GenericDataHeader.o fusion/calvin_files/exception/src/ExceptionBase.o fusion/calvin_files/fusion/src/CalvinAdapter/CalvinCELDataAdapter.o fusion/calvin_files/fusion/src/CalvinAdapter/CalvinCHPDataAdapter.o fusion/calvin_files/fusion/src/FusionBPMAPData.o fusion/calvin_files/fusion/src/FusionCDFData.o fusion/calvin_files/fusion/src/FusionCDFQCProbeSetNames.o fusion/calvin_files/fusion/src/FusionCELData.o fusion/calvin_files/fusion/src/FusionCHPData.o fusion/calvin_files/fusion/src/FusionProbeSetResults.o fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCELDataAdapter.o fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCHPDataAdapter.o fusion/calvin_files/fusion/src/FusionCHPLegacyData.o fusion/calvin_files/fusion/src/FusionCHPMultiDataAccessor.o fusion/calvin_files/fusion/src/FusionCHPMultiDataData.o fusion/calvin_files/fusion/src/FusionCHPTilingData.o fusion/calvin_files/fusion/src/FusionCHPGenericData.o fusion/calvin_files/fusion/src/FusionCHPQuantificationData.o fusion/calvin_files/fusion/src/FusionCHPQuantificationDetectionData.o fusion/calvin_files/parameter/src/ParameterNameValueType.o fusion/calvin_files/parsers/src/CDFFileReader.o fusion/calvin_files/parsers/src/CelFileReader.o fusion/calvin_files/parsers/src/CHPFileReader.o fusion/calvin_files/parsers/src/CHPMultiDataFileReader.o fusion/calvin_files/parsers/src/CHPTilingFileReader.o fusion/calvin_files/parsers/src/CHPQuantificationFileReader.o fusion/calvin_files/parsers/src/CHPQuantificationDetectionFileReader.o fusion/calvin_files/parsers/src/DataGroupHeaderReader.o fusion/calvin_files/parsers/src/DataGroupReader.o fusion/calvin_files/parsers/src/DataSetHeaderReader.o fusion/calvin_files/parsers/src/DataSetReader.o fusion/calvin_files/parsers/src/FileHeaderReader.o fusion/calvin_files/parsers/src/FileInput.o fusion/calvin_files/parsers/src/GenericDataHeaderReader.o fusion/calvin_files/parsers/src/GenericFileReader.o fusion/calvin_files/utils/src/AffymetrixGuid.o fusion/calvin_files/utils/src/DateTime.o fusion/calvin_files/utils/src/FileUtils.o fusion/calvin_files/utils/src/StringUtils.o fusion/calvin_files/utils/src/checksum.o fusion/file/BPMAPFileData.o fusion/file/BPMAPFileWriter.o fusion/file/CDFFileData.o fusion/file/CELFileData.o fusion/file/CHPFileData.o fusion/file/FileIO.o fusion/file/FileWriter.o fusion/file/TsvFile/ClfFile.o fusion/file/TsvFile/PgfFile.o fusion/file/TsvFile/TsvFile.o fusion/util/AffxByteArray.o fusion/util/AffxConv.o fusion/util/MsgStream.o fusion/util/Util.o fusion/util/Err.o fusion/util/Fs.o fusion/util/Verbose.o fusion/util/RowFile.o fusion/util/TableFile.o fusion/util/Convert.o R_affx_cel_parser.o R_affx_cdf_parser.o R_affx_cdf_extras.o R_affx_bpmap_parser.o R_affx_clf_pgf_parser.o R_affx_chp_parser.o 000.init.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFData.cpp -o fusion/calvin_files/data/src/CDFData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeGroupInformation.cpp -o fusion/calvin_files/data/src/CDFProbeGroupInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeInformation.cpp -o fusion/calvin_files/data/src/CDFProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CELData.cpp -o fusion/calvin_files/data/src/CELData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPBackgroundZone.cpp -o fusion/calvin_files/data/src/CHPBackgroundZone.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPData.cpp -o fusion/calvin_files/data/src/CHPData.o
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/base64.c -o ucsc/base64.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/verbose.c -o ucsc/verbose.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/os.c -o ucsc/os.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/wildcmp.c -o ucsc/wildcmp.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -DUSE_SSL -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I/usr/local/include   -fpic  -g -O2  -c ucsc/_portimpl.c -o ucsc/_portimpl.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/dbplyr_2.2.1.tar.gz'
Content type 'application/x-gzip' length 670569 bytes (654 KB)
==================================================
downloaded 654 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

...
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GOSemSim)
* installing *source* package ‘pd.genomewidesnp.6’ ...
** using staged installation
** R
** inst


```
# circRNAprofiler

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c rle.c -o rle.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’


trying URL 'https://cloud.r-project.org/src/contrib/dbplyr_2.2.1.tar.gz'
Content type 'application/x-gzip' length 670569 bytes (654 KB)
==================================================
downloaded 654 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c rle.c -o rle.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’


trying URL 'https://cloud.r-project.org/src/contrib/dbplyr_2.2.1.tar.gz'
Content type 'application/x-gzip' length 670569 bytes (654 KB)
==================================================
downloaded 654 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
# ddPCRclust

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c inPolygon.cpp -o inPolygon.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c inPolytope.cpp -o inPolytope.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c logicleTransform.cpp -o logicleTransform.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c pairVectorRcppWrap.cpp -o pairVectorRcppWrap.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c poly_centroid.cpp -o poly_centroid.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c sortBytes.cpp -o sortBytes.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c uint2double.cpp -o uint2double.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c zeroin.cpp -o zeroin.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o flowCore.so FastLogicle.o Hyperlog.o Logicle.o RcppExports.o biexponential.o convertRawBytes.o fcsTextParse.o hyperlogTransform.o inPolygon.o inPolytope.o logicleTransform.o pairVectorRcppWrap.o poly_centroid.o sortBytes.o uint2double.o zeroin.o /c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/lib/libcytolib.a -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
if [ `uname -s` = 'Darwin' ]; then install_name_tool -change /usr/local/clang4/lib/libc++.1.dylib /usr/lib/libc++.1.dylib flowCore.so; fi


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
...
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c inPolygon.cpp -o inPolygon.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c inPolytope.cpp -o inPolytope.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c logicleTransform.cpp -o logicleTransform.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c pairVectorRcppWrap.cpp -o pairVectorRcppWrap.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c poly_centroid.cpp -o poly_centroid.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c sortBytes.cpp -o sortBytes.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c uint2double.cpp -o uint2double.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RcppArmadillo/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/RProtoBufLib/include' -I/usr/local/include   -fpic  -g -O2  -c zeroin.cpp -o zeroin.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o flowCore.so FastLogicle.o Hyperlog.o Logicle.o RcppExports.o biexponential.o convertRawBytes.o fcsTextParse.o hyperlogTransform.o inPolygon.o inPolytope.o logicleTransform.o pairVectorRcppWrap.o poly_centroid.o sortBytes.o uint2double.o zeroin.o /c4/home/henrik/repositories/R.utils/revdep/library/ddPCRclust/cytolib/lib/libcytolib.a -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
if [ `uname -s` = 'Darwin' ]; then install_name_tool -change /usr/local/clang4/lib/libc++.1.dylib /usr/lib/libc++.1.dylib flowCore.so; fi


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
...
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
# ELMER

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/rtracklayer_1.56.1.tar.gz'
Content type 'application/x-gzip' length 4018019 bytes (3.8 MB)
==================================================
downloaded 3.8 MB

...
** testing if installed package keeps a record of temporary installation path
* DONE (Gviz)
* installing *binary* package ‘rstatix’ ...
* DONE (rstatix)
* installing *source* package ‘GenomicInteractions’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/ELMER/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/rtracklayer_1.56.1.tar.gz'
Content type 'application/x-gzip' length 4018019 bytes (3.8 MB)
==================================================
downloaded 3.8 MB

...
** testing if installed package keeps a record of temporary installation path
* DONE (Gviz)
* installing *binary* package ‘rstatix’ ...
* DONE (rstatix)
* installing *source* package ‘GenomicInteractions’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading


```
# esATAC

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c readBfaToc.cc -o readBfaToc.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c read_maq_map.cc -o read_maq_map.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c sampler.c -o sampler.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c trim.c -o trim.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c util.c -o util.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c xsnap.c -o xsnap.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o ShortRead.so Biostrings_stubs.o IRanges_stubs.o R_init_ShortRead.o S4Vectors_stubs.o XVector_stubs.o alphabet.o count.o io.o io_bowtie.o io_soap.o readBfaToc.o read_maq_map.o sampler.o trim.o util.o xsnap.o -lz -fopenmp -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/clusterProfiler_4.4.4.tar.gz'
Content type 'application/x-gzip' length 2763478 bytes (2.6 MB)
==================================================
downloaded 2.6 MB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (clusterProfiler)

The downloaded source packages are in
	‘/scratch/henrik/732636/RtmphfuhCQ/downloaded_packages’


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c readBfaToc.cc -o readBfaToc.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c read_maq_map.cc -o read_maq_map.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c sampler.c -o sampler.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c trim.c -o trim.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c util.c -o util.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c xsnap.c -o xsnap.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o ShortRead.so Biostrings_stubs.o IRanges_stubs.o R_init_ShortRead.o S4Vectors_stubs.o XVector_stubs.o alphabet.o count.o io.o io_bowtie.o io_soap.o readBfaToc.o read_maq_map.o sampler.o trim.o util.o xsnap.o -lz -fopenmp -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/clusterProfiler_4.4.4.tar.gz'
Content type 'application/x-gzip' length 2763478 bytes (2.6 MB)
==================================================
downloaded 2.6 MB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (clusterProfiler)

The downloaded source packages are in
	‘/scratch/henrik/732636/RtmphfuhCQ/downloaded_packages’


```
# fastreeR

<details>

* Version: 1.0.0
* GitHub: https://github.com/gkanogiannis/fastreeR
* Source code: https://github.com/cran/fastreeR
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 86

Run `revdep_details(, "fastreeR")` for more info

</details>

## In both

*   R CMD check timed out
    

# FRASER

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include  -fopenmp -DARMA_DONT_USE_OPENMP -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include  -fopenmp -DARMA_DONT_USE_OPENMP -fpic  -g -O2  -c loss_n_gradient_functions.cpp -o loss_n_gradient_functions.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o OUTRIDER.so RcppExports.o loss_n_gradient_functions.o -fopenmp -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/Rsubread_2.10.3.tar.gz'
Content type 'application/x-gzip' length 13422321 bytes (12.8 MB)
==================================================
downloaded 12.8 MB

...
* installing *source* package ‘OUTRIDER’ ...
** using staged installation
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/FRASER/00LOCK-OUTRIDER/00new/OUTRIDER/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include  -fopenmp -DARMA_DONT_USE_OPENMP -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/FRASER/RcppArmadillo/include' -I/usr/local/include  -fopenmp -DARMA_DONT_USE_OPENMP -fpic  -g -O2  -c loss_n_gradient_functions.cpp -o loss_n_gradient_functions.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o OUTRIDER.so RcppExports.o loss_n_gradient_functions.o -fopenmp -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MatrixGenerics_1.8.1.tar.gz'
Content type 'application/x-gzip' length 28567 bytes (27 KB)
==================================================
downloaded 27 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/Rsubread_2.10.3.tar.gz'
Content type 'application/x-gzip' length 13422321 bytes (12.8 MB)
==================================================
downloaded 12.8 MB

...
* installing *source* package ‘OUTRIDER’ ...
** using staged installation
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/FRASER/00LOCK-OUTRIDER/00new/OUTRIDER/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices


```
# HiCDCPlus

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/rtracklayer_1.56.1.tar.gz'
Content type 'application/x-gzip' length 4018019 bytes (3.8 MB)
==================================================
downloaded 3.8 MB

* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
...
* installing *source* package ‘GenomicFeatures’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/HiCDCPlus/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/rtracklayer_1.56.1.tar.gz'
Content type 'application/x-gzip' length 4018019 bytes (3.8 MB)
==================================================
downloaded 3.8 MB

* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
...
* installing *source* package ‘GenomicFeatures’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
# muscData

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
in method for ‘calcVarPart’ with signature ‘"negbin"’: no definition for class “negbin”
in method for ‘checkModelStatus’ with signature ‘"negbin"’: no definition for class “negbin”
Creating a new generic function for ‘classifyTestsF’ in package ‘variancePartition’


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/muscat_1.10.1.tar.gz'
Content type 'application/x-gzip' length 5550027 bytes (5.3 MB)
==================================================
downloaded 5.3 MB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘aod’ ...
* DONE (aod)
* installing *binary* package ‘assertthat’ ...
...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (muscat)

The downloaded source packages are in
	‘/scratch/henrik/732636/RtmpPzIQrC/downloaded_packages’


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/muscData/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
in method for ‘calcVarPart’ with signature ‘"negbin"’: no definition for class “negbin”
in method for ‘checkModelStatus’ with signature ‘"negbin"’: no definition for class “negbin”
Creating a new generic function for ‘classifyTestsF’ in package ‘variancePartition’


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/muscat_1.10.1.tar.gz'
Content type 'application/x-gzip' length 5550027 bytes (5.3 MB)
==================================================
downloaded 5.3 MB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘aod’ ...
* DONE (aod)
* installing *binary* package ‘assertthat’ ...
...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (muscat)

The downloaded source packages are in
	‘/scratch/henrik/732636/RtmpPzIQrC/downloaded_packages’


```
# OSCA.intro

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scuttle.so RcppExports.o cumulative_prop.o downsample_counts.o fit_linear_model.o pool_size_factors.o sum_counts.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c adjust_shift_variance.cpp -o adjust_shift_variance.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c find_mutual_nns.cpp -o find_mutual_nns.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c smooth_gaussian_kernel.cpp -o smooth_gaussian_kernel.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o batchelor.so RcppExports.o adjust_shift_variance.o find_mutual_nns.o smooth_gaussian_kernel.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/batchelor_1.12.3.tar.gz'
Content type 'application/x-gzip' length 1997289 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

trying URL 'https://bioconductor.org/packages/3.15/data/experiment/src/contrib/scRNAseq_2.10.0.tar.gz'
Content type 'application/x-gzip' length 349138 bytes (340 KB)
==================================================
downloaded 340 KB

...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scuttle.so RcppExports.o cumulative_prop.o downsample_counts.o fit_linear_model.o pool_size_factors.o sum_counts.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c adjust_shift_variance.cpp -o adjust_shift_variance.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c find_mutual_nns.cpp -o find_mutual_nns.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c smooth_gaussian_kernel.cpp -o smooth_gaussian_kernel.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/OSCA.intro/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o batchelor.so RcppExports.o adjust_shift_variance.o find_mutual_nns.o smooth_gaussian_kernel.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/batchelor_1.12.3.tar.gz'
Content type 'application/x-gzip' length 1997289 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

trying URL 'https://bioconductor.org/packages/3.15/data/experiment/src/contrib/scRNAseq_2.10.0.tar.gz'
Content type 'application/x-gzip' length 349138 bytes (340 KB)
==================================================
downloaded 340 KB

...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
# recountmethylation

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c half_range_mode.cpp -o half_range_mode.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
...
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (minfi)
* installing *binary* package ‘IlluminaHumanMethylation450kmanifest’ ...
* DONE (IlluminaHumanMethylation450kmanifest)

The downloaded source packages are in
	‘/scratch/henrik/732636/RtmpJp3IwV/downloaded_packages’


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c half_range_mode.cpp -o half_range_mode.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
...
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (minfi)
* installing *binary* package ‘IlluminaHumanMethylation450kmanifest’ ...
* DONE (IlluminaHumanMethylation450kmanifest)

The downloaded source packages are in
	‘/scratch/henrik/732636/RtmpJp3IwV/downloaded_packages’


```
# regtools

<details>

* Version: 1.7.0
* GitHub: https://github.com/matloff/regtools
* Source code: https://github.com/cran/regtools
* Date/Publication: 2022-03-30 17:30:02 UTC
* Number of recursive dependencies: 158

Run `revdep_details(, "regtools")` for more info

</details>

## In both

*   checking whether package ‘regtools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/regtools/new/regtools.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'cdparcoord', 'partools'
    ```

## Installation

### Devel

```
* installing *source* package ‘regtools’ ...
** package ‘regtools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/c4/home/henrik/repositories/R.utils/revdep/library/regtools/rsparse/libs/rsparse.so':
  float.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘regtools’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/regtools/new/regtools.Rcheck/regtools’


```
### CRAN

```
* installing *source* package ‘regtools’ ...
** package ‘regtools’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/c4/home/henrik/repositories/R.utils/revdep/library/regtools/rsparse/libs/rsparse.so':
  float.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘regtools’
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/regtools/old/regtools.Rcheck/regtools’


```
# ReportingTools

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/ggbio_1.44.1.tar.gz'
Content type 'application/x-gzip' length 3235733 bytes (3.1 MB)
==================================================
downloaded 3.1 MB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/OrganismDbi_1.38.1.tar.gz'
Content type 'application/x-gzip' length 144263 bytes (140 KB)
==================================================
downloaded 140 KB

...
* installing *source* package ‘OrganismDbi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/ReportingTools/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/ggbio_1.44.1.tar.gz'
Content type 'application/x-gzip' length 3235733 bytes (3.1 MB)
==================================================
downloaded 3.1 MB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/OrganismDbi_1.38.1.tar.gz'
Content type 'application/x-gzip' length 144263 bytes (140 KB)
==================================================
downloaded 140 KB

...
* installing *source* package ‘OrganismDbi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
# RforProteomics

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
in method for ‘twoWayAlphabetFrequencyByQuality’ with signature ‘"QualityScaledXStringSet"’: no definition for class “QualityScaledXStringSet”
Creating a new generic function for ‘strsplit’ in package ‘Biostrings’
Creating a generic function for ‘ls’ from package ‘base’ in package ‘Biostrings’
Creating a new generic function for ‘pattern’ in package ‘Biostrings’
Creating a new generic function for ‘offset’ in package ‘Biostrings’
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c R_init_GenomicRanges.c -o R_init_GenomicRanges.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c transcript_utils.c -o transcript_utils.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GenomicRanges.so IRanges_stubs.o R_init_GenomicRanges.o S4Vectors_stubs.o transcript_utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/imputeLCMD_2.1.tar.gz'
Content type 'application/x-gzip' length 590927 bytes (577 KB)
==================================================
downloaded 577 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MLInterfaces_1.76.0.tar.gz'
Content type 'application/x-gzip' length 1374688 bytes (1.3 MB)
==================================================
downloaded 1.3 MB

...
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GenomicRanges)
* installing *binary* package ‘lava’ ...


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
in method for ‘twoWayAlphabetFrequencyByQuality’ with signature ‘"QualityScaledXStringSet"’: no definition for class “QualityScaledXStringSet”
Creating a new generic function for ‘strsplit’ in package ‘Biostrings’
Creating a generic function for ‘ls’ from package ‘base’ in package ‘Biostrings’
Creating a new generic function for ‘pattern’ in package ‘Biostrings’
Creating a new generic function for ‘offset’ in package ‘Biostrings’
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c R_init_GenomicRanges.c -o R_init_GenomicRanges.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/RforProteomics/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c transcript_utils.c -o transcript_utils.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GenomicRanges.so IRanges_stubs.o R_init_GenomicRanges.o S4Vectors_stubs.o transcript_utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/imputeLCMD_2.1.tar.gz'
Content type 'application/x-gzip' length 590927 bytes (577 KB)
==================================================
downloaded 577 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/MLInterfaces_1.76.0.tar.gz'
Content type 'application/x-gzip' length 1374688 bytes (1.3 MB)
==================================================
downloaded 1.3 MB

...
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GenomicRanges)
* installing *binary* package ‘lava’ ...


```
# singleCellTK

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c sam.c -o sam.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c sam_opts.c -o sam_opts.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c sam_utils.c -o sam_utils.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c samtools_patch.c -o samtools_patch.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c scan_bam_data.c -o scan_bam_data.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c tabixfile.c -o tabixfile.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c tagfilter.c -o tagfilter.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c zip_compression.c -o zip_compression.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o Rsamtools.so Biostrings_stubs.o COMPAT_bcf_hdr_read.o IRanges_stubs.o PileupBuffer.o PosCacheColl.o R_init_Rsamtools.o ResultManager.o S4Vectors_stubs.o XVector_stubs.o as_bam.o bam.o bam_data.o bam_mate_iter.o bam_plbuf.o bam_sort.o bambuffer.o bamfile.o bcffile.o encode.o fafile.o idxstats.o io_sam.o pbuffer_wrapper.o pileup.o pileupbam.o sam.o sam_opts.o sam_utils.o samtools_patch.o scan_bam_data.o tabixfile.o tagfilter.o utilities.o zip_compression.o /c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/batchelor_1.12.3.tar.gz'
Content type 'application/x-gzip' length 1997289 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

trying URL 'https://bioconductor.org/packages/3.15/data/experiment/src/contrib/celldex_1.6.0.tar.gz'
Content type 'application/x-gzip' length 390349 bytes (381 KB)
==================================================
downloaded 381 KB

...
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (SummarizedExperiment)
* installing *binary* package ‘TFisher’ ...
* DONE (TFisher)
* installing *source* package ‘AnnotationDbi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c sam.c -o sam.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c sam_opts.c -o sam_opts.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c sam_utils.c -o sam_utils.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c samtools_patch.c -o samtools_patch.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c scan_bam_data.c -o scan_bam_data.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c tabixfile.c -o tabixfile.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c tagfilter.c -o tagfilter.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Biostrings/include' -I/usr/local/include   -fpic  -g -O2  -c zip_compression.c -o zip_compression.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o Rsamtools.so Biostrings_stubs.o COMPAT_bcf_hdr_read.o IRanges_stubs.o PileupBuffer.o PosCacheColl.o R_init_Rsamtools.o ResultManager.o S4Vectors_stubs.o XVector_stubs.o as_bam.o bam.o bam_data.o bam_mate_iter.o bam_plbuf.o bam_sort.o bambuffer.o bamfile.o bcffile.o encode.o fafile.o idxstats.o io_sam.o pbuffer_wrapper.o pileup.o pileupbam.o sam.o sam_opts.o sam_utils.o samtools_patch.o scan_bam_data.o tabixfile.o tagfilter.o utilities.o zip_compression.o /c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/batchelor_1.12.3.tar.gz'
Content type 'application/x-gzip' length 1997289 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

trying URL 'https://bioconductor.org/packages/3.15/data/experiment/src/contrib/celldex_1.6.0.tar.gz'
Content type 'application/x-gzip' length 390349 bytes (381 KB)
==================================================
downloaded 381 KB

...
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (SummarizedExperiment)
* installing *binary* package ‘TFisher’ ...
* DONE (TFisher)
* installing *source* package ‘AnnotationDbi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


```
# sparrow

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiasedUrn’ ...
* DONE (BiasedUrn)
...
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/sparrow/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *binary* package ‘BiasedUrn’ ...
* DONE (BiasedUrn)
...
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
# TCGAbiolinks

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/TCGAbiolinks/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/TCGAbiolinks/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/c3net_1.1.1.1.tar.gz'
Content type 'application/x-gzip' length 508439 bytes (496 KB)
==================================================
downloaded 496 KB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/TCGAbiolinks/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/TCGAbiolinks/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/c3net_1.1.1.1.tar.gz'
Content type 'application/x-gzip' length 508439 bytes (496 KB)
==================================================
downloaded 496 KB

* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
# TCGAutils

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c half_range_mode.cpp -o half_range_mode.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (minfi)
* installing *source* package ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ...
** using staged installation
** data
*** moving datasets to lazyload DB


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c half_range_mode.cpp -o half_range_mode.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (minfi)
* installing *source* package ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’ ...
** using staged installation
** data
*** moving datasets to lazyload DB


```
