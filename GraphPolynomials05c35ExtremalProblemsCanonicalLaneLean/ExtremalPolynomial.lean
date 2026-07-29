import Mathlib.Data.Polynomial.Basic

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

open Polynomial

structure ExtremalPolynomial where
  n : ℕ
  poly : Polynomial ℕ
  extremalConjecture : Prop
  bridgeCondition : Bool

def extremalDensity (g : ExtremalGraph) : ℕ :=
  g.edges * 2 / (g.n * (g.n - 1))

theorem extremal_density_bound (g : ExtremalGraph) :
    g.edges ≤ (g.n * (g.n - 1)) / 2 := by
  -- extremal bound for a simple graph
  exact Nat.le_of_lt_succ ?_

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse
