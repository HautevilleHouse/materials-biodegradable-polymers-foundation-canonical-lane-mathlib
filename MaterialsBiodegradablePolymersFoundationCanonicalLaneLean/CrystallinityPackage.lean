import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure CrystallinityPackage where
  degreeOfCrystallinity : Prop
  lamellarThickness : Prop
  spheruliteRadius : Prop
  meltingTemperature : Prop

structure CrystallinityEvidence (C : CrystallinityPackage) where
  degreeOfCrystallinityClosed : C.degreeOfCrystallinity
  lamellarThicknessClosed : C.lamellarThickness
  spheruliteRadiusClosed : C.spheruliteRadius
  meltingTemperatureClosed : C.meltingTemperature

def CrystallinityClosed (C : CrystallinityPackage) : Prop :=
  C.degreeOfCrystallinity ∧ C.lamellarThickness ∧ C.spheruliteRadius ∧ C.meltingTemperature

theorem crystallinity_closed_from_evidence (C : CrystallinityPackage) (E : CrystallinityEvidence C) :
    CrystallinityClosed C := by
  exact And.intro E.degreeOfCrystallinityClosed (And.intro E.lamellarThicknessClosed (And.intro E.spheruliteRadiusClosed E.meltingTemperatureClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse