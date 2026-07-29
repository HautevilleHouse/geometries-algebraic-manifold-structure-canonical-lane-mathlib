import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure HolonomyGroupPackage where
  connection : Type u
  parallelTransport : Type v
  holonomyRepresentation : Type w
  curvingFlatness : Prop
  ambroiseSingerTheorem : Prop
  holonomyAlgebraicGroup : Prop

structure HolonomyGroupEvidence (H : HolonomyGroupPackage) where
  connectionClosed : True
  parallelTransportClosed : True
  holonomyRepresentationClosed : True
  curvingFlatnessClosed : H.curvingFlatness
  ambroiseSingerClosed : H.ambroiseSingerTheorem
  holonomyAlgebraicGroupClosed : H.holonomyAlgebraicGroup

def HolonomyGroupClosed (H : HolonomyGroupPackage) : Prop :=
  H.curvingFlatness ∧ H.ambroiseSingerTheorem ∧ H.holonomyAlgebraicGroup

theorem holonomy_group_closed_from_evidence (H : HolonomyGroupPackage) (E : HolonomyGroupEvidence H) : HolonomyGroupClosed H := by
  exact And.intro E.curvingFlatnessClosed (And.intro E.ambroiseSingerClosed E.holonomyAlgebraicGroupClosed)

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse