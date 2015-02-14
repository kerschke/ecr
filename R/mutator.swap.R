#' Swap mutation operator.
#'
#' @param setOfIndividuals [\code{setOfIndividuals}]\cr
#'   Set of individuals.
#' @param control [\code{list}]\cr
#'   Not used.
#' @return [\code{setOfIndividuals}]
#'   Set of individuals.
#' @export
swapMutator = function(setOfIndividuals, control = list()) {
  n.params = ncol(setOfIndividuals$individuals)
  n = nrow(setOfIndividuals$individuals)

  for (i in seq(n)) {
    pos = sample(1:n.params, size = 2)
    pos1 = pos[1]
    pos2 = pos[2]
    #catf("Positions: %i, %i", pos1, pos2)
    tmp = setOfIndividuals$individuals[i, pos1]
    setOfIndividuals$individuals[i, pos1] = setOfIndividuals$individuals[i, pos2]
    setOfIndividuals$individuals[i, pos2] = tmp
  }
  return(setOfIndividuals)
}

attr(swapMutator, "name") = "Swap mutator"
attr(swapMutator, "description") = "Swaps two alleles"
attr(swapMutator, "supported") = c("permutation")
attr(swapMutator, "class") = c("ecr_operator", "ecr_mutator")
attr(swapMutator, "defaults") = list()

swapMutatorCheck = function(operator.control) {}

attr(swapMutator, "checkFunction") = swapMutatorCheck