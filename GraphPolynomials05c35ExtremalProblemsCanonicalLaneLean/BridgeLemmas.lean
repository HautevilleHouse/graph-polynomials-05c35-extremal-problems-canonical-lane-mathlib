import AdmissibleClass

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.forbiddenFreeHeld

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.forbiddenFreeHeld

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse
