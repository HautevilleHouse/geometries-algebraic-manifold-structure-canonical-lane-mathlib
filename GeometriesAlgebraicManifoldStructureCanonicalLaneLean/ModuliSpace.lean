import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure ModuliSpacePackage where
  familyType : Type u
  baseSpace : Type v
  periodMapping : Type w
  localTorelliTheorem : Prop
  kuranishiMap : Prop
  completeness : Prop

structure ModuliSpaceEvidence (M : ModuliSpacePackage) where
  localTorelliClosed : M.localTorelliTheorem
  kuranishiClosed : M.kuranishiMap
  completenessClosed : M.completeness

def ModuliSpaceClosed (M : ModuliSpacePackage) : Prop :=
  M.localTorelliTheorem ∧ M.kuranishiMap ∧ M.completeness

theorem moduli_space_closed_from_evidence (M : ModuliSpacePackage) (E : ModuliSpaceEvidence M) : ModuliSpaceClosed M := by
  exact And.intro E.localTorelliClosed (And.intro E.kuranishiClosed E.completenessClosed)

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse