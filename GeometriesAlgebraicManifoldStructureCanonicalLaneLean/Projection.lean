import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AlgebraicManifoldEndgameState where
  object : AlgebraicManifoldAdmittedObject

def algebraicManifoldProjection : Projection AlgebraicManifoldEndgameState :=
  { toFun := fun x => x
    idempotent := by intro x; rfl
  }

theorem algebraic_manifold_projection_idempotent (x : AlgebraicManifoldEndgameState) :
    algebraicManifoldProjection.toFun (algebraicManifoldProjection.toFun x) = algebraicManifoldProjection.toFun x := by
  exact algebraicManifoldProjection.idempotent x

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse