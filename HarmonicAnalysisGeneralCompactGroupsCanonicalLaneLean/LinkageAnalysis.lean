import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerPairs : Type u
  recombinationFractions : Type v
  lodScores : Type w
  significantLinkage : Prop
  geneticDistance : Type x

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  significantLinkageClosed : L.significantLinkage

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.significantLinkage

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact E.significantLinkageClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
