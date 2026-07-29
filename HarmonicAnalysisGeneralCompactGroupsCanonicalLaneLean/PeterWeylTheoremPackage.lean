import HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.FourierAnalysisPackage

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure PeterWeylTheoremPackage {G : CompactGroupAdmittedObject}
    (F : FourierAnalysisPackage G) where
  irreducibleRepresentationsClassified : Prop
  matrixCoefficientsFormBasis : Prop
  decompositionOfRegularRepresentation : Prop

structure PeterWeylTheoremEvidence {G : CompactGroupAdmittedObject}
    {F : FourierAnalysisPackage G} (P : PeterWeylTheoremPackage F) where
  irreducibleRepresentationsClassifiedClosed : P.irreducibleRepresentationsClassified
  matrixCoefficientsFormBasisClosed : P.matrixCoefficientsFormBasis
  decompositionOfRegularRepresentationClosed : P.decompositionOfRegularRepresentation

def PeterWeylTheoremClosed {G : CompactGroupAdmittedObject}
    {F : FourierAnalysisPackage G} (P : PeterWeylTheoremPackage F) : Prop :=
  P.irreducibleRepresentationsClassified ∧ P.matrixCoefficientsFormBasis ∧
  P.decompositionOfRegularRepresentation

theorem peter_weyl_theorem_closed_from_evidence
    {G : CompactGroupAdmittedObject} {F : FourierAnalysisPackage G}
    (P : PeterWeylTheoremPackage F) (E : PeterWeylTheoremEvidence P) :
    PeterWeylTheoremClosed P := by
  exact And.intro E.irreducibleRepresentationsClassifiedClosed
    (And.intro E.matrixCoefficientsFormBasisClosed E.decompositionOfRegularRepresentationClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
