
include <leaf_shape.scad>
include <petal_shape.scad>
include <h.scad>

union() {
  petals();
  translate([0.3,-2,0]) {
    leaves();
  }
  h();
}
