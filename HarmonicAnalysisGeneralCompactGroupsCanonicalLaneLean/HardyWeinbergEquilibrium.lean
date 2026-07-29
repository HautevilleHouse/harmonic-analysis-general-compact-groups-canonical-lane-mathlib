import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : Nat
  alleleFrequencies : Type u
  expectedGenotypeFrequencies : Type v
  observedGenotypeFrequencies : Type w
  equilibriumCondition : Prop
  chiSquareStatistic : Type x
  pValueThreshold : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  pValueThresholdClosed : H.pValueThreshold

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.pValueThreshold

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed E.pValueThresholdClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
