% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rescalePoints.R
\name{rescalePoints}
\alias{rescalePoints}
\title{Rescaling of points.}
\usage{
rescalePoints(x, lower = NULL, upper = NULL)
}
\arguments{
\item{x}{[\code{matrix}]\cr
Matrix of points.}

\item{lower}{[\code{numeric(1)}]\cr
Lower bound of the new bounding box.}

\item{upper}{[\code{numeric(1)}]\cr
Upper bound of the new bounding box.}
}
\value{
[\code{matrix}]
}
\description{
Rescales a cloud of points so that all the point are located within the
  bounds given by \code{lower} and \code{upper}. If both parameters are missing
  the minimal/maximal values per dimension are extracted.
}

