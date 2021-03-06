% Generated by roxygen2 (4.0.2): do not edit by hand
\name{h2o.isax}
\alias{h2o.isax}
\title{iSAX}
\usage{
h2o.isax(x, num_words, max_cardinality, optimize_card = FALSE)
}
\arguments{
\item{x}{an H2OFrame}

\item{num_words}{Number of iSAX words for the timeseries. ie granularity along the time series}

\item{max_cardinality}{Maximum cardinality of the iSAX word. Each word can have less than the max}

\item{optimize_card}{An optimization flag that will find the max cardinality regardless of what is passed in for max_cardinality.}
}
\value{
An H2OFrame with the name of time series, string representation of iSAX word, followed by binary representation
}
\description{
Compute the iSAX index for a DataFrame which is assumed to be numeric time series data
}
\references{
http://www.cs.ucr.edu/~eamonn/iSAX_2.0.pdf

http://www.cs.ucr.edu/~eamonn/SAX.pdf
}

