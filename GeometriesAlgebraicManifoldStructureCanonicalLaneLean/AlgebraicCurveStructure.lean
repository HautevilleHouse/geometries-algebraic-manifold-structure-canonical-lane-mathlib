import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AlgebraicCurvePackage where
  curve : Type u
  genus : Nat
  coordinateRing : Type v
  functionField : Type w
  smoothness : Prop
  projectiveEmbedding : Prop
  canonicalBundle : Type x

structure AlgebraicCurveEvidence (C : AlgebraicCurvePackage) where
  smoothnessClosed : C.smoothness
  projectiveEmbeddingClosed : C.projectiveEmbedding
  canonicBundleDefined : C.canonicalBundle = C.canonicalBundle

def AlgebraicCurveClosed (C : AlgebraicCurvePackage) : Prop :=
  C.smoothness ∧ C.projectiveEmbedding

theorem algebraic_curve_closed_from_evidence (C : AlgebraicCurvePackage) (E : AlgebraicCurveEvidence C) :
  AlgebraicCurveClosed C := by
  exact And.intro E.smoothnessClosed E.projectiveEmbeddingClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse