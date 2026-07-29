import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure ModuliSpacePackage {X : Type u} [TopologicalSpace X] where
  family : Type v → Type w
  base : Type x
  fibersAreAlgebraic : Prop
  flatness : Prop
  versalDeformation : Prop
  stabilityCondition : Prop

structure ModuliSpaceEvidence {X : Type u} [TopologicalSpace X] (M : ModuliSpacePackage X) where
  fibersAreAlgebraicClosed : M.fibersAreAlgebraic
  flatnessClosed : M.flatness
  versalDeformationClosed : M.versalDeformation
  stabilityConditionClosed : M.stabilityCondition

def ModuliSpaceClosed {X : Type u} [TopologicalSpace X] (M : ModuliSpacePackage X) : Prop :=
  M.fibersAreAlgebraic ∧ M.flatness ∧ M.versalDeformation ∧ M.stabilityCondition

theorem moduli_space_closed_from_evidence {X : Type u} [TopologicalSpace X]
  (M : ModuliSpacePackage X) (E : ModuliSpaceEvidence M) : ModuliSpaceClosed M := by
  exact And.intro E.fibersAreAlgebraicClosed (And.intro E.flatnessClosed (And.intro E.versalDeformationClosed E.stabilityConditionClosed))

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse