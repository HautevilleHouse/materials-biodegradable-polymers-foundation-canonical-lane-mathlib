import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure BioresorptionRateModelPackage where
  enzymaticDegradationRate : Prop
  diffusionControlledRelease : Prop
  erosionFrontVelocity : Prop
  inVivoCorrelationFactor : Prop

structure BioresorptionRateModelEvidence (B : BioresorptionRateModelPackage) where
  enzymaticDegradationRateClosed : B.enzymaticDegradationRate
  diffusionControlledReleaseClosed : B.diffusionControlledRelease
  erosionFrontVelocityClosed : B.erosionFrontVelocity
  inVivoCorrelationFactorClosed : B.inVivoCorrelationFactor

def BioresorptionRateModelClosed (B : BioresorptionRateModelPackage) : Prop :=
  B.enzymaticDegradationRate ∧ B.diffusionControlledRelease ∧
  B.erosionFrontVelocity ∧ B.inVivoCorrelationFactor

theorem bioresorption_rate_model_closed_from_evidence
    (B : BioresorptionRateModelPackage) (Ev : BioresorptionRateModelEvidence B) :
    BioresorptionRateModelClosed B := by
  exact And.intro Ev.enzymaticDegradationRateClosed
    (And.intro Ev.diffusionControlledReleaseClosed
      (And.intro Ev.erosionFrontVelocityClosed Ev.inVivoCorrelationFactorClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
