import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure FourierTransformPackage (H : HaarMeasureExistencePackage) (P : PeterWeylTheoremPackage) where
  characterGroup : Type u
  fourierTransform : Type v
  inversionFormula : Prop
  plancherelTheorem : Prop
  positivityProperty : Prop

structure FourierTransformEvidence {H : HaarMeasureExistencePackage} {P : PeterWeylTheoremPackage}
    (F : FourierTransformPackage H P) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem
  positivityPropertyClosed : F.positivityProperty

def FourierTransformClosed {H : HaarMeasureExistencePackage} {P : PeterWeylTheoremPackage}
    (F : FourierTransformPackage H P) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem ∧ F.positivityProperty

theorem fourier_transform_closed_from_evidence {H : HaarMeasureExistencePackage} {P : PeterWeylTheoremPackage}
    (F : FourierTransformPackage H P) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed (And.intro E.plancherelTheoremClosed E.positivityPropertyClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse