difference() {
	union() {
		cylinder(90, r1=22.5, r2=1.5);
		cylinder(3, r=35);
	}
	translate([0, 0, -2]) {
		scale(.9) {
			cylinder(90, r1=22.5, r2=1.5);
		}
	}
	meshCutout();
}

module meshCutout() {
	n = [24, 22, 18, 16, 12, 6];
	for (i=[0:5]) {
		translate([0, 0, i*13]) {
			for (j=[0 : 360/n[i] : 180]) {
				rotate(j, [0,0,1]){
					translate([0, 0, 8]){
						cube([100, 2, 8], true);
					}
				}
			}
		}
	}
} 