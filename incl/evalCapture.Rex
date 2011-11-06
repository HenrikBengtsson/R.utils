print(evalCapture({
 n <- 3;
 n;

 for (kk in 1:3) {
   printf("Iteration #%d\n", kk);
 }

 print(Sys.time());

 type <- "horse";
 type;
}))

## > n <- 3
## > n
## [1] 3
## > for (kk in 1:3) {
## +     printf("Iteration #%d\n", kk)
## + }
## Iteration #1
## Iteration #2
## Iteration #3
## > print(Sys.time())
## [1] "2011-11-06 11:06:32 PST"
## > type <- "horse"
## > type
## [1] "horse"
