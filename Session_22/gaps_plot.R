## gaps plot
par(mar=c(1,1,1,1))
gaps.plot(synth.res = synth.out,
          dataprep.res = dataprep.out, 
          Ylab = c("gap in real per-capita GDP (1986 USD, thousand)"),
          Xlab = c("year"), 
          Ylim = c(-1.5,1.5), 
          abline(v = 1969, col = "red")
)