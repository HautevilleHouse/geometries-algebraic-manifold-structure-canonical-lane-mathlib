import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.RepresentationTheorem

/-!
# Structure Decomposition Package
-/

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure StructureDecompositionPackage {M : AlgebraicManifoldSpace}
    {S : StructureSheavesPackage M} {U : UniversalPropertyPackage S}
    {R : RepresentationTheoremPackage U} where
  directSummands : Type u
  decompositionMap : Type v
  summandProperties : Prop
  decompositionUnique : Prop

structure StructureDecompositionEvidence {M : AlgebraicManifoldSpace}
    {S : StructureSheavesPackage M} {U : UniversalPropertyPackage S}
    {R : RepresentationTheoremPackage U} (D : StructureDecompositionPackage R) where
  summandPropertiesClosed : D.summandProperties
  decompositionUniqueClosed : D.decompositionUnique

def StructureDecompositionClosed {M : AlgebraicManifoldSpace}
    {S : StructureSheavesPackage M} {U : UniversalPropertyPackage S}
    {R : RepresentationTheoremPackage U} (D : StructureDecompositionPackage R) : Prop :=
  D.summandProperties ∧ D.decompositionUnique

theorem structure_decomposition_closed_from_evidence {M : AlgebraicManifoldSpace}
    {S : StructureSheavesPackage M} {U : UniversalPropertyPackage S}
    {R : RepresentationTheoremPackage U} (D : StructureDecompositionPackage R)
    (E : StructureDecompositionEvidence D) : StructureDecompositionClosed D := by
  exact And.intro E.summandPropertiesClosed E.decompositionUniqueClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse