import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AdmissibleClass where
  object : AlgebraicManifoldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraicManifoldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse