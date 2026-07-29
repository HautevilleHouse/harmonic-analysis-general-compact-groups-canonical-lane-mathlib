import HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.MathlibObjects

/-!
# Harmonic Analysis Foundation Package
-/

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure HarmonicAnalysisFoundationPackage where
  group : Type u
  topology : TopologicalSpace group
  haarMeasure : Type v
  convolutionProduct : Type w
  fourierTransform : Type x
  plancherelTheorem : Prop
  pontryaginDuality : Prop
  haarMeasureExistence : haarMeasure
  convolutionDefined : convolutionProduct
  fourierDefined : fourierTransform
  plancherelClosed : plancherelTheorem
  pontryaginDualityClosed : pontryaginDuality

structure HarmonicAnalysisFoundationEvidence (F : HarmonicAnalysisFoundationPackage) where
  haarMeasureExistenceClosed : F.haarMeasureExistence
  convolutionDefinedClosed : F.convolutionDefined
  fourierDefinedClosed : F.fourierDefined
  plancherelClosedClosed : F.plancherelTheorem
  pontryaginDualityClosedClosed : F.pontryaginDuality

def HarmonicAnalysisFoundationClosed (F : HarmonicAnalysisFoundationPackage) : Prop :=
  F.plancherelTheorem ∧ F.pontryaginDuality

theorem harmonic_analysis_foundation_closed_from_evidence
    (F : HarmonicAnalysisFoundationPackage) (E : HarmonicAnalysisFoundationEvidence F) :
    HarmonicAnalysisFoundationClosed F := by
  exact And.intro E.plancherelClosedClosed E.pontryaginDualityClosedClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse