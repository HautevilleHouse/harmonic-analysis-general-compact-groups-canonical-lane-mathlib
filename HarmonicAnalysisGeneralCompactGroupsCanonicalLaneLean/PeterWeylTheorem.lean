import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.CompactGroupStructure
import HautevilleHouse.HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.UnitaryRepresentations

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure PeterWeylPackage {G : CompactGroupPackage} where
  irreducibleRepresentations : Set (UnitaryRepresentationPackage G)
  orthogonalityRelations : Prop
  matrixCoefficientsDense : Prop
  decompositionOfL2 : Prop
  orthogonalityRelationsClosed : orthogonalityRelations
  matrixCoefficientsDenseClosed : matrixCoefficientsDense
  decompositionOfL2Closed : decompositionOfL2

structure PeterWeylEvidence {G : CompactGroupPackage} (P : PeterWeylPackage G) where
  orthogonalityRelationsClosed : P.orthogonalityRelations
  matrixCoefficientsDenseClosed : P.matrixCoefficientsDense
  decompositionOfL2Closed : P.decompositionOfL2

def PeterWeylClosed {G : CompactGroupPackage} (P : PeterWeylPackage G) : Prop :=
  P.orthogonalityRelations ∧ P.matrixCoefficientsDense ∧ P.decompositionOfL2

theorem peter_weyl_closed_from_evidence {G : CompactGroupPackage} (P : PeterWeylPackage G) (E : PeterWeylEvidence P) :
    PeterWeylClosed P := by
  exact And.intro E.orthogonalityRelationsClosed (And.intro E.matrixCoefficientsDenseClosed E.decompositionOfL2Closed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse