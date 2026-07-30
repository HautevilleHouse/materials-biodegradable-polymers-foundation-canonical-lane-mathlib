import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  compositionDomain : Prop
  meltingPointCrystalline : Prop
  glassTransitionTemperature : Prop
  phaseBoundaryMeasured : Prop
  temperatureRangeClosed : temperatureRange
  compositionDomainClosed : compositionDomain
  meltingPointCrystallineClosed : meltingPointCrystalline
  glassTransitionTemperatureClosed : glassTransitionTemperature
  phaseBoundaryMeasuredClosed : phaseBoundaryMeasured

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionDomainClosed : P.compositionDomain
  meltingPointCrystallineClosed : P.meltingPointCrystalline
  glassTransitionTemperatureClosed : P.glassTransitionTemperature
  phaseBoundaryMeasuredClosed : P.phaseBoundaryMeasured

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.compositionDomain ∧ P.meltingPointCrystalline ∧ P.glassTransitionTemperature ∧ P.phaseBoundaryMeasured

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.compositionDomainClosed
      (And.intro E.meltingPointCrystallineClosed
        (And.intro E.glassTransitionTemperatureClosed E.phaseBoundaryMeasuredClosed)))

end HautevilleHouse.MaterialsBiodegradablePolymersFoundationCanonicalLaneLean