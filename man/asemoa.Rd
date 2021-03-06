% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/emoa.as-emoa.R
\name{asemoa}
\alias{asemoa}
\title{Implementation of the NSGA-II EMOA algorithm by Deb.}
\usage{
asemoa(task, n.population = 100L, aspiration.set = NULL, n.archive,
  parent.selector = makeSimpleSelector(), mutator = makeGaussMutator(),
  recombinator = makeCrossoverRecombinator(), max.iter = 100L,
  max.evals = NULL, max.time = NULL, ...)
}
\arguments{
\item{task}{[\code{ecr_optimization_task}]\cr
Optimization task. If a \code{smoof_function} is passed it is automatically
converted into a task.}

\item{n.population}{[\code{integer(1)}]\cr
Population size. Default is \code{100}.}

\item{aspiration.set}{[\code{matrix}]\cr
The aspiration set. Each column contains one point of the set.}

\item{n.archive}{[\code{integer(1)}]\cr
Size of the pareto archive, i.e., the number of nondominated points which we
aim to generate. Default is \code{ncol(aspiration.set)}.}

\item{parent.selector}{[\code{ecr_selector}]\cr
Selection operator which implements a procedure to copy individuals from a
given population to the mating pool, i. e., allow them to become parents.}

\item{mutator}{[\code{ecr_mutator}]\cr
Mutation operator of type \code{ecr_mutator}.}

\item{recombinator}{[\code{ecr_recombinator}]\cr
Recombination operator of type \code{ecr_recombinator}.}

\item{max.iter}{[\code{integer(1)}]\cr
Maximal number of iterations. Default ist \code{100L}.}

\item{max.evals}{[\code{integer(1)}]\cr
Maximal number of iterations/generations. Default is \code{Inf}.}

\item{max.time}{[\code{integer(1)}]\cr
Time budget in seconds. Default ist \code{Inf}.}

\item{...}{[any]\cr
Further arguments passed to \code{\link{setupECRControl}}.}
}
\value{
[\code{ecr_ecr_multi_objective_result}]
}
\description{
The AS-EMOA, short for aspiration set evolutionary multi-objective algorithm,
  aims to incorporate expert knowledge into multi-objective optimization [1].
  The algorithm expects an aspiration set, i.e., a set of reference points. It
  then creates an appriximation of the pareto front close to the aspiration set
  utilizing the average Hausdorff distance.
}
\note{
This is a pure R implementation of the AS-EMOA algorithm. It hides the regular
  \pkg{ecr} interface and offers a more R like interface while still being quite
  adaptable.
}
\references{
Rudolph, G., Schuetze, S., Grimme, C., Trautmann, H: An Aspiration Set
  EMOA Based on Averaged Hausdorff Distances. LION 2014: 153-156.
}
\keyword{optimize}

