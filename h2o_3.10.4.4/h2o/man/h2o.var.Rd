% Generated by roxygen2 (4.0.2): do not edit by hand
\name{h2o.var}
\alias{h2o.var}
\alias{var}
\title{Variance of a column or covariance of columns.}
\usage{
h2o.var(x, y = NULL, na.rm = FALSE, use)

var(x, y = NULL, na.rm = FALSE, use)
}
\arguments{
\item{x}{An H2OFrame object.}

\item{y}{\code{NULL} (default) or an H2OFrame. The default is equivalent to y = x.}

\item{na.rm}{\code{logical}. Should missing values be removed?}

\item{use}{An optional character string indicating how to handle missing values. This must be one of the following:
"everything"            - outputs NaNs whenever one of its contributing observations is missing
"all.obs"               - presence of missing observations will throw an error
"complete.obs"          - discards missing values along with all observations in their rows so that only complete observations are used}
}
\description{
Compute the variance or covariance matrix of one or two H2OFrames.
}
\examples{
\donttest{
h2o.init()
prosPath <- system.file("extdata", "prostate.csv", package="h2o")
prostate.hex <- h2o.uploadFile(path = prosPath)
var(prostate.hex$AGE)
}
}
\seealso{
\code{\link[stats]{var}} for the base R implementation. \code{\link{h2o.sd}} for standard deviation.
}

