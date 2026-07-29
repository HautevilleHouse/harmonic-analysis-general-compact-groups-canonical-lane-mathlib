import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure HardyWeinbergPackage (G : CompactGroup) where
  populationAlleles : G.carrier → ℕ
  equilibriumProportions : Prop
  chiSquaredTest : Prop
  significanceLevel : ℝ
  equilibriumReached : Prop

structure HardyWeinbergEvidence (G : CompactGroup) (H : HardyWeinbergPackage G) where
  equilibriumProportionsClosed : H.equilibriumProportions
  chiSquaredTestClosed : H.chiSquaredTest
  equilibriumReachedClosed : H.equilibriumReached

def HardyWeinbergClosed (G : CompactGroup) (H : HardyWeinbergPackage G) : Prop :=
  H.equilibriumProportions ∧ H.chiSquaredTest ∧ H.equilibriumReached

theorem hardy_weinberg_closed_from_evidence (G : CompactGroup) (H : HardyWeinbergPackage G) (E : HardyWeinbergEvidence G H) :
    HardyWeinbergClosed G H := by
  exact And.intro E.equilibriumProportionsClosed (And.intro E.chiSquaredTestClosed E.equilibriumReachedClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse