import HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.HarmonicAnalysisFoundation

/-!
# Compact Group Representations Package
-/

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure CompactGroupRepresentationsPackage where
  group : Type u
  topology : TopologicalSpace group
  compact : Prop
  hausdorff : Prop
  groupOperations : Group group
  irreducibleRepresentations : Type v
  schurOrthogonality : Prop
  peterWeylTheorem : Prop
  characterTheory : Prop
  compactTerm : compact
  hausdorffTerm : hausdorff
  schurOrthogonalityTerm : schurOrthogonality
  peterWeylTheoremTerm : peterWeylTheorem
  characterTheoryTerm : characterTheory

structure CompactGroupRepresentationsEvidence (R : CompactGroupRepresentationsPackage) where
  compactClosed : R.compact
  hausdorffClosed : R.hausdorff
  schurOrthogonalityClosed : R.schurOrthogonality
  peterWeylTheoremClosed : R.peterWeylTheorem
  characterTheoryClosed : R.characterTheory

def CompactGroupRepresentationsClosed (R : CompactGroupRepresentationsPackage) : Prop :=
  R.compact ∧ R.hausdorff ∧ R.schurOrthogonality ∧ R.peterWeylTheorem ∧ R.characterTheory

theorem compact_group_representations_closed_from_evidence
    (R : CompactGroupRepresentationsPackage) (E : CompactGroupRepresentationsEvidence R) :
    CompactGroupRepresentationsClosed R := by
  exact And.intro E.compactClosed (And.intro E.hausdorffClosed (And.intro E.schurOrthogonalityClosed (And.intro E.peterWeylTheoremClosed E.characterTheoryClosed)))

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse