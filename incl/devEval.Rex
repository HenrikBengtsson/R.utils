res <- devEval("png", name="MyPlot", tags=c("10", "rnd"), aspectRatio=0.7, {
  plot(1:10)
})
print(res$pathname)
# [1] "figures/MyPlot,10,rnd.png"

res <- devEval("pdf", name="MyPlot", tags=c("10", "rnd"), aspectRatio=0.7, {
  plot(1:10)
})
print(res$pathname)
# [1] "figures/MyPlot,10,rnd.pdf"

res <- devEval("eps", name="MyPlot", tags=c("10", "rnd"), aspectRatio=0.7, {
  plot(1:10)
})
print(res$pathname)
# [1] "figures/MyPlot,10,rnd.eps"
