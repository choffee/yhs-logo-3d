include <leaf.scad>


module leaves() {
  color(green) {
    intersection(){
      leaf();
      translate([-20,-20,0]) {
        cube([50,50,2]);
      }
    }
  }
}
