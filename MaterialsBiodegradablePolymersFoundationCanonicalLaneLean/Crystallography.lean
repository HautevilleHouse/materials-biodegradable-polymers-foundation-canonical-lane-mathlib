import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure CrystallographyPackage where
  unitCellGeometry : Prop
  polymerUnitCell : Prop
  crystalSystemType : Prop
  xrdPatternIndexed : Prop
  braggPeaksMeasured : Prop
  unitCellGeometryClosed : unitCellGeometry
  polymerUnitCellClosed : polymerUnitCell
  crystalSystemTypeClosed : crystalSystemType
  xrdPatternIndexedClosed : xrdPatternIndexed
  braggPeaksMeasuredClosed : braggPeaksMeasured

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellGeometryClosed : C.unitCellGeometry
  polymerUnitCellClosed : C.polymerUnitCell
  crystalSystemTypeClosed : C.crystalSystemType
  xrdPatternIndexedClosed : C.xrdPatternIndexed
  braggPeaksMeasuredClosed : C.braggPeaksMeasured

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellGeometry ∧ C.polymerUnitCell ∧ C.crystalSystemType ∧ C.xrdPatternIndexed ∧ C.braggPeaksMeasured

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.unitCellGeometryClosed
    (And.intro E.polymerUnitCellClosed
      (And.intro E.crystalSystemTypeClosed
        (And.intro E.xrdPatternIndexedClosed E.braggPeaksMeasuredClosed)))

end HautevilleHouse.MaterialsBiodegradablePolymersFoundationCanonicalLaneLean