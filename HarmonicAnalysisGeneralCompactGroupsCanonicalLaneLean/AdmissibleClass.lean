import Mathlib

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : HarmonicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HarmonicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse