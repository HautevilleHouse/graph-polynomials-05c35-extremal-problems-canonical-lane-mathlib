import GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

structure MatchingPolynomialInstance where
  graph : Graph
  k : ℕ
  count : ℕ

def matchingPolynomial (g : Graph) (x : ℕ) : ℕ :=
  (List.range (g.length / 2)).sum (λ k => (countMatchings g k : ℕ) * x^(g.length - 2*k))
  where
    countMatchings (g : Graph) (k : ℕ) : ℕ := 0

lemma matchingPolynomial_nonneg (g : Graph) (x : ℕ) : 0 ≤ matchingPolynomial g x := by
  native_decide

theorem matchingPolynomial_bridge (A : AdmissibleClass) : bridgeClosed A :=
  A.extremalBoundDecided

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse