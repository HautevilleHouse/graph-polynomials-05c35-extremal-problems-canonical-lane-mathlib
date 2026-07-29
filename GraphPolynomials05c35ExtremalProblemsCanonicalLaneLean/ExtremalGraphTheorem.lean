import GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

def ConstrainedExtremalGraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_extremal_graph_endgame (A : AdmissibleClass) :
    ConstrainedExtremalGraphClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse