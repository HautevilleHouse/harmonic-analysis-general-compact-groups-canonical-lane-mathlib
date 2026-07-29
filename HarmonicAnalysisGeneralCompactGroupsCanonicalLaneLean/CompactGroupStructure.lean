import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure CompactGroupPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  hausdorff : Prop
  compact : Prop
  topologicalGroup : TopologicalGroup carrier
  compactnessClosed : compact
  hausdorffClosed : hausdorff

structure CompactGroupEvidence (G : CompactGroupPackage) where
  hausdorffClosed : G.hausdorff
  compactClosed : G.compact
  topologicalGroupClosed : G.topologicalGroup

def CompactGroupClosed (G : CompactGroupPackage) : Prop :=
  G.hausdorff ∧ G.compact

theorem compact_group_closed_from_evidence (G : CompactGroupPackage) (E : CompactGroupEvidence G) :
    CompactGroupClosed G := by
  exact And.intro E.hausdorffClosed E.compactClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse