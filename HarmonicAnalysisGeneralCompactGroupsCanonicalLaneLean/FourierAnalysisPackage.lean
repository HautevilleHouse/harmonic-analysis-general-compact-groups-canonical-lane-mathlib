import HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.CompactGroupAdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure FourierAnalysisPackage (G : CompactGroupAdmittedObject) where
  characterGroup : Type u
  fourierTransform : (G.carrier → ℂ) → (characterGroup → ℂ)
  inversionFormula : Prop
  plancherelTheorem : Prop
  convergenceInL2 : Prop

structure FourierAnalysisEvidence {G : CompactGroupAdmittedObject}
    (F : FourierAnalysisPackage G) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem
  convergenceInL2Closed : F.convergenceInL2

def FourierAnalysisClosed {G : CompactGroupAdmittedObject}
    (F : FourierAnalysisPackage G) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem ∧ F.convergenceInL2

theorem fourier_analysis_closed_from_evidence
    {G : CompactGroupAdmittedObject} (F : FourierAnalysisPackage G)
    (E : FourierAnalysisEvidence F) : FourierAnalysisClosed F := by
  exact And.intro E.inversionFormulaClosed (And.intro E.plancherelTheoremClosed E.convergenceInL2Closed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
