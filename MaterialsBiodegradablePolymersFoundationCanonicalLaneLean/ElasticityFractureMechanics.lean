import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure ElasticityFractureMechanicsPackage where
  youngModulus : Prop
  fractureToughness : Prop
  stressStrainCurve : Prop
  crackPropagationCriteria : Prop

structure ElasticityFractureMechanicsEvidence (E : ElasticityFractureMechanicsPackage) where
  youngModulusClosed : E.youngModulus
  fractureToughnessClosed : E.fractureToughness
  stressStrainCurveClosed : E.stressStrainCurve
  crackPropagationCriteriaClosed : E.crackPropagationCriteria

def ElasticityFractureMechanicsClosed (E : ElasticityFractureMechanicsPackage) : Prop :=
  E.youngModulus ∧ E.fractureToughness ∧
  E.stressStrainCurve ∧ E.crackPropagationCriteria

theorem elasticity_fracture_mechanics_closed_from_evidence
    (E : ElasticityFractureMechanicsPackage) (Ev : ElasticityFractureMechanicsEvidence E) :
    ElasticityFractureMechanicsClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.fractureToughnessClosed
      (And.intro Ev.stressStrainCurveClosed Ev.crackPropagationCriteriaClosed))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse
