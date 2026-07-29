import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "harmonic-analysis-general-compact-groups-canonical-lane",
    theoremName := "HarmonicAnalysisGeneralCompactGroupsCanonicalLane",
    theoremObject := "Peter-Weyl theorem, Plancherel theorem, Pontryagin duality for compact groups",
    classicalBoundary := "Unrestricted classical harmonic analysis outside the compact-group setting",
    manifoldConstrainedStatement := "compact-group-constrained theorem certificate internalized through bridge and gate",
    certificateLane := "compact_group_constrained",
    carriedRemainder := "non-compact group harmonic analysis remains carried"
  }

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse