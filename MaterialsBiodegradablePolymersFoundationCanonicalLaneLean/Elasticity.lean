import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Prop
  poissonRatio : Prop
  stressStrainCurve : Prop
  viscoelasticResponse : Prop
  timeDependentModulus : Prop
  youngModulusClosed : youngModulus
  poissonRatioClosed : poissonRatio
  stressStrainCurveClosed : stressStrainCurve
  viscoelasticResponseClosed : viscoelasticResponse
  timeDependentModulusClosed : timeDependentModulus

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  stressStrainCurveClosed : E.stressStrainCurve
  viscoelasticResponseClosed : E.viscoelasticResponse
  timeDependentModulusClosed : E.timeDependentModulus

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.stressStrainCurve ∧ E.viscoelasticResponse ∧ E.timeDependentModulus

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.stressStrainCurveClosed
        (And.intro Ev.viscoelasticResponseClosed Ev.timeDependentModulusClosed)))

end HautevilleHouse.MaterialsBiodegradablePolymersFoundationCanonicalLaneLean