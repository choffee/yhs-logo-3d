
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path240(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-0.001023,41.704561],[-12.708502,28.638987],[-10.540803,26.411434],[-25.691162,10.833289],[-27.858861,13.062945],[-40.565316,0.000526],[-21.516374,-19.584690],[-8.808895,-6.521218],[-12.946856,-2.265941],[-10.346437,0.407543],[0.396917,-10.638720],[-2.202480,-13.312204],[-6.199269,-9.203116],[-18.907771,-22.266587],[-0.001023,-41.704561],[12.706456,-28.640038],[10.539780,-26.411434],[25.688093,-10.835393],[27.856815,-13.063997],[40.565316,0.000526],[21.658569,19.438500],[8.950067,6.372925],[12.945833,2.264889],[10.832353,0.089922],[0.087976,11.137238],[2.200434,13.310101],[6.338395,9.054823],[19.048942,22.120398],[-0.001023,41.704561]]);
  }
}

module h() {
  poly_path240(5);
}
