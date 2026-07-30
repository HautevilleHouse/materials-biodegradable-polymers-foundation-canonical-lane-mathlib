import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure ElasticityFracturePackage where
  elasticModulus : Type u
  poissonRatio : Prop
  yieldStress : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  stressStrainRelation : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  elasticModulusClosed : E.elasticModulus
  poissonRatioClosed : E.poissonRatio
  yieldStressClosed : E.yieldStress
  fractureToughnessClosed : E.fractureToughness
  crackPropagationClosed : E.crackPropagation
  stressStrainRelationClosed : E.stressStrainRelation

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.elasticModulus ∧ E.poissonRatio ∧ E.yieldStress ∧
  E.fractureToughness ∧ E.crackPropagation ∧ E.stressStrainRelation

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage)
    (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.elasticModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.yieldStressClosed
        (And.intro Ev.fractureToughnessClosed
          (And.intro Ev.crackPropagationClosed Ev.stressStrainRelationClosed))))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse