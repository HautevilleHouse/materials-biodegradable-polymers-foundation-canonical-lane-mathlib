import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : Prop
  crackPropagation : Prop
  crazeFormation : Prop
  environmentalStressCracking : Prop
  degradationFractureCoupling : Prop
  fractureToughnessClosed : fractureToughness
  crackPropagationClosed : crackPropagation
  crazeFormationClosed : crazeFormation
  environmentalStressCrackingClosed : environmentalStressCracking
  degradationFractureCouplingClosed : degradationFractureCoupling

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  crazeFormationClosed : F.crazeFormation
  environmentalStressCrackingClosed : F.environmentalStressCracking
  degradationFractureCouplingClosed : F.degradationFractureCoupling

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧ F.crazeFormation ∧ F.environmentalStressCracking ∧ F.degradationFractureCoupling

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.crackPropagationClosed
      (And.intro E.crazeFormationClosed
        (And.intro E.environmentalStressCrackingClosed E.degradationFractureCouplingClosed)))

end HautevilleHouse.MaterialsBiodegradablePolymersFoundationCanonicalLaneLean