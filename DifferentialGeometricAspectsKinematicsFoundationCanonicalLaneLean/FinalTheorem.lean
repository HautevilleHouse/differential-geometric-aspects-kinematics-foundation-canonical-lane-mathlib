import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsFoundationCanonicalLaneLean

def ConstrainedDifferentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricAspectsKinematicsFoundationCanonicalLaneLean
end HautevilleHouse
