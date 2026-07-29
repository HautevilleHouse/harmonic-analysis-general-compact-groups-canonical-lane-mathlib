import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure SequenceAlignmentPackage (G : CompactGroup) where
  sequences : List (List (G.carrier))
  alignmentScore : ℕ
  gapPenalty : ℕ
  alignmentOptimal : Prop

structure SequenceAlignmentEvidence (G : CompactGroup) (S : SequenceAlignmentPackage G) where
  alignmentScoreClosed : S.alignmentScore ≥ 0
  alignmentOptimalClosed : S.alignmentOptimal

def SequenceAlignmentClosed (G : CompactGroup) (S : SequenceAlignmentPackage G) : Prop :=
  S.alignmentScore ≥ 0 ∧ S.alignmentOptimal

theorem sequence_alignment_closed_from_evidence (G : CompactGroup) (S : SequenceAlignmentPackage G) (E : SequenceAlignmentEvidence G S) :
    SequenceAlignmentClosed G S := by
  exact And.intro E.alignmentScoreClosed E.alignmentOptimalClosed

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse