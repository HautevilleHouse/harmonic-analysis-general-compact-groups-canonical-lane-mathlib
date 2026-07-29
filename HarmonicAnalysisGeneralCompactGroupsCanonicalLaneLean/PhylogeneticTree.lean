import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure PhylogeneticTreePackage where
  sequences : Type u
  treeStructure : Type v
  evolutionaryModel : Type w
  likelihood : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  likelihoodClosed : P.likelihood
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.likelihood ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.likelihoodClosed E.bootstrapSupportClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse
