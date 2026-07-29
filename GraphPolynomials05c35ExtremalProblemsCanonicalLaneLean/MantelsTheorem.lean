import AdmissibleClass

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

structure MantelsAdmissible extends AdmissibleClass where
  triangleFree : graph.forbidding = [[0,1,2]]
  mantelBound : graph.edges = (graph.n^2)/4

def mantelBridgeClosed (A : MantelsAdmissible) : Prop :=
  A.forbiddenFreeHeld ∧ A.triangleFree

theorem mantel_bridge_from_admissible (A : MantelsAdmissible) :
    mantelBridgeClosed A := by
  exact And.intro A.forbiddenFreeHeld A.triangleFree

def mantelGateClosed (A : MantelsAdmissible) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem mantel_gate_from_admissible (A : MantelsAdmissible) :
    mantelGateClosed A := by
  exact A.gateWitness

def ConstrainedMantelClosure (A : MantelsAdmissible) : Prop :=
  mantelBridgeClosed A ∧ mantelGateClosed A

theorem constrained_mantel_closure (A : MantelsAdmissible) :
    ConstrainedMantelClosure A := by
  exact And.intro (mantel_bridge_from_admissible A) (mantel_gate_from_admissible A)

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse
