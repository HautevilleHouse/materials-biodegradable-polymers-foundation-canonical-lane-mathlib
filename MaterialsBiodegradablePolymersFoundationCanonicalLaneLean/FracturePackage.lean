import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure FracturePackage where
  fractureToughness : Prop
  crackPropagation : Prop
  fatigueLife : Prop
  crazingMechanism : Prop

structure FractureEvidence (F : FracturePackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  fatigueLifeClosed : F.fatigueLife
  crazingMechanismClosed : F.crazingMechanism

def FractureClosed (F : FracturePackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧ F.fatigueLife ∧ F.crazingMechanism

theorem fracture_closed_from_evidence (F : FracturePackage) (Ev : FractureEvidence F) :
    FractureClosed F := by
  exact And.intro Ev.fractureToughnessClosed (And.intro Ev.crackPropagationClosed (And.intro Ev.fatigueLifeClosed Ev.crazingMechanismClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse