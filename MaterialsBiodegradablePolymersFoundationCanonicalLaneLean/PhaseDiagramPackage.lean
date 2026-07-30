import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionSpace : Type v
  phaseBoundaries : Prop
  meltingTransition : Prop
  glassTransition : Prop
  equilibriumPhaseDiagram : Prop

def PhaseDiagramPackageClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.meltingTransition ∧ P.glassTransition ∧ P.equilibriumPhaseDiagram

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  meltingTransitionClosed : P.meltingTransition
  glassTransitionClosed : P.glassTransition
  equilibriumPhaseDiagramClosed : P.equilibriumPhaseDiagram

theorem phase_diagram_package_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramPackageClosed P :=
  And.intro E.phaseBoundariesClosed
    (And.intro E.meltingTransitionClosed
      (And.intro E.glassTransitionClosed E.equilibriumPhaseDiagramClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
