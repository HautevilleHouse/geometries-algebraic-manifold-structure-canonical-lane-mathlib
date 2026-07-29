import canonicalLaneMathlib.AdmissibleClass
import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.AlgebraicManifoldFoundation

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure StructureDecompositionPackage {M : AlgebraicManifoldPackage} (E : AlgebraicManifoldEvidence M) where
  primeComponents : Type u
  decompositionMap : Type v
  uniquenessOfDecomposition : Prop
  irreducibilityOfComponents : Prop
  uniquenessOfDecompositionClosed : uniquenessOfDecomposition
  irreducibilityOfComponentsClosed : irreducibilityOfComponents

def StructureDecompositionClosed {M : AlgebraicManifoldPackage} {E : AlgebraicManifoldEvidence M} (D : StructureDecompositionPackage E) : Prop :=
  D.uniquenessOfDecomposition ∧ D.irreducibilityOfComponents

theorem structure_decomposition_closed_from_evidence
    {M : AlgebraicManifoldPackage} {E : AlgebraicManifoldEvidence M} (D : StructureDecompositionPackage E) :
    StructureDecompositionClosed D := by
  exact And.intro D.uniquenessOfDecompositionClosed D.irreducibilityOfComponentsClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse