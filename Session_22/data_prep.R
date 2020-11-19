dataprep.out <-
    dataprep(
        foo = basque
        ,predictors= c("school.illit",
                       "school.prim",
                       "school.med",
                       "school.high",
                       "school.post.high"
                       ,"invest"
        )
        ,predictors.op = c("mean")
        ,dependent     = c("gdpcap")
        ,unit.variable = c("regionno")
        ,time.variable = c("year")
        ,special.predictors = list(
            list("gdpcap",1960:1969,c("mean")),                            
            list("sec.agriculture",seq(1961,1969,2),c("mean")),
            list("sec.energy",seq(1961,1969,2),c("mean")),
            list("sec.industry",seq(1961,1969,2),c("mean")),
            list("sec.construction",seq(1961,1969,2),c("mean")),
            list("sec.services.venta",seq(1961,1969,2),c("mean")),
            list("sec.services.nonventa",seq(1961,1969,2),c("mean")),
            list("popdens",1969,c("mean")))
        ,treatment.identifier  = 17
        ,controls.identifier   = c(2:16,18)
        ,time.predictors.prior = c(1964:1969)
        ,time.optimize.ssr     = c(1960:1969)
        ,unit.names.variable   = c("regionname")
        ,time.plot            = c(1955:1997) 
    )
# data preprocessing
dataprep.out$X1["school.high",] <- 
    dataprep.out$X1["school.high",] + 
    dataprep.out$X1["school.post.high",]
dataprep.out$X1                 <- 
    as.matrix(dataprep.out$X1[
        -which(rownames(dataprep.out$X1)=="school.post.high"),])
dataprep.out$X0["school.high",] <- 
    dataprep.out$X0["school.high",] + 
    dataprep.out$X0["school.post.high",]
dataprep.out$X0                 <- 
    dataprep.out$X0[
        -which(rownames(dataprep.out$X0)=="school.post.high"),]

lowest  <- which(rownames(dataprep.out$X0)=="school.illit")
highest <- which(rownames(dataprep.out$X0)=="school.high")

dataprep.out$X1[lowest:highest,] <- 
    (100 * dataprep.out$X1[lowest:highest,]) /
    sum(dataprep.out$X1[lowest:highest,])
dataprep.out$X0[lowest:highest,] <-  
    100 * scale(dataprep.out$X0[lowest:highest,],
                center=FALSE,
                scale=colSums(dataprep.out$X0[lowest:highest,])
    )
