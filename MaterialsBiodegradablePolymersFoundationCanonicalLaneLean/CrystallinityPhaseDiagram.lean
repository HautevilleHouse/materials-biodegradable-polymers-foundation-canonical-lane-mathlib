import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure CrystallinityPhaseDiagramPackage where
  meltingTemperature : Prop
  glassTransitionTemperature : Prop
  crystallizationKinetics : Prop
  equilibriumPhaseBoundaries : Prop

structure CrystallinityPhaseDiagramEvidence (C : CrystallinityPhaseDiagramPackage) where
  meltingTemperatureClosed : C.meltingTemperature
  glassTransitionTemperatureClosed : C.glassTransitionTemperature
  crystallizationKineticsClosed : C.crystallizationKinetics
  equilibriumPhaseBoundariesClosed : C.equilibriumPhaseBoundaries

def CrystallinityPhaseDiagramClosed (C : CrystallinityPhaseDiagramPackage) : Prop :=
  C.meltingTemperature ∧ C.glassTransitionTemperature ∧
  C.crystallizationKinetics ∧ C.equilibriumPhaseBoundaries

theorem crystallinity_phase_diagram_closed_from_evidence
    (C : CrystallinityPhaseDiagramPackage) (E : CrystallinityPhaseDiagramEvidence C) :
    CrystallinityPhaseDiagramClosed C := by
  exact And.intro E.meltingTemperatureClosed
    (And.intro E.glassTransitionTemperatureClosed
      (And.intro E.crystallizationKineticsClosed E.equilibriumPhaseBoundariesClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
