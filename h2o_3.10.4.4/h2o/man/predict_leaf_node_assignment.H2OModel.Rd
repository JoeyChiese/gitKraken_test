% Generated by roxygen2 (4.0.2): do not edit by hand
\name{predict_leaf_node_assignment.H2OModel}
\alias{h2o.predict_leaf_node_assignment}
\alias{predict_leaf_node_assignment.H2OModel}
\title{Predict the Leaf Node Assignment on an H2O Model}
\usage{
predict_leaf_node_assignment.H2OModel(object, newdata, ...)

h2o.predict_leaf_node_assignment(object, newdata, ...)
}
\arguments{
\item{object}{a fitted \linkS4class{H2OModel} object for which prediction is
desired}

\item{newdata}{An H2OFrame object in which to look for
variables with which to predict.}

\item{...}{additional arguments to pass on.}
}
\value{
Returns an H2OFrame object with categorical leaf assignment identifiers for
        each tree in the model.
}
\description{
Obtains leaf node assignment from fitted H2O model objects.
}
\details{
For every row in the test set, return a set of factors that identify the leaf placements
of the row in all the trees in the model.
The order of the rows in the results is the same as the order in which the
data was loaded
}
\examples{
\donttest{
library(h2o)
h2o.init()
prosPath <- system.file("extdata", "prostate.csv", package="h2o")
prostate.hex <- h2o.uploadFile(path = prosPath)
prostate.hex$CAPSULE <- as.factor(prostate.hex$CAPSULE)
prostate.gbm <- h2o.gbm(3:9, "CAPSULE", prostate.hex)
h2o.predict(prostate.gbm, prostate.hex)
h2o.predict_leaf_node_assignment(prostate.gbm, prostate.hex)
}
}
\seealso{
\code{\link{h2o.gbm}} and  \code{\link{h2o.randomForest}} for model
         generation in h2o.
}

