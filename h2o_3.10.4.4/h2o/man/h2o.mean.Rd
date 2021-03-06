% Generated by roxygen2 (4.0.2): do not edit by hand
\name{h2o.mean}
\alias{h2o.mean}
\alias{mean.H2OFrame}
\title{Compute the frame's mean by-column (or by-row).}
\usage{
h2o.mean(x, na.rm = FALSE, axis = 0, return_frame = FALSE, ...)

\method{mean}{H2OFrame}(x, na.rm = FALSE, axis = 0, return_frame = FALSE,
  ...)
}
\arguments{
\item{x}{An H2OFrame object.}

\item{na.rm}{\code{logical}. Indicate whether missing values should be removed.}

\item{axis}{\code{integer}. Indicate whether to calculate the mean down a column (0) or across a row (1).
NOTE: This is only applied when return_frame is set to TRUE. Otherwise, this parameter
is ignored.}

\item{return_frame}{\code{logical}. Indicate whether to return an H2O frame or a list. Default is FALSE (returns a list).}

\item{...}{Further arguments to be passed from or to other methods.}
}
\value{
Returns a list containing the mean for each column (NaN for non-numeric columns) if return_frame is set to FALSE.
        If return_frame is set to TRUE, then it will return an H2O frame with means per column or row (depends on axis argument).
}
\description{
Compute the frame's mean by-column (or by-row).
}
\examples{
\donttest{
h2o.init()
prosPath <- system.file("extdata", "prostate.csv", package="h2o")
prostate.hex <- h2o.uploadFile(path = prosPath)
# Default behavior. Will return list of means per column.
h2o.mean(prostate.hex$AGE)
# return_frame set to TRUE. This will return an H2O Frame
# with mean per row or column (depends on axis argument)
h2o.mean(prostate.hex,na.rm=TRUE,axis=1,return_frame=TRUE)
}
}
\seealso{
\code{\link[base]{mean}} , \code{\link[base]{rowMeans}}, or \code{\link[base]{colMeans}} for the base R implementation
}

