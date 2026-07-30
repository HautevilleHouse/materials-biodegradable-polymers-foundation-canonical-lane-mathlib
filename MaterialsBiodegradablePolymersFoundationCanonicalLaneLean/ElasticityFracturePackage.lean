import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure ElasticityFracturePackage where
  elasticModulus : Type u
  fractureToughness : Type v
  stressStrainRelation : Prop
  crackPropagation : Prop
  degradationRate : Prop

def ElasticityFracturePackageClosed (E : ElasticityFracturePackage) : Prop :=
  E.stressStrainRelation ∧ E.crackPropagation ∧ E.degradationRate

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  crackPropagationClosed : E.crackPropagation
  degradationRateClosed : E.degradationRate

theorem elasticity_fracture_package_closed_from_evidence (E : ElasticityFracturePackage)
    (Ev : ElasticityFractureEvidence E) : ElasticityFracturePackageClosed E :=
  And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.crackPropagationClosed Ev.degradationRateClosed)

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
