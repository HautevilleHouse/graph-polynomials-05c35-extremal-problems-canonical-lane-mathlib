import GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev Graph := List (List Nat)
abbrev GraphPolynomial := Set Graph

structure ExtremalBound where
  constant : ℕ

structure GraphPolynomialWitness where
  existsSubgraph : Graph → Graph → Prop

structure PolynomialDegreeBound where
  degree : ℕ

structure GraphPolynomialClassicalObject where
  graphFamily : GraphPolynomial
  witnessStructure : GraphPolynomialWitness
  bound : PolynomialDegreeBound

structure GraphPolynomialAdmittedObject where
  classicalObject : GraphPolynomialClassicalObject
  graphPolynomial : GraphPolynomial
  extremalBound : ExtremalBound

structure GraphPolynomialEndgameState where
  admittedObject : GraphPolynomialAdmittedObject

def Decides (M : ExtremalBound) (L : GraphPolynomial) : Prop :=
  ∀ g : Graph, M.constant = g.length → g ∈ L

end GraphPolynomials05c35ExtremalProblemsCanonicalLaneLean
end HautevilleHouse