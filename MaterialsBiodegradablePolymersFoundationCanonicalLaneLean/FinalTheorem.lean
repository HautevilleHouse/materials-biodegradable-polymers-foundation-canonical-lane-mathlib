import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

def ConstrainedBiodegradablePolymerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biodegradable_polymer_endgame (A : AdmissibleClass) :
    ConstrainedBiodegradablePolymerClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
