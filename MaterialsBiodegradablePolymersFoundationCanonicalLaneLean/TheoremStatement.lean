import HautevilleHouse.MaterialsBiodegradablePolymersFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure BiodegradablePolymerAdmittedObject where
  polymerType : String
  crystallinity : Float
  degradationRate : Float
  mechanicalStrength : Float
  conclusion : BiodegradablePolymerWitnessClosed this

def BiodegradablePolymerWitnessClosed (O : BiodegradablePolymerAdmittedObject) : Prop :=
  O.degradationRate > 0.0 ∧ O.mechanicalStrength > 0.0

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse