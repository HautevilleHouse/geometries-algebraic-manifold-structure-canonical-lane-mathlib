import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AlgebraicManifoldPackage where
  underlyingSpace : Type u
  structureSheaf : Type v
  atlas : Type w
  smoothCompatibility : Prop
  sheafProperties : Prop
  dimension : Nat
  smoothCompatibilityTerm : smoothCompatibility
  sheafPropertiesTerm : sheafProperties

structure AlgebraicManifoldEvidence (M : AlgebraicManifoldPackage) where
  smoothCompatibilityClosed : M.smoothCompatibility
  sheafPropertiesClosed : M.sheafProperties

def AlgebraicManifoldClosed (M : AlgebraicManifoldPackage) : Prop :=
  M.smoothCompatibility ∧ M.sheafProperties

theorem algebraic_manifold_closed_from_evidence (M : AlgebraicManifoldPackage) (E : AlgebraicManifoldEvidence M) :
    AlgebraicManifoldClosed M := by
  exact And.intro E.smoothCompatibilityClosed E.sheafPropertiesClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse