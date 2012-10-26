# - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Simulate two large named logical vectors, 
# one with missing values one without
# - - - - - - - - - - - - - - - - - - - - - - - - - - 
N <- 1e6;

# Vector #1
x <- sample(c(TRUE, FALSE), size=N, replace=TRUE);
names(x) <- seq_along(x);

# Vector #2
y <- x
y[sample(N, size=0.1*N)] <- NA;


# - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Validate consistency
# - - - - - - - - - - - - - - - - - - - - - - - - - - 
stopifnot(identical(which(x), whichVector(x)));
stopifnot(identical(which(y), whichVector(y)));


# - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Benchmarking
# - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Number of iterations
K <- 5;

t1 <- 0;
for (kk in 1:K) {
  t1 <- t1 + system.time({ idxs1 <- which(x) });
};
  
t2 <- 0;
for (kk in 1:K) {
  t2 <- t2 + system.time({ idxs2 <- whichVector(x, na.rm=FALSE) });
};
  
cat(sprintf("whichVector(x, na.rm=FALSE)/which(x): %.2f\n", (t2/t1)[3]));
stopifnot(identical(idxs1, idxs2));


t1 <- 0;
for (kk in 1:K) {
  t1 <- t1 + system.time({ idxs1 <- which(y) });
};
  
t2 <- 0;
for (kk in 1:K) {
  t2 <- t2 + system.time({ idxs2 <- whichVector(y) });
};
  
cat(sprintf("whichVector(y)/which(y): %.2f\n", (t2/t1)[3]));
stopifnot(identical(idxs1, idxs2));

