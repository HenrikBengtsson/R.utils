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
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFData.cpp -o fusion/calvin_files/data/src/CDFData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeGroupInformation.cpp -o fusion/calvin_files/data/src/CDFProbeGroupInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeInformation.cpp -o fusion/calvin_files/data/src/CDFProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CELData.cpp -o fusion/calvin_files/data/src/CELData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPBackgroundZone.cpp -o fusion/calvin_files/data/src/CHPBackgroundZone.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPData.cpp -o fusion/calvin_files/data/src/CHPData.o
...
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


* installing *source* package ‘affxparser’ ...
** using staged installation
** libs
fusion/file/CELFileData.cpp: In member function ‘float affxcel::CCELFileData::GetIntensity(int)’:
fusion/file/CELFileData.cpp:2409:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
 2409 |   fIntensity=MmGetFloat_I(&m_pEntries[index].Intensity);
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
fusion/file/CELFileData.cpp:2414:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
 2414 |   fIntensity=MmGetFloat_I(&(m_pEntries[index].Intensity));
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ReactomePA)

The downloaded source packages are in
	‘/scratch/henrik/977578/RtmpJgxJoo/downloaded_packages’


```
### CRAN

```
rm -f fusion/calvin_files/data/src/CDFData.o fusion/calvin_files/data/src/CDFProbeGroupInformation.o fusion/calvin_files/data/src/CDFProbeInformation.o fusion/calvin_files/data/src/CDFProbeSetInformation.o fusion/calvin_files/data/src/CDFQCProbeInformation.o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o fusion/calvin_files/data/src/CELData.o fusion/calvin_files/data/src/CHPBackgroundZone.o fusion/calvin_files/data/src/CHPData.o fusion/calvin_files/data/src/CHPExpressionEntry.o fusion/calvin_files/data/src/CHPMultiDataData.o fusion/calvin_files/data/src/CHPTilingData.o fusion/calvin_files/data/src/CHPQuantificationData.o fusion/calvin_files/data/src/CHPQuantificationDetectionData.o fusion/calvin_files/data/src/CHPGenotypeEntry.o fusion/calvin_files/data/src/CHPUniversalEntry.o fusion/calvin_files/data/src/ColumnInfo.o fusion/calvin_files/data/src/DataGroup.o fusion/calvin_files/data/src/DataGroupHeader.o fusion/calvin_files/data/src/DataSet.o fusion/calvin_files/data/src/DataSetHeader.o fusion/calvin_files/data/src/FileHeader.o fusion/calvin_files/data/src/GenericData.o fusion/calvin_files/data/src/GenericDataHeader.o fusion/calvin_files/exception/src/ExceptionBase.o fusion/calvin_files/fusion/src/CalvinAdapter/CalvinCELDataAdapter.o fusion/calvin_files/fusion/src/CalvinAdapter/CalvinCHPDataAdapter.o fusion/calvin_files/fusion/src/FusionBPMAPData.o fusion/calvin_files/fusion/src/FusionCDFData.o fusion/calvin_files/fusion/src/FusionCDFQCProbeSetNames.o fusion/calvin_files/fusion/src/FusionCELData.o fusion/calvin_files/fusion/src/FusionCHPData.o fusion/calvin_files/fusion/src/FusionProbeSetResults.o fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCELDataAdapter.o fusion/calvin_files/fusion/src/GCOSAdapter/GCOSCHPDataAdapter.o fusion/calvin_files/fusion/src/FusionCHPLegacyData.o fusion/calvin_files/fusion/src/FusionCHPMultiDataAccessor.o fusion/calvin_files/fusion/src/FusionCHPMultiDataData.o fusion/calvin_files/fusion/src/FusionCHPTilingData.o fusion/calvin_files/fusion/src/FusionCHPGenericData.o fusion/calvin_files/fusion/src/FusionCHPQuantificationData.o fusion/calvin_files/fusion/src/FusionCHPQuantificationDetectionData.o fusion/calvin_files/parameter/src/ParameterNameValueType.o fusion/calvin_files/parsers/src/CDFFileReader.o fusion/calvin_files/parsers/src/CelFileReader.o fusion/calvin_files/parsers/src/CHPFileReader.o fusion/calvin_files/parsers/src/CHPMultiDataFileReader.o fusion/calvin_files/parsers/src/CHPTilingFileReader.o fusion/calvin_files/parsers/src/CHPQuantificationFileReader.o fusion/calvin_files/parsers/src/CHPQuantificationDetectionFileReader.o fusion/calvin_files/parsers/src/DataGroupHeaderReader.o fusion/calvin_files/parsers/src/DataGroupReader.o fusion/calvin_files/parsers/src/DataSetHeaderReader.o fusion/calvin_files/parsers/src/DataSetReader.o fusion/calvin_files/parsers/src/FileHeaderReader.o fusion/calvin_files/parsers/src/FileInput.o fusion/calvin_files/parsers/src/GenericDataHeaderReader.o fusion/calvin_files/parsers/src/GenericFileReader.o fusion/calvin_files/utils/src/AffymetrixGuid.o fusion/calvin_files/utils/src/DateTime.o fusion/calvin_files/utils/src/FileUtils.o fusion/calvin_files/utils/src/StringUtils.o fusion/calvin_files/utils/src/checksum.o fusion/file/BPMAPFileData.o fusion/file/BPMAPFileWriter.o fusion/file/CDFFileData.o fusion/file/CELFileData.o fusion/file/CHPFileData.o fusion/file/FileIO.o fusion/file/FileWriter.o fusion/file/TsvFile/ClfFile.o fusion/file/TsvFile/PgfFile.o fusion/file/TsvFile/TsvFile.o fusion/util/AffxByteArray.o fusion/util/AffxConv.o fusion/util/MsgStream.o fusion/util/Util.o fusion/util/Err.o fusion/util/Fs.o fusion/util/Verbose.o fusion/util/RowFile.o fusion/util/TableFile.o fusion/util/Convert.o R_affx_cel_parser.o R_affx_cdf_parser.o R_affx_cdf_extras.o R_affx_bpmap_parser.o R_affx_clf_pgf_parser.o R_affx_chp_parser.o 000.init.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFData.cpp -o fusion/calvin_files/data/src/CDFData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeGroupInformation.cpp -o fusion/calvin_files/data/src/CDFProbeGroupInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeInformation.cpp -o fusion/calvin_files/data/src/CDFProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CDFQCProbeSetInformation.cpp -o fusion/calvin_files/data/src/CDFQCProbeSetInformation.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CELData.cpp -o fusion/calvin_files/data/src/CELData.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPBackgroundZone.cpp -o fusion/calvin_files/data/src/CHPBackgroundZone.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I. -Ifusion/calvin_files/array/src -Ifusion/calvin_files/data/src -Ifusion/calvin_files/exception/src -Ifusion/calvin_files/fusion/src -Ifusion/calvin_files/fusion/src/GCOSAdapter -Ifusion/calvin_files/fusion/src/CalvinAdapter -Ifusion/calvin_files/parameter/src -Ifusion/calvin_files/parsers/src -Ifusion/calvin_files/portability/src -Ifusion/calvin_files/template/src -Ifusion/calvin_files/utils/src -Ifusion/calvin_files/writers/src -Ifusion/file -Ifusion/file/TsvFile -Ifusion/portability -Ifusion/util -Ifusion -D_USE_MEM_MAPPING_  -I/usr/local/include   -fpic  -g -O2  -Wno-sign-compare -O0 -c fusion/calvin_files/data/src/CHPData.cpp -o fusion/calvin_files/data/src/CHPData.o
...
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_biovizBase.c -o R_init_biovizBase.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bin_offsets.c -o bin_offsets.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o biovizBase.so R_init_biovizBase.o bin_offsets.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


* installing *source* package ‘affxparser’ ...
** using staged installation
** libs
fusion/file/CELFileData.cpp: In member function ‘float affxcel::CCELFileData::GetIntensity(int)’:
fusion/file/CELFileData.cpp:2409:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
 2409 |   fIntensity=MmGetFloat_I(&m_pEntries[index].Intensity);
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
fusion/file/CELFileData.cpp:2414:27: warning: taking address of packed member of ‘affxcel::_CELFileEntryType’ may result in an unaligned pointer value [-Waddress-of-packed-member]
 2414 |   fIntensity=MmGetFloat_I(&(m_pEntries[index].Intensity));
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ReactomePA)

The downloaded source packages are in
	‘/scratch/henrik/977578/RtmpJgxJoo/downloaded_packages’


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
    

# metaboliteIDmapping

<details>

* Version: 1.0.0
* GitHub: https://github.com/yigbt/metaboliteIDmapping
* Source code: https://github.com/cran/metaboliteIDmapping
* Number of recursive dependencies: 107

Run `revdep_details(, "metaboliteIDmapping")` for more info

</details>

## In both

*   checking whether package ‘metaboliteIDmapping’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/metaboliteIDmapping/new/metaboliteIDmapping.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘metaboliteIDmapping’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
...
 .onLoad failed in loadNamespace() for 'metaboliteIDmapping', details:
  call: NULL
  error: Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/AnnotationHub
  filename: annotationhub.index.rds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/metaboliteIDmapping/new/metaboliteIDmapping.Rcheck/metaboliteIDmapping’


```
### CRAN

```
* installing *source* package ‘metaboliteIDmapping’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
...
 .onLoad failed in loadNamespace() for 'metaboliteIDmapping', details:
  call: NULL
  error: Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/AnnotationHub
  filename: annotationhub.index.rds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/metaboliteIDmapping/old/metaboliteIDmapping.Rcheck/metaboliteIDmapping’


```
# muscData

<details>

* Version: 1.10.0
* GitHub: https://github.com/HelenaLC/muscData
* Source code: https://github.com/cran/muscData
* Date/Publication: 2022-04-28
* Number of recursive dependencies: 269

Run `revdep_details(, "muscData")` for more info

</details>

## In both

*   checking whether package ‘muscData’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/R.utils/revdep/checks/muscData/new/muscData.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
* installing *source* package ‘muscData’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
...
 .onLoad failed in loadNamespace() for 'muscData', details:
  call: h(simpleError(msg, call))
  error: error in evaluating the argument 'x' in selecting a method for function 'query': Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/ExperimentHub
  filename: experimenthub.index.rds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/muscData/new/muscData.Rcheck/muscData’


```
### CRAN

```
* installing *source* package ‘muscData’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
...
 .onLoad failed in loadNamespace() for 'muscData', details:
  call: h(simpleError(msg, call))
  error: error in evaluating the argument 'x' in selecting a method for function 'query': Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/ExperimentHub
  filename: experimenthub.index.rds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/c4/home/henrik/repositories/R.utils/revdep/checks/muscData/old/muscData.Rcheck/muscData’


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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/beachmat/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/dqrng/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c overlap_exprs.cpp -o overlap_exprs.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/beachmat/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/dqrng/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c rand_custom.cpp -o rand_custom.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o scran.so RcppExports.o choose_effect_size.o combine_rho.o compute_blocked_stats.o compute_residual_stats.o compute_rho_null.o cyclone_scores.o overlap_exprs.o rand_custom.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c kernel_estimation.c -o kernel_estimation.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ks_test.c -o ks_test.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c register_cmethods.c -o register_cmethods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GSVA.so kernel_estimation.o ks_test.o register_cmethods.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/data/experiment/src/contrib/celldex_1.6.0.tar.gz'
Content type 'application/x-gzip' length 390349 bytes (381 KB)
==================================================
downloaded 381 KB

trying URL 'https://cloud.r-project.org/src/contrib/SoupX_1.6.1.tar.gz'
Content type 'application/x-gzip' length 4963401 bytes (4.7 MB)
==================================================
downloaded 4.7 MB

...
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ggtree)
* installing *source* package ‘GSVA’ ...
** using staged installation
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/00LOCK-GSVA/00new/GSVA/libs
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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/beachmat/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/dqrng/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c overlap_exprs.cpp -o overlap_exprs.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/beachmat/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/BH/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/dqrng/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c rand_custom.cpp -o rand_custom.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o scran.so RcppExports.o choose_effect_size.o combine_rho.o compute_blocked_stats.o compute_residual_stats.o compute_rho_null.o cyclone_scores.o overlap_exprs.o rand_custom.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c DESeq2.cpp -o DESeq2.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c kernel_estimation.c -o kernel_estimation.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ks_test.c -o ks_test.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c register_cmethods.c -o register_cmethods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GSVA.so kernel_estimation.o ks_test.o register_cmethods.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/data/experiment/src/contrib/celldex_1.6.0.tar.gz'
Content type 'application/x-gzip' length 390349 bytes (381 KB)
==================================================
downloaded 381 KB

trying URL 'https://cloud.r-project.org/src/contrib/SoupX_1.6.1.tar.gz'
Content type 'application/x-gzip' length 4963401 bytes (4.7 MB)
==================================================
downloaded 4.7 MB

...
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ggtree)
* installing *source* package ‘GSVA’ ...
** using staged installation
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/00LOCK-GSVA/00new/GSVA/libs
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
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c kernel_estimation.c -o kernel_estimation.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ks_test.c -o ks_test.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c register_cmethods.c -o register_cmethods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GSVA.so kernel_estimation.o ks_test.o register_cmethods.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Error: Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/AnnotationHub
  filename: annotationhub.index.rds
Execution halted


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
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (geneLenDataBase)
* installing *binary* package ‘goseq’ ...
* DONE (goseq)

The downloaded source packages are in
	‘/scratch/henrik/977578/RtmpCqP4mm/downloaded_packages’


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
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o DESeq2.so DESeq2.o RcppExports.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c kernel_estimation.c -o kernel_estimation.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c ks_test.c -o ks_test.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c register_cmethods.c -o register_cmethods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GSVA.so kernel_estimation.o ks_test.o register_cmethods.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Error: Corrupt Cache: index file
  See AnnotationHub's TroubleshootingTheCache vignette section on corrupt cache
  cache: /c4/home/henrik/.cache/R/AnnotationHub
  filename: annotationhub.index.rds
Execution halted


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
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (geneLenDataBase)
* installing *binary* package ‘goseq’ ...
* DONE (goseq)

The downloaded source packages are in
	‘/scratch/henrik/977578/RtmpCqP4mm/downloaded_packages’


```
