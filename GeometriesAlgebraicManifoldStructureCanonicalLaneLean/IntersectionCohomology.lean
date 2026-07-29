import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure IntersectionCohomologyPackage {X : Type u} [TopologicalSpace X] where
  perverseSheaf : Type v
  intersectionComplex : Prop
  poincareDuality : Prop
  kunnethFormula : Prop
  hardLefschetz : Prop

structure IntersectionCohomologyEvidence {X : Type u} [TopologicalSpace X]
  (IC : IntersectionCohomologyPackage X) where
  intersectionComplexClosed : IC.intersectionComplex
  poincareDualityClosed : IC.poincareDuality
  kunnethFormulaClosed : IC.kunnethFormula
  hardLefschetzClosed : IC.hardLefschetz

def IntersectionCohomologyClosed {X : Type u} [TopologicalSpace X]
  (IC : IntersectionCohomologyPackage X) : Prop :=
  IC.intersectionComplex ∧ IC.poincareDuality ∧ IC.kunnethFormula ∧ IC.hardLefschetz

theorem intersection_cohomology_closed_from_evidence {X : Type u} [TopologicalSpace X]
  (IC : IntersectionCohomologyPackage X) (E : IntersectionCohomologyEvidence IC) :
  IntersectionCohomologyClosed IC := by
  exact And.intro E.intersectionComplexClosed (And.intro E.poincareDualityClosed (And.intro E.kunnethFormulaClosed E.hardLefschetzClosed))

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse