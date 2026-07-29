import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure WeightedHardyWeinbergBridgePackage (H : HaarMeasureExistencePackage) (P : PeterWeylTheoremPackage)
    (F : FourierTransformPackage H P) (C : ConvolutionAlgebraPackage H P) where
  groupActionOnPopulation : Type u
  alleleFrequencyFunction : Type v
  equilibriumDistribution : Prop
  closednessUnderConvolution : Prop
  spectralGapBound : Prop

structure WeightedHardyWeinbergBridgeEvidence {H : HaarMeasureExistencePackage} {P : PeterWeylTheoremPackage}
    {F : FourierTransformPackage H P} {C : ConvolutionAlgebraPackage H P}
    (W : WeightedHardyWeinbergBridgePackage H P F C) where
  equilibriumDistributionClosed : W.equilibriumDistribution
  closednessUnderConvolutionClosed : W.closednessUnderConvolution
  spectralGapBoundClosed : W.spectralGapBound

def WeightedHardyWeinbergBridgeClosed {H : HaarMeasureExistencePackage} {P : PeterWeylTheoremPackage}
    {F : FourierTransformPackage H P} {C : ConvolutionAlgebraPackage H P}
    (W : WeightedHardyWeinbergBridgePackage H P F C) : Prop :=
  W.equilibriumDistribution ∧ W.closednessUnderConvolution ∧ W.spectralGapBound

theorem weighted_hardy_weinberg_bridge_closed_from_evidence
    {H : HaarMeasureExistencePackage} {P : PeterWeylTheoremPackage}
    {F : FourierTransformPackage H P} {C : ConvolutionAlgebraPackage H P}
    (W : WeightedHardyWeinbergBridgePackage H P F C)
    (E : WeightedHardyWeinbergBridgeEvidence W) :
    WeightedHardyWeinbergBridgeClosed W := by
  exact And.intro E.equilibriumDistributionClosed
    (And.intro E.closednessUnderConvolutionClosed E.spectralGapBoundClosed)

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse