import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.VectorBundle
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure VectorBundleStructure where
  baseManifold : Type u
  baseTopology : TopologicalSpace baseManifold
  fiberType : Type v
  projectionMap : (baseManifold × fiberType) → baseManifold
  localTrivializations : Type w
  transitionFunctionsSmooth : Prop
  fiberRank : Nat
  transitionFunctionsSmoothTerm : transitionFunctionsSmooth

structure VectorBundleEvidence (V : VectorBundleStructure) where
  transitionFunctionsSmoothClosed : V.transitionFunctionsSmooth

def VectorBundleClosed (V : VectorBundleStructure) : Prop :=
  V.transitionFunctionsSmooth

theorem vector_bundle_closed_from_evidence (V : VectorBundleStructure)
    (E : VectorBundleEvidence V) : VectorBundleClosed V := by
  exact E.transitionFunctionsSmoothClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse