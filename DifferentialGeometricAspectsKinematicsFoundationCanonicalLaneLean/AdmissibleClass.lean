import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsFoundationCanonicalLaneLean

structure GeometricAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  metric : Prop
  connection : Prop
  curvatureInvariant : Prop
  conclusion : curvatureInvariant

structure AdmissibleClass where
  object : GeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GeometricWitnessClosed (O : GeometricAdmittedObject) : Prop :=
  O.curvatureInvariant

end DifferentialGeometricAspectsKinematicsFoundationCanonicalLaneLean
end HautevilleHouse
