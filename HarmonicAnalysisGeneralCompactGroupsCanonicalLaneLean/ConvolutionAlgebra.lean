import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean.CompactGroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure ConvolutionAlgebraPackage {G : CompactGroupPackage} where
  convolutionProduct : (G.carrier → ℝ) → (G.carrier → ℝ) → (G.carrier → ℝ)
  associative : Prop
  identityElement : G.carrier → ℝ
  involutive : Prop
  closedUnderConvolution : Prop
  associativeClosed : associative
  identityElementExists : identityElement
  involutiveClosed : involutive
  closedUnderConvolutionClosed : closedUnderConvolution

structure ConvolutionAlgebraEvidence {G : CompactGroupPackage} (C : ConvolutionAlgebraPackage G) where
  associativeClosed : C.associative
  identityElementClosed : C.identityElement
  involutiveClosed : C.involutive
  closedUnderConvolutionClosed : C.closedUnderConvolution

def ConvolutionAlgebraClosed {G : CompactGroupPackage} (C : ConvolutionAlgebraPackage G) : Prop :=
  C.associative ∧ C.involutive ∧ C.closedUnderConvolution

theorem convolution_algebra_closed_from_evidence {G : CompactGroupPackage} (C : ConvolutionAlgebraPackage G) (E : ConvolutionAlgebraEvidence C) :
    ConvolutionAlgebraClosed C := by
  exact And.intro E.associativeClosed (And.intro E.involutiveClosed E.closedUnderConvolutionClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse