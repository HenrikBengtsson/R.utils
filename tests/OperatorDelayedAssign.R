library("R.utils")

message("a %<-% ...")
a %<-% { message("Now assigning 'a'"); 1 }
message("b %<-% a")
b %<-% a
message("c %<-% b")
c %<-% b
message("d %<-% 2*c")
d <- 2*c

message("env$e %<-% ...")
env <- new.env()
env$e %<-% 3.14
stopifnot(identical(env$e, 3.14))

