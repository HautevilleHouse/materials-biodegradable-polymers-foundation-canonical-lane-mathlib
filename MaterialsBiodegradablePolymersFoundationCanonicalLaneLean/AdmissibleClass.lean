import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BiodegradablePolymerAdmittedObject where
  polymerType : Type u
  molecularWeight : Type v
  degradationHalfLife : Prop
  biocompatibility : Prop
  mechanicalIntegrity : Prop
  conclusion : Prop

structure BiodegradableEndgameState where
  object : BiodegradablePolymerAdmittedObject

def PolymerWitnessClosed (O : BiodegradablePolymerAdmittedObject) : Prop :=
  O.conclusion

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
