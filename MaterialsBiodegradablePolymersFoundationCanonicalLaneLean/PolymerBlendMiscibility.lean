import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure PolymerBlendMiscibilityPackage where
  floryHugginsParameter : Prop
  phaseSeparationTemperature : Prop
  compatibleBlendCondition : Prop
  interfacialTension : Prop

structure PolymerBlendMiscibilityEvidence (P : PolymerBlendMiscibilityPackage) where
  floryHugginsParameterClosed : P.floryHugginsParameter
  phaseSeparationTemperatureClosed : P.phaseSeparationTemperature
  compatibleBlendConditionClosed : P.compatibleBlendCondition
  interfacialTensionClosed : P.interfacialTension

def PolymerBlendMiscibilityClosed (P : PolymerBlendMiscibilityPackage) : Prop :=
  P.floryHugginsParameter ∧ P.phaseSeparationTemperature ∧
  P.compatibleBlendCondition ∧ P.interfacialTension

theorem polymer_blend_miscibility_closed_from_evidence
    (P : PolymerBlendMiscibilityPackage) (Ev : PolymerBlendMiscibilityEvidence P) :
    PolymerBlendMiscibilityClosed P := by
  exact And.intro Ev.floryHugginsParameterClosed
    (And.intro Ev.phaseSeparationTemperatureClosed
      (And.intro Ev.compatibleBlendConditionClosed Ev.interfacialTensionClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
