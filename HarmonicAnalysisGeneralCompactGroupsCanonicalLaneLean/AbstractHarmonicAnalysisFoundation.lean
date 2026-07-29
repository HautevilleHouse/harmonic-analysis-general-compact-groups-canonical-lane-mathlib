import HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.PeterWeylTheoremPackage

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure AbstractHarmonicAnalysisFoundation (G : CompactGroupAdmittedObject) where
  fourier : FourierAnalysisPackage G
  fourierEvidence : FourierAnalysisEvidence fourier
  peterWeyl : PeterWeylTheoremPackage fourier
  peterWeylEvidence : PeterWeylTheoremEvidence peterWeyl

def AbstractHarmonicAnalysisFoundationClosed (G : CompactGroupAdmittedObject)
    (A : AbstractHarmonicAnalysisFoundation G) : Prop :=
  FourierAnalysisClosed A.fourier ∧ PeterWeylTheoremClosed A.peterWeyl

theorem abstract_harmonic_analysis_foundation_closed_from_evidence
    (G : CompactGroupAdmittedObject) (A : AbstractHarmonicAnalysisFoundation G) :
    AbstractHarmonicAnalysisFoundationClosed G A := by
  exact And.intro (fourier_analysis_closed_from_evidence A.fourier A.fourierEvidence)
    (peter_weyl_theorem_closed_from_evidence A.peterWeyl A.peterWeylEvidence)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
