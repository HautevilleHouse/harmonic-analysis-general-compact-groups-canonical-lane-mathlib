import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure FourierPackage (G : CompactGroup) where
  l2Space : Type u
  fourierTransform : Type v
  inversionFormula : Prop
  plancherelTheorem : Prop
  fejerSummability : Prop

structure FourierEvidence (G : CompactGroup) (F : FourierPackage G) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem
  fejerSummabilityClosed : F.fejerSummability

def FourierClosed (G : CompactGroup) (F : FourierPackage G) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem ∧ F.fejerSummability

theorem fourier_closed_from_evidence (G : CompactGroup) (F : FourierPackage G) (E : FourierEvidence G F) :
    FourierClosed G F := by
  exact And.intro E.inversionFormulaClosed (And.intro E.plancherelTheoremClosed E.fejerSummabilityClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse