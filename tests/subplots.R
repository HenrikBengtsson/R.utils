library("R.utils")

local({
  dev.new()
  on.exit(dev.off())
  subplots(4)
  for (kk in 1:4) plot(kk, main=kk)
})


local({
  dev.new()
  on.exit(dev.off())
  subplots(1:4)
  for (kk in 1:4) plot(kk, main=kk)
})

local({
  dev.new()
  on.exit(dev.off())
  subplots(4, nrow=2)
  for (kk in 1:4) plot(kk, main=kk)
})

local({
  dev.new()
  on.exit(dev.off())
  subplots(nrow=2, ncol=4)
  for (kk in 1:4) plot(kk, main=kk)
})
