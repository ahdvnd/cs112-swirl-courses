dataprep.out<-
    dataprep(
        foo = synth.data,
        predictors = c("X1", "X2", "X3"),
        predictors.op = "mean",
        dependent = "Y",
        unit.variable = "unit.num",
        unit.names.variable = "name",
        time.variable = "year",
        special.predictors = list(
            list("Y", 1991, "mean"),
            list("Y", 1985, "mean"),
            list("Y", 1980, "mean")
        ),
        treatment.identifier = 7,
        controls.identifier = c(29, 2, 13, 17, 32, 38),
        time.predictors.prior = c(1984:1989),
        time.optimize.ssr = c(1984:1990),
        time.plot = 1984:1996
    )