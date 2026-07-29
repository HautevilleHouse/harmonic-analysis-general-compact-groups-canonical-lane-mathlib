import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure PhylogeneticTree (G : CompactGroup) where
  taxa : List (G.carrier)
  treeStructure : Tree (G.carrier)
  branchLengths : List ℝ
  likelihood : ℝ
  treeOptimal : Prop

structure PhylogeneticEvidence (G : CompactGroup) (T : PhylogeneticTree G) where
  likelihoodClosed : T.likelihood ≥ 0
  treeOptimalClosed : T.treeOptimal

def PhylogeneticClosed (G : CompactGroup) (T : PhylogeneticTree G) : Prop :=
  T.likelihood ≥ 0 ∧ T.treeOptimal

theorem phylogenetic_closed_from_evidence (G : CompactGroup) (T : PhylogeneticTree G) (E : PhylogeneticEvidence G T) :
    PhylogeneticClosed G T := by
  exact And.intro E.likelihoodClosed E.treeOptimalClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse