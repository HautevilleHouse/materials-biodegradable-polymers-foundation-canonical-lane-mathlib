import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PolymerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
