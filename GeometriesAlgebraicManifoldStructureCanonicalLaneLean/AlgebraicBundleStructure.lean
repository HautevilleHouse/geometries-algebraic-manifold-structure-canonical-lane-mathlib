import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure AlgebraicBundlePackage where
  baseManifold : Type u
  fiberType : Type v
  structureGroup : Type w
  transitionFunctions : Type x
  smoothBase : Prop
  smoothFiber : Prop
  bundleProjection : Prop
  localTriviality : Prop
  cocycleCondition : Prop

structure AlgebraicBundleEvidence (B : AlgebraicBundlePackage) where
  smoothBaseClosed : B.smoothBase
  smoothFiberClosed : B.smoothFiber
  bundleProjectionClosed : B.bundleProjection
  localTrivialityClosed : B.localTriviality
  cocycleConditionClosed : B.cocycleCondition

def AlgebraicBundleClosed (B : AlgebraicBundlePackage) : Prop :=
  B.smoothBase ∧ B.smoothFiber ∧ B.bundleProjection ∧ B.localTriviality ∧ B.cocycleCondition

theorem algebraic_bundle_closed_from_evidence (B : AlgebraicBundlePackage) (E : AlgebraicBundleEvidence B) : AlgebraicBundleClosed B := by
  exact And.intro E.smoothBaseClosed (And.intro E.smoothFiberClosed (And.intro E.bundleProjectionClosed (And.intro E.localTrivialityClosed E.cocycleConditionClosed)))

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse