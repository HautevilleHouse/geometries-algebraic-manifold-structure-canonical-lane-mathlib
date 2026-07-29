import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure TorelliTheoremPackage where
  complexManifold : Type u
  periodMap : Type v
  injectivityPeriodMap : Prop
  hodgeDecomposition : Prop
  intermediateJacobian : Prop
  algebraicCycleMap : Prop

structure TorelliTheoremEvidence (T : TorelliTheoremPackage) where
  injectivityClosed : T.injectivityPeriodMap
  hodgeClosed : T.hodgeDecomposition
  jacobianClosed : T.intermediateJacobian
  cycleMapClosed : T.algebraicCycleMap

def TorelliTheoremClosed (T : TorelliTheoremPackage) : Prop :=
  T.injectivityPeriodMap ∧ T.hodgeDecomposition ∧ T.intermediateJacobian ∧ T.algebraicCycleMap

theorem torelli_theorem_closed_from_evidence (T : TorelliTheoremPackage) (E : TorelliTheoremEvidence T) : TorelliTheoremClosed T := by
  exact And.intro E.injectivityClosed (And.intro E.hodgeClosed (And.intro E.jacobianClosed E.cycleMapClosed))

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse