import Mathlib

namespace HautevilleHouse
namespace HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean

structure HarmonicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HarmonicAdmittedObject where
  space : HarmonicSpace
  compactGroup : Prop
  unitaryRepresentation : Prop
  fourierInversion : Prop
  conclusion : fourierInversion

def HarmonicWitnessClosed (O : HarmonicAdmittedObject) : Prop :=
  O.fourierInversion

end HarmonicAnalysisGeneralCompactGroupsCanonicalLaneLean
end HautevilleHouse