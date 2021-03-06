% Generated by roxygen2 (4.0.2): do not edit by hand
\name{h2o.setLevels}
\alias{h2o.setLevels}
\title{Set Levels of H2O Factor Column}
\usage{
h2o.setLevels(x, levels)
}
\arguments{
\item{x}{A single categorical column.}

\item{levels}{A character vector specifying the new levels. The number of new levels must match the number of old levels.}
}
\description{
Works on a single categorical vector. New domains must be aligned with the old domains.
This call has SIDE EFFECTS and mutates the column in place (does not make a copy).
}

