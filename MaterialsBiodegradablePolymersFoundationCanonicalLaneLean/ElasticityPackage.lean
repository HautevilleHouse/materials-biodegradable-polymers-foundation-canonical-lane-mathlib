import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  viscoelasticParameters : Prop
  stressStrainRelation : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  viscoelasticParametersClosed : E.viscoelasticParameters
  stressStrainRelationClosed : E.stressStrainRelation

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧
  E.shearModulus ∧ E.viscoelasticParameters ∧ E.stressStrainRelation

theorem elasticity_closed_from_evidence
    (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.shearModulusClosed
        (And.intro Ev.viscoelasticParametersClosed
          Ev.stressStrainRelationClosed)))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse