import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure DegradationKineticsPackage where
  hydrolysisRate : Type u
  enzymaticDegradation : Prop
  phDependence : Prop
  temperatureDependence : Prop
  molecularWeightLoss : Prop
  erosionFront : Prop

structure DegradationKineticsEvidence (D : DegradationKineticsPackage) where
  hydrolysisRateClosed : D.hydrolysisRate
  enzymaticDegradationClosed : D.enzymaticDegradation
  phDependenceClosed : D.phDependence
  temperatureDependenceClosed : D.temperatureDependence
  molecularWeightLossClosed : D.molecularWeightLoss
  erosionFrontClosed : D.erosionFront

def DegradationKineticsClosed (D : DegradationKineticsPackage) : Prop :=
  D.hydrolysisRate ∧ D.enzymaticDegradation ∧ D.phDependence ∧
  D.temperatureDependence ∧ D.molecularWeightLoss ∧ D.erosionFront

theorem degradation_kinetics_closed_from_evidence (D : DegradationKineticsPackage)
    (E : DegradationKineticsEvidence D) : DegradationKineticsClosed D := by
  exact And.intro E.hydrolysisRateClosed
    (And.intro E.enzymaticDegradationClosed
      (And.intro E.phDependenceClosed
        (And.intro E.temperatureDependenceClosed
          (And.intro E.molecularWeightLossClosed E.erosionFrontClosed))))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse