message("Testing gcat()...")

library("R.utils")

gcat("Hello world!\n")

a <- 1
gcat("a=${a}\n")

message("Testing gcat()...DONE")
