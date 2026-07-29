import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicManifoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse