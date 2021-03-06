#' @title
#'   Simple (naive) mating pool generator.
#'
#' @description
#'   Just for testing. Actually does not really select, but instead returns the
#'   entire population to form the mating pool.
#'
#' @return [\code{setOfIndividuals}]
#' @family selectors
#' @export
makeSimpleSelector = function() {
  selector = function(population, storage, task, n.select, control) {
    return(population)
  }
  makeSelector(
    selector = selector,
    name = "Simple selector",
    description = "Simply returns the entire population.",
    supported.objectives = c("single-objective", "multi-objective")
  )
}
