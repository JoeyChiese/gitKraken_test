% Generated by roxygen2 (4.0.2): do not edit by hand
\name{h2o.loadModel}
\alias{h2o.loadModel}
\title{Load H2O Model from HDFS or Local Disk}
\usage{
h2o.loadModel(path)
}
\arguments{
\item{path}{The path of the H2O Model to be imported.
and port of the server running H2O.}
}
\value{
Returns a \linkS4class{H2OModel} object of the class corresponding to the type of model
        built.
}
\description{
Load a saved H2O model from disk.
}
\examples{
\dontrun{
# library(h2o)
# h2o.init()
# prosPath = system.file("extdata", "prostate.csv", package = "h2o")
# prostate.hex = h2o.importFile(path = prosPath, destination_frame = "prostate.hex")
# prostate.glm = h2o.glm(y = "CAPSULE", x = c("AGE","RACE","PSA","DCAPS"),
#   training_frame = prostate.hex, family = "binomial", alpha = 0.5)
# glmmodel.path = h2o.saveModel(prostate.glm, dir = "/Users/UserName/Desktop")
# glmmodel.load = h2o.loadModel(glmmodel.path)
}
}
\seealso{
\code{\link{h2o.saveModel}, \linkS4class{H2OModel}}
}

