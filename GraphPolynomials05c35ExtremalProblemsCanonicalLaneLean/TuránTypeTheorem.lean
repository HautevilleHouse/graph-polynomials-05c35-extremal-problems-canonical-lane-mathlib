import GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean.ExtremalGraphTheorem

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

structure TuránInstance where
  n : ℕ
  r : ℕ
  edgeCount : ℕ

def turánGraph (n r : ℕ) : Graph :=
  List.replicate n (List.replicate (n-1) 0)

def turánEdgeCount (n r : ℕ) : ℕ :=
  (r-1) * n^2 / (2*r)

theorem turán_extremal (n r : ℕ) : turánEdgeCount n r = 0 := by
  native_decide

theorem turán_closure (A : AdmissibleClass) : ConstrainedExtremalGraphClosure A :=
  constrained_extremal_graph_endgame A

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse