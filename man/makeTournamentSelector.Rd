% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/selector.k-tournament.R
\name{makeTournamentSelector}
\alias{makeTournamentSelector}
\title{Generator for k-Tournament selection.}
\usage{
makeTournamentSelector(k = 3L)
}
\arguments{
\item{k}{[\code{integer(1)}]\cr
Number of individuals to participate in each tournament. Default is \code{2L}.}
}
\value{
[\code{setOfIndividuals}]
}
\description{
Selects genes for the mating pool. It works as follows: k individuals from the
  population are chosen randomly and the best one is selected to be included into
  the mating pool. This process is repeated until the desired number of individuals
  for the mating pool is reached.
}
\seealso{
Other selectors: \code{\link{makeGreedySelector}};
  \code{\link{makeRouletteWheelSelector}};
  \code{\link{makeSimpleSelector}}
}

