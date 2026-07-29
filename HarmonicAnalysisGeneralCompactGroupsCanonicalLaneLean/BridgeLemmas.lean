import HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.CompactGroupAdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompactGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
