import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.CompactGroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure HaarMeasurePackage {G : CompactGroupPackage} where
  measure : MeasureTheory.Measure G.carrier
  leftInvariant : ∀ g : G.carrier, MeasureTheory.MeasurePreserving (fun x : G.carrier => g * x) measure measure
  rightInvariant : ∀ g : G.carrier, MeasureTheory.MeasurePreserving (fun x : G.carrier => x * g) measure measure
  finiteVolume : measure Set.univ < ∞
  nonzeroOnOpen : ∀ U : Set G.carrier, IsOpen U → U.Nonempty → measure U > 0
  leftInvariantClosed : leftInvariant
  rightInvariantClosed : rightInvariant
  finiteVolumeClosed : finiteVolume
  nonzeroOnOpenClosed : nonzeroOnOpen

structure HaarMeasureEvidence {G : CompactGroupPackage} (H : HaarMeasurePackage G) where
  leftInvariantClosed : H.leftInvariant
  rightInvariantClosed : H.rightInvariant
  finiteVolumeClosed : H.finiteVolume
  nonzeroOnOpenClosed : H.nonzeroOnOpen

def HaarMeasureClosed {G : CompactGroupPackage} (H : HaarMeasurePackage G) : Prop :=
  H.leftInvariant ∧ H.rightInvariant ∧ H.finiteVolume ∧ H.nonzeroOnOpen

theorem haar_measure_closed_from_evidence {G : CompactGroupPackage} (H : HaarMeasurePackage G) (E : HaarMeasureEvidence H) :
    HaarMeasureClosed H := by
  exact And.intro E.leftInvariantClosed (And.intro E.rightInvariantClosed (And.intro E.finiteVolumeClosed E.nonzeroOnOpenClosed))

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse