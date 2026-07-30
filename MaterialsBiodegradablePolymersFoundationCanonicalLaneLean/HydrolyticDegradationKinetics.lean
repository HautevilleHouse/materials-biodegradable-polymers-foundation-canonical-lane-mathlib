import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure HydrolyticDegradationKineticsPackage where
  hydrolysisRateConstant : Prop
  autocatalyticEffect : Prop
  molecularWeightEvolution : Prop
  massLossProfile : Prop

structure HydrolyticDegradationKineticsEvidence (H : HydrolyticDegradationKineticsPackage) where
  hydrolysisRateConstantClosed : H.hydrolysisRateConstant
  autocatalyticEffectClosed : H.autocatalyticEffect
  molecularWeightEvolutionClosed : H.molecularWeightEvolution
  massLossProfileClosed : H.massLossProfile

def HydrolyticDegradationKineticsClosed (H : HydrolyticDegradationKineticsPackage) : Prop :=
  H.hydrolysisRateConstant ∧ H.autocatalyticEffect ∧
  H.molecularWeightEvolution ∧ H.massLossProfile

theorem hydrolytic_degradation_kinetics_closed_from_evidence
    (H : HydrolyticDegradationKineticsPackage) (Ev : HydrolyticDegradationKineticsEvidence H) :
    HydrolyticDegradationKineticsClosed H := by
  exact And.intro Ev.hydrolysisRateConstantClosed
    (And.intro Ev.autocatalyticEffectClosed
      (And.intro Ev.molecularWeightEvolutionClosed Ev.massLossProfileClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
