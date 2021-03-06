#' ecr: Evolutionary Computing in R
#'
#' The package offers a comprehensive collection of building blocks for both
#' single- and multi-objective evolutionary algorithms.
#'
#' @section Evolutionary Optimization:
#' The task of \bold{Global Optimization (GO)} is, given a set of objectives
#' \eqn{\mathcal{F} = \{f_1, \ldots, f_m\}} with \eqn{f_i : S \subseteq \mathbf{R}
#' \to \mathbf{R}}, \eqn{S} the region of feasible solutions, to find a solution
#' vector \eqn{\mathbf{x}^* \in S} with
#' \deqn{\mathbf{x}^* = arg\,min_{\mathbf{x}} (f_1(\mathbf{x}), \ldots, f_m(\mathbf{x}))}.
#' The defintion of argmin depends on the number of objectives in this context.
#' For a single objective, we are simply interested in minimizing the function
#' value, but in the case where \eqn{m \geq 2}, we need another term of optimality,
#' termed the Pareto-optimality. We do not want to dive in to deeply in multi-
#' objecitve optimization formalities here and refer the interested reader to
#' the literature. For now, let us assume, that we want to optimize a single
#' criterion, i.e., the task is
#' \deqn{\min_{\mathbf{x}} f(\mathbf{x}).}
#'
#' However, many functions, which occur in practise of engineering, are hard
#' to optimize. In this case, evolutionary algorithms frequently get applicated
#' in practise, since these type of algorithms just base on function evaluations
#' and to not make any assumptions on the functions structure.
#'
#' @section Evolutionary Algorithms with ecr:
#' All evolutionary algorithms are build up of the same evolutionary operators:
#' After initilizing an initial population, evolutionary operators, i.e., in particular
#' parental selection, recombination, mutation and survival selection are applied
#' until a stopping condition is met. However, until now, implementing EAs in R
#' has been a \dQuote{from scratch} work. This package offers a lot of ready to
#' use building blocks, which can easily be combined to set up evolutionary
#' algorithms, visualize results, monitor the optimization progress and compare
#' different evolutionary operators and/or parametrizations.
#'
#' @docType package
#' @name ecrpackage
NULL
