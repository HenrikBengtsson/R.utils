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

## Standard use-case with non-primitive function
diag3 <- diag(3)
stopifnot(diag3 == doCall(diag, x = 3))
stopifnot(diag3 == doCall(diag, args = list(x = 3)))
stopifnot(diag3 == doCall(base::diag, args = list(x = 3)))
## Standard use-case with non-primitive function, adding used arguments
diag432 <- diag(4,3,2)
stopifnot(diag432 == doCall(diag, x = 4, nrow = 3, ncol = 2))
stopifnot(diag432 == doCall(diag, x = 4, nrow = 3, ncol = 2, fake1 = 42))
stopifnot(diag432 == doCall(diag, args = list(x = 4, nrow = 3, ncol = 2)))
stopifnot(diag432 == doCall(diag, args = list(x = 4, nrow = 3, ncol = 2,
                                              fake1 = 42)))
## Standard use-case with non-primitive function, adding unused arguments
stopifnot(diag432 == doCall(diag, args = list(x = 4, nrow = 3, ncol = 2,
                                              fake1 = 42),
                            .ignoreUnusedArgs = TRUE))
stopifnot(diag432 == doCall(diag, args = list(x = 4, nrow = 3, ncol = 2,
                                              fake1 = 42),
                            .ignoreUnusedArgs = TRUE, .onUnusedArgs = 'ignore'))
## Standard use-case with non-primitive function, warnings
options.warn.bak <- options()$warn
options(warn = 1)
warn1 <- capture.output(dc1diag432 <- doCall(diag,
                                            args = list(x = 4, nrow = 3,
                                                        ncol = 2,fake1 = 42),
                                            .ignoreUnusedArgs = TRUE,
                                            .onUnusedArgs = 'warn'),
                        type='message')
stopifnot(warn1 == c("Warning in doCall.default(diag, args = list(x = 4, nrow = 3, ncol = 2, fake1 = 42),  :",
                     "  The following arguments are not used:",
                     " fake1" ))
stopifnot(diag432 == dc1diag432)
warn2 <- capture.output(dc2diag432 <- doCall(diag,
                                             args = list(x = 4, nrow = 3,
                                                         ncol = 2, fake1 = 42,
                                                         fake2 = 'xyz'),
                                             .ignoreUnusedArgs = TRUE,
                                             .onUnusedArgs = 'warn'),
                        type='message')
stopifnot(warn2 == c("Warning in doCall.default(diag, args = list(x = 4, nrow = 3, ncol = 2, fake1 = 42,  :",
                     "  The following arguments are not used:",
                     " fake1, fake2" ))
stopifnot(diag432 == dc2diag432)
options(warn = options.warn.bak)

## Standard use-case with non-primitive function, errors
err1 <- try(doCall(diag, args = list(x = 4, nrow = 3, ncol = 2,fake1 = 42),
                   .ignoreUnusedArgs = FALSE), silent = TRUE)
stopifnot(err1 == "Error in (function (x = 1, nrow, ncol)  : unused argument (fake1 = 42)\n")
err2 <- try(doCall(diag, args = list(x = 4, nrow = 3, ncol = 2,fake1 = 42),
                   .ignoreUnusedArgs = TRUE, .onUnusedArgs = 'error'), silent=TRUE)
stopifnot(err2 == "Error in doCall.default(diag, args = list(x = 4, nrow = 3, ncol = 2, fake1 = 42),  : \n  The following arguments are not used:\n fake1\n")
err3 <- try(doCall(diag, args = list(x = 4, nrow = 3, ncol = 2, fake1 = 42,
                                     fake2 = 'xyz'),
                   .ignoreUnusedArgs = TRUE, .onUnusedArgs = 'error'), silent=TRUE)
stopifnot(err3 == "Error in doCall.default(diag, args = list(x = 4, nrow = 3, ncol = 2, fake1 = 42,  : \n  The following arguments are not used:\n fake1, fake2\n")

## Cleanup
#rm(err1,err2,err3,diag3,diag432,dc1diag432, dc2diag432, options.warn.bak)
