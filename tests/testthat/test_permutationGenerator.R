context("permutation generator")

test_that("permutation generator works properly", {

  permGen = ecr:::makePermutationGenerator()
  par.set = makeNumericParamSet(len = 10L, id = "x", lower = 1, upper = 10L)
  control = list(par.set = par.set)

  set.seed(5678)

  # test that generated population is of proper length and each individual is
  # a permutation of 1, ..., 10
  size = 3L
  population = permGen(size, task = NULL, control)
  expect_is(population, "ecrPopulation")
  population = population$individuals
  expect_is(population, "list")
  expect_equal(length(population), size)
  for (i in seq(size)) {
    expect_true(all.equal(sort(population[[i]]), 1:10L), info = "infdividual %i is
      no permutation", i)
  }
})
