library("R.utils")

message("*** doCall() ...\n")

value <- doCall(seq_len, length.out=5L, .ignoreUnusedArgs=FALSE)
print(value)

value <- doCall("seq_len", args=list(length.out=5L), .ignoreUnusedArgs=FALSE)
print(value)

value <- doCall("seq_len", args=list(length.out=5L), .functions=list("seq_len"), .ignoreUnusedArgs=FALSE)
print(value)

## Exception handling
res <- try(doCall(2L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(doCall("seq_len", args=list(length.out=5L), .functions=list("<unknown>")), silent=TRUE)
stopifnot(inherits(res, "try-error"))


message("*** doCall() ... DONE\n")
