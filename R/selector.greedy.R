#' @title
#'   Simple \dQuote{greedy} selector.
#'
#' @description
#'   Sorts the individuals according to their fitness value in increasing order
#'   and selects the best ones.
#'
#' @return [\code{setOfIndividuals}]
#' @family selectors
#' @export
makeGreedySelector = function() {
  selector = function(population, storage, task, n.select, control) {
    inds = population$individuals
    fitness = as.numeric(population$fitness)
    idx.select = order(fitness)[seq(n.select)]
    return(makePopulation(inds[idx.select], matrix(fitness[idx.select], nrow = 1L)))
  }
  makeSelector(
    selector = selector,
    name = "Greedy selector",
    description = "Return the best individuals regarding the fitness value.",
    supported.objectives = c("single-objective")
  )
}
