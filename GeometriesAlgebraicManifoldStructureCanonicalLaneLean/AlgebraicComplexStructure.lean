import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Varieties
import Mathlib.Geometry.Manifold.Complex

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AlgebraicComplexStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructureSheaf : Type v
  smoothCharts : Type w
  transitionMapsHolomorphic : Prop
  complexDimension : Nat
  hausdorffSecondCountable : Prop
  transitionMapsHolomorphicTerm : transitionMapsHolomorphic
  hausdorffSecondCountableTerm : hausdorffSecondCountable

structure AlgebraicComplexEvidence (A : AlgebraicComplexStructure) where
  transitionMapsHolomorphicClosed : A.transitionMapsHolomorphic
  hausdorffSecondCountableClosed : A.hausdorffSecondCountable

def AlgebraicComplexClosed (A : AlgebraicComplexStructure) : Prop :=
  A.transitionMapsHolomorphic ∧ A.hausdorffSecondCountable

theorem algebraic_complex_closed_from_evidence (A : AlgebraicComplexStructure)
    (E : AlgebraicComplexEvidence A) : AlgebraicComplexClosed A := by
  exact And.intro E.transitionMapsHolomorphicClosed E.hausdorffSecondCountableClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse