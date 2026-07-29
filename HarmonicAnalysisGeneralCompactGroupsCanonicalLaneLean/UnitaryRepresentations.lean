import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.CompactGroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure UnitaryRepresentationPackage {G : CompactGroupPackage} where
  hilbertSpace : Type u
  innerProduct : InnerProductSpace ℝ hilbertSpace
  representation : G.carrier → (hilbertSpace →L[ℝ] hilbertSpace)
  unitary : ∀ g : G.carrier, IsUnitary (representation g)
  strongContinuity : ∀ v : hilbertSpace, Continuous (λ g : G.carrier => representation g v)
  irreducible : Prop
  irreducibleClosed : irreducible

structure UnitaryRepresentationEvidence {G : CompactGroupPackage} (U : UnitaryRepresentationPackage G) where
  unitaryClosed : ∀ g : G.carrier, U.unitary g
  strongContinuityClosed : ∀ v : U.hilbertSpace, U.strongContinuity v
  irreducibleClosed : U.irreducible

def UnitaryRepresentationClosed {G : CompactGroupPackage} (U : UnitaryRepresentationPackage G) : Prop :=
  (∀ g : G.carrier, U.unitary g) ∧ (∀ v : U.hilbertSpace, U.strongContinuity v) ∧ U.irreducible

theorem unitary_representation_closed_from_evidence {G : CompactGroupPackage} (U : UnitaryRepresentationPackage G) (E : UnitaryRepresentationEvidence U) :
    UnitaryRepresentationClosed U := by
  exact And.intro (fun g => E.unitaryClosed g) (And.intro (fun v => E.strongContinuityClosed v) E.irreducibleClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse