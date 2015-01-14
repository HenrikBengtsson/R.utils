library("R.utils")

for (pkg in c("R.utils", "tools", "MASS", "unknown")) {
  mprintf("isPackageLoaded('%s'): %s\n", pkg, isPackageLoaded(pkg))
}

