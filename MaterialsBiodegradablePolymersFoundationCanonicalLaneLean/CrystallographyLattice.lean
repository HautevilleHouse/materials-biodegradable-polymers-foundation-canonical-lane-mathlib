import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure CrystallographyLatticePackage where
  unitCell : Type u
  bravaisLattice : Type v
  latticeParameters : Prop
  atomPositions : Prop
  spaceGroup : Prop

structure CrystallographyLatticeEvidence (C : CrystallographyLatticePackage) where
  latticeParametersClosed : C.latticeParameters
  atomPositionsClosed : C.atomPositions
  spaceGroupClosed : C.spaceGroup

def CrystallographyLatticeClosed (C : CrystallographyLatticePackage) : Prop :=
  C.latticeParameters ∧ C.atomPositions ∧ C.spaceGroup

theorem crystallography_lattice_closed_from_evidence (C : CrystallographyLatticePackage)
    (E : CrystallographyLatticeEvidence C) : CrystallographyLatticeClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.atomPositionsClosed E.spaceGroupClosed)

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse