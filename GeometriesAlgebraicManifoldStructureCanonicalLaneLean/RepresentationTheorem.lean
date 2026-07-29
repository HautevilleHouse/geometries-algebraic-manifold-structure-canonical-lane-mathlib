import canonicalLaneMathlib.AdmissibleClass
import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.AlgebraicManifoldFoundation

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure RepresentationTheoremPackage {M : AlgebraicManifoldPackage} (E : AlgebraicManifoldEvidence M) where
  representationSpace : Type u
  representationMap : Type v
  injectivity : Prop
  surjectivity : Prop
  compatibilityWithStructure : Prop
  injectivityClosed : injectivity
  surjectivityClosed : surjectivity
  compatibilityWithStructureClosed : compatibilityWithStructure

def RepresentationTheoremClosed {M : AlgebraicManifoldPackage} {E : AlgebraicManifoldEvidence M} (R : RepresentationTheoremPackage E) : Prop :=
  R.injectivity ∧ R.surjectivity ∧ R.compatibilityWithStructure

theorem representation_theorem_closed_from_evidence
    {M : AlgebraicManifoldPackage} {E : AlgebraicManifoldEvidence M} (R : RepresentationTheoremPackage E) :
    RepresentationTheoremClosed R := by
  exact And.intro R.injectivityClosed (And.intro R.surjectivityClosed R.compatibilityWithStructureClosed)

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse