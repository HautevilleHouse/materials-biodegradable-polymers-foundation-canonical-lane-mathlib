import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure BiocompatibilityPackage where
  cytotoxicityTested : Prop
  inflammatoryResponseMeasured : Prop
  hemocompatibilityAssessed : Prop
  bioresorptionProfile : Prop
  toxicityLimitsSatisfied : Prop
  cytotoxicityTestedClosed : cytotoxicityTested
  inflammatoryResponseMeasuredClosed : inflammatoryResponseMeasured
  hemocompatibilityAssessedClosed : hemocompatibilityAssessed
  bioresorptionProfileClosed : bioresorptionProfile
  toxicityLimitsSatisfiedClosed : toxicityLimitsSatisfied

structure BiocompatibilityEvidence (B : BiocompatibilityPackage) where
  cytotoxicityTestedClosed : B.cytotoxicityTested
  inflammatoryResponseMeasuredClosed : B.inflammatoryResponseMeasured
  hemocompatibilityAssessedClosed : B.hemocompatibilityAssessed
  bioresorptionProfileClosed : B.bioresorptionProfile
  toxicityLimitsSatisfiedClosed : B.toxicityLimitsSatisfied

def BiocompatibilityClosed (B : BiocompatibilityPackage) : Prop :=
  B.cytotoxicityTested ∧ B.inflammatoryResponseMeasured ∧ B.hemocompatibilityAssessed ∧ B.bioresorptionProfile ∧ B.toxicityLimitsSatisfied

theorem biocompatibility_closed_from_evidence (B : BiocompatibilityPackage) (E : BiocompatibilityEvidence B) :
    BiocompatibilityClosed B := by
  exact And.intro E.cytotoxicityTestedClosed
    (And.intro E.inflammatoryResponseMeasuredClosed
      (And.intro E.hemocompatibilityAssessedClosed
        (And.intro E.bioresorptionProfileClosed E.toxicityLimitsSatisfiedClosed)))

end HautevilleHouse.MaterialsBiodegradablePolymersFoundationCanonicalLaneLean