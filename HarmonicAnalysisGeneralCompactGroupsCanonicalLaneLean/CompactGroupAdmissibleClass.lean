import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure CompactGroupAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  groupStructure : Group carrier
  hausdorff : Prop
  compact : Prop
  haarMeasure : carrier → ℝ
  conclusion : carrier ≃+ ℝ

structure AdmissibleClass where
  object : CompactGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompactGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CompactGroupWitnessClosed (O : CompactGroupAdmittedObject) : Prop :=
  O.conclusion

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
