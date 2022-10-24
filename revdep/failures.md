# arkdb

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/R.utils
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
rm -f cmark/cmark.o cmark/node.o cmark/iterator.o cmark/blocks.o cmark/inlines.o cmark/scanners.o cmark/utf8.o cmark/buffer.o cmark/references.o cmark/render.o cmark/man.o cmark/xml.o cmark/html.o cmark/commonmark.o cmark/latex.o cmark/houdini_href_e.o cmark/houdini_html_e.o cmark/houdini_html_u.o cmark/cmark_ctype.o cmark/arena.o cmark/linked_list.o cmark/plugin.o cmark/registry.o cmark/syntax_extension.o cmark/plaintext.o cmark/footnotes.o cmark/map.o extensions/autolink.o extensions/core-extensions.o extensions/ext_scanners.o extensions/strikethrough.o extensions/table.o extensions/tagfilter.o extensions/tasklist.o extensions.o init.o wrapper.o commonmark.so cmark/libstatcmark.a
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c extensions.c -o extensions.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c wrapper.c -o wrapper.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/cmark.c -o cmark/cmark.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/node.c -o cmark/node.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/iterator.c -o cmark/iterator.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/blocks.c -o cmark/blocks.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/inlines.c -o cmark/inlines.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/scanners.c -o cmark/scanners.o
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/cpp11/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/tzdb/include' -I/usr/local/include   -fpic  -g -O2  -c type_convert.cpp -o type_convert.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/cpp11/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/tzdb/include' -I/usr/local/include   -fpic  -g -O2  -c write.cpp -o write.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/cpp11/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/tzdb/include' -I/usr/local/include   -fpic  -g -O2  -c write_delim.cpp -o write_delim.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o readr.so Collector.o CollectorGuess.o Iconv.o LocaleInfo.o Reader.o Source.o Tokenizer.o TokenizerDelim.o TokenizerFwf.o TokenizerWs.o connection.o cpp11.o datetime.o grisu3.o init.o parse.o read.o type_convert.o write.o write_delim.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c reassign.c -o reassign.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-catch.cpp -o test-catch.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-example.cpp -o test-example.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-runner.cpp -o test-runner.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o testthat.so init.o reassign.o test-catch.o test-example.o test-runner.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/arrow_9.0.0.2.tar.gz'
Content type 'application/x-gzip' length 4899586 bytes (4.7 MB)
==================================================
downloaded 4.7 MB

trying URL 'https://cloud.r-project.org/src/contrib/commonmark_1.8.1.tar.gz'
Content type 'application/x-gzip' length 139636 bytes (136 KB)
==================================================
downloaded 136 KB

...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
### CRAN

```
rm -f cmark/cmark.o cmark/node.o cmark/iterator.o cmark/blocks.o cmark/inlines.o cmark/scanners.o cmark/utf8.o cmark/buffer.o cmark/references.o cmark/render.o cmark/man.o cmark/xml.o cmark/html.o cmark/commonmark.o cmark/latex.o cmark/houdini_href_e.o cmark/houdini_html_e.o cmark/houdini_html_u.o cmark/cmark_ctype.o cmark/arena.o cmark/linked_list.o cmark/plugin.o cmark/registry.o cmark/syntax_extension.o cmark/plaintext.o cmark/footnotes.o cmark/map.o extensions/autolink.o extensions/core-extensions.o extensions/ext_scanners.o extensions/strikethrough.o extensions/table.o extensions/tagfilter.o extensions/tasklist.o extensions.o init.o wrapper.o commonmark.so cmark/libstatcmark.a
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c extensions.c -o extensions.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c wrapper.c -o wrapper.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/cmark.c -o cmark/cmark.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/node.c -o cmark/node.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/iterator.c -o cmark/iterator.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/blocks.c -o cmark/blocks.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/inlines.c -o cmark/inlines.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -Icmark -I. -DCMARK_GFM_STATIC_DEFINE -DCMARK_GFM_EXTENSIONS_STATIC_DEFINE -DR_NO_REMAP -DSTRICT_R_HEADERS  -I/usr/local/include  -fvisibility=hidden -fpic  -g -O2  -c cmark/scanners.c -o cmark/scanners.o
...
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/cpp11/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/tzdb/include' -I/usr/local/include   -fpic  -g -O2  -c type_convert.cpp -o type_convert.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/cpp11/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/tzdb/include' -I/usr/local/include   -fpic  -g -O2  -c write.cpp -o write.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/cpp11/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/arkdb/tzdb/include' -I/usr/local/include   -fpic  -g -O2  -c write_delim.cpp -o write_delim.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o readr.so Collector.o CollectorGuess.o Iconv.o LocaleInfo.o Reader.o Source.o Tokenizer.o TokenizerDelim.o TokenizerFwf.o TokenizerWs.o connection.o cpp11.o datetime.o grisu3.o init.o parse.o read.o type_convert.o write.o write_delim.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c reassign.c -o reassign.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-catch.cpp -o test-catch.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-example.cpp -o test-example.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-runner.cpp -o test-runner.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o testthat.so init.o reassign.o test-catch.o test-example.o test-runner.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/arrow_9.0.0.2.tar.gz'
Content type 'application/x-gzip' length 4899586 bytes (4.7 MB)
==================================================
downloaded 4.7 MB

trying URL 'https://cloud.r-project.org/src/contrib/commonmark_1.8.1.tar.gz'
Content type 'application/x-gzip' length 139636 bytes (136 KB)
==================================================
downloaded 136 KB

...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
# BgeeDB

<details>

* Version: 2.22.3
* GitHub: https://github.com/BgeeDB/BgeeDB_R
* Source code: https://github.com/cran/BgeeDB
* Date/Publication: 2022-06-28
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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c reassign.c -o reassign.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-catch.cpp -o test-catch.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-example.cpp -o test-example.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-runner.cpp -o test-runner.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o testthat.so init.o reassign.o test-catch.o test-example.o test-runner.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c check_M_and_Cov.cpp -o check_M_and_Cov.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c init.cpp -o init.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o bsseq.so check_M_and_Cov.o init.o utils.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

trying URL 'https://cloud.r-project.org/src/contrib/brew_1.0-8.tar.gz'
Content type 'application/x-gzip' length 73562 bytes (71 KB)
==================================================
downloaded 71 KB

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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c reassign.c -o reassign.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-catch.cpp -o test-catch.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-example.cpp -o test-example.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -I../inst/include -DCOMPILING_TESTTHAT  -I/usr/local/include   -fpic  -g -O2  -c test-runner.cpp -o test-runner.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o testthat.so init.o reassign.o test-catch.o test-example.o test-runner.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c check_M_and_Cov.cpp -o check_M_and_Cov.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c init.cpp -o init.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/biscuiteer/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o bsseq.so check_M_and_Cov.o init.o utils.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

trying URL 'https://cloud.r-project.org/src/contrib/brew_1.0-8.tar.gz'
Content type 'application/x-gzip' length 73562 bytes (71 KB)
==================================================
downloaded 71 KB

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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c cigar_utils.c -o cigar_utils.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c coordinate_mapping_methods.c -o coordinate_mapping_methods.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c encodeOverlaps_methods.c -o encodeOverlaps_methods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GenomicAlignments.so IRanges_stubs.o R_init_GenomicAlignments.o S4Vectors_stubs.o cigar_utils.o coordinate_mapping_methods.o encodeOverlaps_methods.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c bSpline.cpp -o bSpline.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c bezier.cpp -o bezier.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c deBoor.cpp -o deBoor.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c ellipseEnclose.cpp -o ellipseEnclose.o


trying URL 'https://cloud.r-project.org/src/contrib/aplot_0.1.8.tar.gz'
Content type 'application/x-gzip' length 22776 bytes (22 KB)
==================================================
downloaded 22 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

...
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/MapBase.h:37:34:   required from ‘class Eigen::MapBase<Eigen::Block<const Eigen::Block<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>, -1, 1, false>, 0>’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/Block.h:329:7:   required from ‘class Eigen::internal::BlockImpl_dense<const Eigen::Block<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>, -1, 1, false, true>’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/Block.h:154:7:   [ skipping 18 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Householder/BlockHouseholder.h:85:55:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/SVD/JacobiSVD.h:237:47:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/SVD/JacobiSVD.h:684:30:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/SVD/JacobiSVD.h:548:14:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
ellipseEnclose.cpp:115:65:   required from here
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]


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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c cigar_utils.c -o cigar_utils.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c coordinate_mapping_methods.c -o coordinate_mapping_methods.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c encodeOverlaps_methods.c -o encodeOverlaps_methods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GenomicAlignments.so IRanges_stubs.o R_init_GenomicAlignments.o S4Vectors_stubs.o cigar_utils.o coordinate_mapping_methods.o encodeOverlaps_methods.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c bSpline.cpp -o bSpline.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c bezier.cpp -o bezier.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c deBoor.cpp -o deBoor.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c ellipseEnclose.cpp -o ellipseEnclose.o


trying URL 'https://cloud.r-project.org/src/contrib/aplot_0.1.8.tar.gz'
Content type 'application/x-gzip' length 22776 bytes (22 KB)
==================================================
downloaded 22 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

...
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/MapBase.h:37:34:   required from ‘class Eigen::MapBase<Eigen::Block<const Eigen::Block<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>, -1, 1, false>, 0>’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/Block.h:329:7:   required from ‘class Eigen::internal::BlockImpl_dense<const Eigen::Block<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>, -1, 1, false, true>’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/Block.h:154:7:   [ skipping 18 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Householder/BlockHouseholder.h:85:55:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/SVD/JacobiSVD.h:237:47:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/SVD/JacobiSVD.h:684:30:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/SVD/JacobiSVD.h:548:14:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
ellipseEnclose.cpp:115:65:   required from here
/c4/home/henrik/repositories/R.utils/revdep/library/CINdex/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]


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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c rle.c -o rle.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

trying URL 'https://cloud.r-project.org/src/contrib/brew_1.0-8.tar.gz'
Content type 'application/x-gzip' length 73562 bytes (71 KB)
==================================================
downloaded 71 KB

...
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gwascat)
* installing *binary* package ‘rstatix’ ...
* DONE (rstatix)
* installing *binary* package ‘ggpubr’ ...
* DONE (ggpubr)

The downloaded source packages are in
	‘/scratch/henrik/977533/RtmpTn6Btm/downloaded_packages’


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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c dna_hash.c -o dna_hash.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c rle.c -o rle.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c strhash.c -o strhash.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c utilities.c -o utilities.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcffile.c -o vcffile.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c vcftype.c -o vcftype.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG -D_FILE_OFFSET_BITS=64 -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/include' -I/usr/local/include   -fpic  -g -O2  -c writevcf.c -o writevcf.o
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o VariantAnnotation.so Biostrings_stubs.o IRanges_stubs.o R_init_VariantAnnotation.o XVector_stubs.o dna_hash.o rle.o strhash.o utilities.o vcffile.o vcftype.o writevcf.o /c4/home/henrik/repositories/R.utils/revdep/library/circRNAprofiler/Rhtslib/usrlib/libhts.a -lcurl -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘tabulate’ in package ‘VariantAnnotation’


trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

trying URL 'https://cloud.r-project.org/src/contrib/brew_1.0-8.tar.gz'
Content type 'application/x-gzip' length 73562 bytes (71 KB)
==================================================
downloaded 71 KB

...
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gwascat)
* installing *binary* package ‘rstatix’ ...
* DONE (rstatix)
* installing *binary* package ‘ggpubr’ ...
* DONE (ggpubr)

The downloaded source packages are in
	‘/scratch/henrik/977533/RtmpTn6Btm/downloaded_packages’


```
# enrichTF

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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c iciclePlot.cpp -o iciclePlot.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c lineCutter.cpp -o lineCutter.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c nodes.cpp -o nodes.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c pathAttr.cpp -o pathAttr.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c treemap.cpp -o treemap.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c unrooted.cpp -o unrooted.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o ggraph.so RcppExports.o circlePack.o dendrogram.o iciclePlot.o lineCutter.o nodes.o pathAttr.o treemap.o unrooted.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/aplot_0.1.8.tar.gz'
Content type 'application/x-gzip' length 22776 bytes (22 KB)
==================================================
downloaded 22 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c iciclePlot.cpp -o iciclePlot.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c lineCutter.cpp -o lineCutter.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c nodes.cpp -o nodes.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c pathAttr.cpp -o pathAttr.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c treemap.cpp -o treemap.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c unrooted.cpp -o unrooted.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o ggraph.so RcppExports.o circlePack.o dendrogram.o iciclePlot.o lineCutter.o nodes.o pathAttr.o treemap.o unrooted.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c ICmethod.cpp -o ICmethod.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/enrichTF/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o GOSemSim.so ICmethod.o RcppExports.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/aplot_0.1.8.tar.gz'
Content type 'application/x-gzip' length 22776 bytes (22 KB)
==================================================
downloaded 22 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c io.c -o io.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c io_bowtie.c -o io_bowtie.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c io_soap.c -o io_soap.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c readBfaToc.cc -o readBfaToc.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c read_maq_map.cc -o read_maq_map.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c sampler.c -o sampler.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c trim.c -o trim.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c util.c -o util.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c xsnap.c -o xsnap.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o ShortRead.so Biostrings_stubs.o IRanges_stubs.o R_init_ShortRead.o S4Vectors_stubs.o XVector_stubs.o alphabet.o count.o io.o io_bowtie.o io_soap.o readBfaToc.o read_maq_map.o sampler.o trim.o util.o xsnap.o -lz -fopenmp -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/aplot_0.1.8.tar.gz'
Content type 'application/x-gzip' length 22776 bytes (22 KB)
==================================================
downloaded 22 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

...
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/esATAC/00LOCK-ShortRead/00new/ShortRead/libs
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
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c io.c -o io.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c io_bowtie.c -o io_bowtie.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c io_soap.c -o io_soap.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c readBfaToc.cc -o readBfaToc.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DHAVE_LIBZ=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DSIZEOF_UNSIGNED_LONG=8 -fpic  -g -O2  -c read_maq_map.cc -o read_maq_map.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c sampler.c -o sampler.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c trim.c -o trim.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c util.c -o util.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/S4Vectors/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/IRanges/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/XVector/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Biostrings/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/Rhtslib/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/esATAC/zlibbioc/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c xsnap.c -o xsnap.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o ShortRead.so Biostrings_stubs.o IRanges_stubs.o R_init_ShortRead.o S4Vectors_stubs.o XVector_stubs.o alphabet.o count.o io.o io_bowtie.o io_soap.o readBfaToc.o read_maq_map.o sampler.o trim.o util.o xsnap.o -lz -fopenmp -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/aplot_0.1.8.tar.gz'
Content type 'application/x-gzip' length 22776 bytes (22 KB)
==================================================
downloaded 22 KB

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/BiocParallel_1.30.4.tar.gz'
Content type 'application/x-gzip' length 894490 bytes (873 KB)
==================================================
downloaded 873 KB

...
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/esATAC/00LOCK-ShortRead/00new/ShortRead/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppEigen/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c stats.cpp -o stats.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppEigen/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c valid_pointer.c -o valid_pointer.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o Seurat.so ModularityOptimizer.o RModularityOptimizer.o RcppExports.o data_manipulation.o fast_NN_dist.o integration.o snn.o stats.o valid_pointer.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
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

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/scran_1.24.1.tar.gz'
Content type 'application/x-gzip' length 1779987 bytes (1.7 MB)
==================================================
downloaded 1.7 MB

...
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/00LOCK-GSVA/00new/GSVA/libs
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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppEigen/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c stats.cpp -o stats.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/Rcpp/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppEigen/include' -I'/c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c valid_pointer.c -o valid_pointer.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o Seurat.so ModularityOptimizer.o RModularityOptimizer.o RcppExports.o data_manipulation.o fast_NN_dist.o integration.o snn.o stats.o valid_pointer.o -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
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

trying URL 'https://bioconductor.org/packages/3.15/bioc/src/contrib/scran_1.24.1.tar.gz'
Content type 'application/x-gzip' length 1779987 bytes (1.7 MB)
==================================================
downloaded 1.7 MB

...
** libs
installing to /c4/home/henrik/repositories/R.utils/revdep/library/singleCellTK/00LOCK-GSVA/00new/GSVA/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
