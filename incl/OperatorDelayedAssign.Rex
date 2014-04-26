message("a %<-% ...")
a %<-% { message("Now assigning 'a'"); 1 }
message("b %<-% a")
b %<-% a
message("c %<-% b")
c %<-% b
message("d %<-% 2*c")
d <- 2*c
