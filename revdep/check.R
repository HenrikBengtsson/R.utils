library("devtools")

availableCores <- function() {
  getenv <- function(name) {
    as.integer(Sys.getenv(name, NA_character_))
  }
  getopt <- function(name) {
    as.integer(getOption(name, NA_integer_))
  }
  if (is.finite(n <- getopt("mc.cores") + 1L)) return(n)
  if (is.finite(n <- getopt("Ncpus") + 1L)) return(n)
  if (is.finite(n <- getenv("PBS_NUM_PPN"))) return(n)
  if (is.finite(n <- getenv("SLURM_CPUS_PER_TASK"))) return(n)
  if (is.finite(n <- getenv("NSLOTS"))) return(n)
  1L
}

assert_no_dep <- function(pkg, pkgs) {
  for (kk in seq_along(pkgs)) {
   cat(sprintf("%d. %s\n", kk, pkgs[kk]))
   deps <- devtools:::package_deps(pkgs[kk], dependencies=TRUE)
   if (pkg %in% deps) stop()
  }
} ## assert_no_dep()
## pkgs <- assert_no_dep("rgdal", pkgs=readRDS("revdep/.cache.rds")$pkgs)

## Skip testing because requires rgdal (fails on test system)
## cf. grep -r --include=DESCRIPTION -F rgdal /cbc/henrik/R/x86_64-pc-linux-gnu-library/devtools/3.3/
ignore <- c("PopGenReport", "SpaDES", "gdalUtils", "oce", "simPATHy", "stplanr", "tmle.npvi")

## Skip testing because requires V8 (fails on test system)
ignore <- c(ignore, "ChemoSpec", "V8")

revdep_check(bioconductor = FALSE, recursive = FALSE, threads = availableCores(), ignore = ignore)
revdep_check_save_summary()
revdep_check_print_problems()
