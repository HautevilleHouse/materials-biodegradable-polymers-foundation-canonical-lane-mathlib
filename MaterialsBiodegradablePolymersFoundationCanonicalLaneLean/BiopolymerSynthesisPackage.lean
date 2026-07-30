import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure BiopolymerSynthesisPackage where
  polymerizationCatalyst : Prop
  monomerConversion : Prop
  polymerArchitecture : Prop
  molecularWeightDistribution : Prop

structure BiopolymerSynthesisEvidence (B : BiopolymerSynthesisPackage) where
  polymerizationCatalystClosed : B.polymerizationCatalyst
  monomerConversionClosed : B.monomerConversion
  polymerArchitectureClosed : B.polymerArchitecture
  molecularWeightDistributionClosed : B.molecularWeightDistribution

def BiopolymerSynthesisClosed (B : BiopolymerSynthesisPackage) : Prop :=
  B.polymerizationCatalyst ∧ B.monomerConversion ∧ B.polymerArchitecture ∧ B.molecularWeightDistribution

theorem biopolymer_synthesis_closed_from_evidence (B : BiopolymerSynthesisPackage) (E : BiopolymerSynthesisEvidence B) :
    BiopolymerSynthesisClosed B := by
  exact And.intro E.polymerizationCatalystClosed (And.intro E.monomerConversionClosed (And.intro E.polymerArchitectureClosed E.molecularWeightDistributionClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse