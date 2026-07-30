import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure CrystallographyPackage where
  unitCellType : Type u
  spaceGroup : Type v
  latticeParameters : Type w
  degreeOfCrystallinity : Prop
  polymorphIdentification : Prop
  crystalDefectDensity : Prop

def CrystallographyPackageClosed (C : CrystallographyPackage) : Prop :=
  C.degreeOfCrystallinity ∧ C.polymorphIdentification ∧ C.crystalDefectDensity

structure CrystallographyEvidence (C : CrystallographyPackage) where
  degreeOfCrystallinityClosed : C.degreeOfCrystallinity
  polymorphIdentificationClosed : C.polymorphIdentification
  crystalDefectDensityClosed : C.crystalDefectDensity

theorem crystallography_package_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyPackageClosed C :=
  And.intro E.degreeOfCrystallinityClosed
    (And.intro E.polymorphIdentificationClosed E.crystalDefectDensityClosed)

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
