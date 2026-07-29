import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure HodgeStructurePackage {M : Type u} [TopologicalSpace M] where
  complexManifold : Prop
  kahlerMetric : Prop
  hodgeDecomposition : Prop
  hodgeNumbers : Nat → Nat → Nat
  hodgeDiamond : Prop
  lefschetzOperator : Type v

structure HodgeEvidence {M : Type u} [TopologicalSpace M] (H : HodgeStructurePackage M) where
  complexManifoldClosed : H.complexManifold
  kahlerMetricClosed : H.kahlerMetric
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeDiamondClosed : H.hodgeDiamond

def HodgeStructureClosed {M : Type u} [TopologicalSpace M] (H : HodgeStructurePackage M) : Prop :=
  H.complexManifold ∧ H.kahlerMetric ∧ H.hodgeDecomposition ∧ H.hodgeDiamond

theorem hodge_structure_closed_from_evidence {M : Type u} [TopologicalSpace M]
  (H : HodgeStructurePackage M) (E : HodgeEvidence H) : HodgeStructureClosed H := by
  exact And.intro E.complexManifoldClosed (And.intro E.kahlerMetricClosed (And.intro E.hodgeDecompositionClosed E.hodgeDiamondClosed))

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse