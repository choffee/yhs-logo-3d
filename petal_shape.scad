
include <petal.scad>

module donut(r=5) {
  rotate_extrude() {
    translate([r*0.5,0,0]) {
      circle(r=r);
    }
  }
}
module petals() {
intersection()
{
  petal();
  union() {
    translate([0.3,-0.4,0]) {
      for (z = [1,2,3,4,5]) {
        rotate(z* 360/5 -18,[0, 0, 1]) {
          translate([-6,0,-10]){
            sphere(r=14, $fs=0.2);
          }
        }
      }
    }
  }
}
}
