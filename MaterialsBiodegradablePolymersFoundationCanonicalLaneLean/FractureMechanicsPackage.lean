import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : Prop
  crackPropagation : Prop
  fatigueResistance : Prop
  failureMechanism : Prop
  environmentalStressCracking : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  fatigueResistanceClosed : F.fatigueResistance
  failureMechanismClosed : F.failureMechanism
  environmentalStressCrackingClosed : F.environmentalStressCracking

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧
  F.fatigueResistance ∧ F.failureMechanism ∧ F.environmentalStressCracking

theorem fracture_mechanics_closed_from_evidence
    (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.crackPropagationClosed
      (And.intro E.fatigueResistanceClosed
        (And.intro E.failureMechanismClosed
          E.environmentalStressCrackingClosed)))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse