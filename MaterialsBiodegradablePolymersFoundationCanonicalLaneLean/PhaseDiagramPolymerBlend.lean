import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  blendComponents : Type u
  temperatureRange : Prop
  compositionRange : Prop
  miscibilityGap : Prop
  glassTransition : Prop
  meltingPoint : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  miscibilityGapClosed : P.miscibilityGap
  glassTransitionClosed : P.glassTransition
  meltingPointClosed : P.meltingPoint

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.miscibilityGap ∧
  P.glassTransition ∧ P.meltingPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.compositionRangeClosed
      (And.intro E.miscibilityGapClosed
        (And.intro E.glassTransitionClosed E.meltingPointClosed)))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse