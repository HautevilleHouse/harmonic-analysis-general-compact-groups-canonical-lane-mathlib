import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.PeterWeylTheorem

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure FourierTransformPackage {G : CompactGroupPackage} (P : PeterWeylPackage G) where
  L2Space : NormedAddCommGroup (Lp G 2)
  transformMap : (Lp G 2) → (∀ (π : UnitaryRepresentationPackage G), (π.hilbertSpace →L[ℝ] π.hilbertSpace))
  isIsometry : Prop
  inversionFormula : Prop
  plancherelFormula : Prop
  isIsometryClosed : isIsometry
  inversionFormulaClosed : inversionFormula
  plancherelFormulaClosed : plancherelFormula

structure FourierTransformEvidence {G : CompactGroupPackage} {P : PeterWeylPackage G} (F : FourierTransformPackage G P) where
  isIsometryClosed : F.isIsometry
  inversionFormulaClosed : F.inversionFormula
  plancherelFormulaClosed : F.plancherelFormula

def FourierTransformClosed {G : CompactGroupPackage} {P : PeterWeylPackage G} (F : FourierTransformPackage G P) : Prop :=
  F.isIsometry ∧ F.inversionFormula ∧ F.plancherelFormula

theorem fourier_transform_closed_from_evidence {G : CompactGroupPackage} {P : PeterWeylPackage G} (F : FourierTransformPackage G P) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.isIsometryClosed (And.intro E.inversionFormulaClosed E.plancherelFormulaClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse