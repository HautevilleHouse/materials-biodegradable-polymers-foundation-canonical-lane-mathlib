import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure DegradationKineticsPackage where
  hydrolysisRate : Prop
  enzymaticDegradation : Prop
  erosionModel : Prop
  molecularWeightLoss : Prop
  degradationProducts : Prop

structure DegradationKineticsEvidence (D : DegradationKineticsPackage) where
  hydrolysisRateClosed : D.hydrolysisRate
  enzymaticDegradationClosed : D.enzymaticDegradation
  erosionModelClosed : D.erosionModel
  molecularWeightLossClosed : D.molecularWeightLoss
  degradationProductsClosed : D.degradationProducts

def DegradationKineticsClosed (D : DegradationKineticsPackage) : Prop :=
  D.hydrolysisRate ∧ D.enzymaticDegradation ∧
  D.erosionModel ∧ D.molecularWeightLoss ∧ D.degradationProducts

theorem degradation_kinetics_closed_from_evidence
    (D : DegradationKineticsPackage) (E : DegradationKineticsEvidence D) :
    DegradationKineticsClosed D := by
  exact And.intro E.hydrolysisRateClosed
    (And.intro E.enzymaticDegradationClosed
      (And.intro E.erosionModelClosed
        (And.intro E.molecularWeightLossClosed
          E.degradationProductsClosed)))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse