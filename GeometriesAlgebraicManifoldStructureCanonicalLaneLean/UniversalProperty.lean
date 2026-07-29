import canonicalLaneMathlib.AdmissibleClass
import GeometriesAlgebraicManifoldStructureCanonicalLaneLean.AlgebraicManifoldFoundation

namespace HautevilleHouse
namespace GeometriesAlgebraicManifoldStructureCanonicalLaneLean

structure UniversalPropertyPackage {M : AlgebraicManifoldPackage} (C : AlgebraicManifoldEvidence M) where
  targetCategory : Type u
  functorFromSheaves : Type v
  universalMapping : Prop
  uniquenessUpToIsomorphism : Prop
  universalMappingClosed : universalMapping
  uniquenessUpToIsomorphismClosed : uniquenessUpToIsomorphism

def UniversalPropertyClosed {M : AlgebraicManifoldPackage} {C : AlgebraicManifoldEvidence M} (U : UniversalPropertyPackage C) : Prop :=
  U.universalMapping ∧ U.uniquenessUpToIsomorphism

theorem universal_property_closed_from_evidence
    {M : AlgebraicManifoldPackage} {C : AlgebraicManifoldEvidence M} (U : UniversalPropertyPackage C) :
    UniversalPropertyClosed U := by
  exact And.intro U.universalMappingClosed U.uniquenessUpToIsomorphismClosed

end GeometriesAlgebraicManifoldStructureCanonicalLaneLean
end HautevilleHouse