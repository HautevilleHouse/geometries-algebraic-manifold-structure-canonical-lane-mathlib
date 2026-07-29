import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AlgebraicManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  sheafOfRings : Type

structure AlgebraicManifoldAdmittedObject where
  space : AlgebraicManifoldSpace
  smoothProjectiveVariety : Prop
  universalPropertySatisfied : Prop
  representationTheorem : Prop
  structureDecomposition : Prop
  conclusion : smoothProjectiveVariety ∧ universalPropertySatisfied ∧ representationTheorem ∧ structureDecomposition

def AlgebraicManifoldWitnessClosed (O : AlgebraicManifoldAdmittedObject) : Prop :=
  O.conclusion

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse