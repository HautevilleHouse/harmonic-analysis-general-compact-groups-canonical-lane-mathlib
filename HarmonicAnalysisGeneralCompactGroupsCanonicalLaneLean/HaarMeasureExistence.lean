import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure HaarMeasureExistencePackage where
  groupType : Type u
  topology : TopologicalSpace groupType
  compactGroup : Boolean := true
  haarMeasure : Type v
  leftInvariant : Prop
  rightInvariant : Prop
  uniquenessUpToScale : Prop

structure HaarMeasureExistenceEvidence (H : HaarMeasureExistencePackage) where
  compactGroupClosed : H.compactGroup
  haarMeasureClosed : Nonempty H.haarMeasure
  leftInvariantClosed : H.leftInvariant
  rightInvariantClosed : H.rightInvariant
  uniquenessUpToScaleClosed : H.uniquenessUpToScale

def HaarMeasureExistenceClosed (H : HaarMeasureExistencePackage) : Prop :=
  H.leftInvariant ∧ H.rightInvariant ∧ H.uniquenessUpToScale

theorem haar_measure_existence_closed_from_evidence (H : HaarMeasureExistencePackage)
    (E : HaarMeasureExistenceEvidence H) : HaarMeasureExistenceClosed H := by
  exact And.intro E.leftInvariantClosed (And.intro E.rightInvariantClosed E.uniquenessUpToScaleClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse