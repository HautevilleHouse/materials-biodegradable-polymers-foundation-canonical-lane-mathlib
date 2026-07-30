import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersFoundationCanonicalLaneLean

structure PolymerSynthesisCharacterizationPackage where
  monomerType : Type u
  polymerizationMechanism : Prop
  molecularWeightDistribution : Prop
  thermalProperties : Prop
  chemicalStructure : Prop
  stereochemistry : Prop
  purity : Prop

structure PolymerSynthesisCharacterizationEvidence
    (P : PolymerSynthesisCharacterizationPackage) where
  monomerTypeClosed : P.monomerType
  polymerizationMechanismClosed : P.polymerizationMechanism
  molecularWeightDistributionClosed : P.molecularWeightDistribution
  thermalPropertiesClosed : P.thermalProperties
  chemicalStructureClosed : P.chemicalStructure
  stereochemistryClosed : P.stereochemistry
  purityClosed : P.purity

def PolymerSynthesisCharacterizationClosed
    (P : PolymerSynthesisCharacterizationPackage) : Prop :=
  P.monomerType ∧ P.polymerizationMechanism ∧ P.molecularWeightDistribution ∧
  P.thermalProperties ∧ P.chemicalStructure ∧ P.stereochemistry ∧ P.purity

theorem polymer_synthesis_characterization_closed_from_evidence
    (P : PolymerSynthesisCharacterizationPackage)
    (E : PolymerSynthesisCharacterizationEvidence P) :
    PolymerSynthesisCharacterizationClosed P := by
  exact And.intro E.monomerTypeClosed
    (And.intro E.polymerizationMechanismClosed
      (And.intro E.molecularWeightDistributionClosed
        (And.intro E.thermalPropertiesClosed
          (And.intro E.chemicalStructureClosed
            (And.intro E.stereochemistryClosed E.purityClosed)))))

end MaterialsBiodegradablePolymersFoundationCanonicalLaneLean
end HautevilleHouse