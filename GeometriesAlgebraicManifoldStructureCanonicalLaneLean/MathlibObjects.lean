import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AlgebraicManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AlgebraicManifoldAdmittedObject where
  space : AlgebraicManifoldSpace
  smoothManifold : Prop
  algebraicStructure : Prop
  universalProperty : Prop
  conclusion : universalProperty

structure AlgebraicManifoldEndgameState where
  object : AlgebraicManifoldAdmittedObject

def AlgebraicManifoldWitnessClosed (O : AlgebraicManifoldAdmittedObject) : Prop :=
  O.universalProperty

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse