import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

structure ExtremalGraph where
  n : Nat
  edges : Nat
  forbidding : List (List Nat)
  property : String

def forbiddenFree (g : ExtremalGraph) : Prop :=
  g.forbidding.all fun f => f.all fun v => v < g.n

structure AdmissibleClass where
  graph : ExtremalGraph
  extremalNumber : Nat
  densityBound : Nat
  forbiddenFreeHeld : forbiddenFree graph
  extremalPoly : Polynomial ℕ
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.forbiddenFreeHeld ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse
