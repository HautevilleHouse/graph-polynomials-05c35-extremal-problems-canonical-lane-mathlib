import BridgeLemmas

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse
