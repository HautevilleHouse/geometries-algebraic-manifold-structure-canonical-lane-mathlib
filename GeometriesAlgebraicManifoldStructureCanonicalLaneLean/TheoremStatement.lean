import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AdmittedObject where
  carrier : Type
  algebraicStructure : Prop
  conclusion : AlgebraicManifoldWitnessClosed this

def AlgebraicManifoldWitnessClosed (O : AdmittedObject) : Prop :=
  O.algebraicStructure

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse