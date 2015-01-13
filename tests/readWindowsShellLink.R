library("R.utils")


pathname <- system.file("data-ex/HISTORY.LNK", package="R.utils")
lnk <- readWindowsShellLink(pathname)
str(lnk)
str(lnk$pathname)

lnk0 <- readWindowsShortcut(pathname)
str(lnk0$pathname)
